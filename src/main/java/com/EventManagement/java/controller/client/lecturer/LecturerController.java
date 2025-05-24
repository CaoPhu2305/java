package com.EventManagement.java.controller.client.lecturer;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.EventManagement.java.domain.client.model.Event;
import com.EventManagement.java.domain.client.model.Work;
import org.springframework.web.bind.annotation.PostMapping;


@Controller
public class LecturerController {
    
    @GetMapping("/lecturer")
    public String getLecturePage(Model model) {

        model.addAttribute("event", new Event());

        return "client/lecturer/show";

    }
    
    @GetMapping("/lecturer/work")
    public String getWorkPage(Model model) {
        return "client/lecturer/work";
    }

    @GetMapping("/lecturer/createEvent")
    public String getCreateEvent(Model model) {

        model.addAttribute("newEvent", new Event());

        return "client/lecturer/createEvent";
    }

    @PostMapping("/lecturer/createEvent")
    public String postCreateEvent(Model model, @ModelAttribute("newEvent") Event event) {
       
        
        return "redirect:/lecturer";
    }
    
    @GetMapping("/lecturer/view")
    public String getViewWorkPage() {
        return "client/lecturer/view";
    }
    
    @GetMapping("/lecturer/add")
    public String getADDCTVPage() {
        return "client/lecturer/add";
    }

    @GetMapping("/lecturer/create")
    public String getCreateWork(Model model) {

        model.addAttribute("newWork", new Work());

        return "client/lecturer/create";
    }

    @PostMapping("/lecturer/create")
    public String postMethodName(Model model, @ModelAttribute("newWork") Work work) {
        
        
        return "redirect:/lecturer/work";
    }
    
}
