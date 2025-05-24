package com.EventManagement.java.controller.client.student;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.EventManagement.java.domain.client.model.Event;
import com.EventManagement.java.service.client.RegistrationService;

import jakarta.servlet.http.HttpSession;





@Controller
public class StudentController {

    private final RegistrationService registrationService;

    public StudentController( RegistrationService registrationService) {
        this.registrationService = registrationService;
    }

    @GetMapping("/student/event/cart/{id}")
    public String getEventCart(Model model , @PathVariable int id, HttpSession session) {

        Integer studentID = (Integer) session.getAttribute("id");

        if(studentID == null)
            return "redirect:/login";

        List<Event> events = registrationService.getEventOfStudent(studentID);

        model.addAttribute("events", events);

        return "client/event/eventCart";
    }

    @PostMapping("/student/event/cart/{id}")
    public String postMethodName(Model model, @PathVariable int id, RedirectAttributes redirectAttributes,HttpSession session) {

       int idEvent = id;
       Integer idStudent = (Integer) session.getAttribute("id");

       if(idStudent == null)
            return "redirect:/login";

       String registration = registrationService.addRegistration(idEvent, idStudent);


        redirectAttributes.addFlashAttribute("message", registration);

        return "redirect:/student/event/detail/{id}";
    }
    

}
