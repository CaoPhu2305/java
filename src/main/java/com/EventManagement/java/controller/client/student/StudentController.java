package com.EventManagement.java.controller.client.student;

import java.rmi.registry.Registry;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.EventManagement.java.domain.client.model.Event;
import com.EventManagement.java.domain.client.model.Registration;
import com.EventManagement.java.domain.client.model.Student;
import com.EventManagement.java.domain.client.model.Work;
import com.EventManagement.java.repository.client.EventWorkStudentRepository;
import com.EventManagement.java.service.client.EventWorkStudentService;
import com.EventManagement.java.service.client.RegistrationService;
import com.EventManagement.java.service.client.StudentService;
import com.EventManagement.java.service.client.WorkService;

import jakarta.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.RequestBody;






@Controller
public class StudentController {

    private final RegistrationService registrationService;
    private final StudentService studentService;
    private final WorkService workService;
    private final EventWorkStudentService eventWorkStudentService;

    public StudentController( RegistrationService registrationService, 
                    StudentService studentService, EventWorkStudentService eventWorkStudentService,
                    WorkService workService) {
        this.registrationService = registrationService;
        this.studentService = studentService;
        this.eventWorkStudentService = eventWorkStudentService;
        this.workService = workService;
    }

    @GetMapping("/student/event/cart/{id}")
    public String getEventCart(Model model , @PathVariable int id, HttpSession session) {

        Integer studentID = (Integer) session.getAttribute("id");

        if(studentID == null)
            return "redirect:/login";

        List<Event> events = registrationService.getEventOfStudent(studentID);

        Student student = studentService.getStudentByID(studentID);

        List<Registration> registration = registrationService.getAllRegistrationByStudentID(studentID);

       // student.getUserAccount().getPhone()

        model.addAttribute("events", events);
        model.addAttribute("student", student);
        model.addAttribute("registration", registration);
        return "client/event/eventCart";
    }

    @PostMapping("/student/event/cart/{id}")
    public String postMethodName(Model model, @PathVariable int id, 
                        RedirectAttributes redirectAttributes,HttpSession session,
                        @RequestParam("isCTV") Boolean  isCTV) {

       int idEvent = id;
       Integer idStudent = (Integer) session.getAttribute("id");

       if(idStudent == null)
            return "redirect:/login";

        

       String registration = registrationService.addRegistration(idEvent, idStudent, isCTV);


        redirectAttributes.addFlashAttribute("message", registration);

        return "redirect:/student/event/detail/{id}";
    }

    @GetMapping("/student/event/work")
    public String getMethodName(Model model, HttpSession session) {

        Integer studentID = (Integer) session.getAttribute("id");

        if(studentID == null)
            return  "redirect:/";
        
        // sử lý ở đây và trả về 1 chuỗi lát in tra bên trang chủ

        List<Event> events =  studentService.getEventOfStudentCTV(studentID);

        model.addAttribute("events", events);

        return "client/event/works";
    }

    @PostMapping("/student/delete")
    public String postMethodName(@RequestParam int eventID, HttpSession session, Model model,
                            RedirectAttributes redirectAttributes) {
        
        
        Integer studentID = (Integer) session.getAttribute("id");

        if(studentID == null)
            return  "redirect:/";

        String mess = studentService.deleteEventStudent(studentID, eventID);
        redirectAttributes.addFlashAttribute("message", mess);

        
        return "redirect:/student/event/cart/" + eventID;
    }

    @GetMapping("/student/event/work/detail")
    public String getMethodName(@RequestParam int eventID, HttpSession session, Model model) {

        Integer studentID = (Integer) session.getAttribute("id");

        if(studentID == null)
            return  "redirect:/";

        List<Work> works = studentService.getALLWorksOfCTV(eventID, studentID);
        
        List<Integer> quantity = workService.countWorkOfEvent(eventID, works);

        model.addAttribute("works", works);
        model.addAttribute("quantity", quantity);

       return "client/event/worksDetail";
    }

}
