package com.EventManagement.java.controller.client.student;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;




@Controller
public class StudentController {

    @GetMapping("/")
    public String getHomePage() {
        return "client/homepage/show";
    }

    @GetMapping("/client/event/detail")
    public String getEventDetail() {
        return "client/event/EventDetail";
    }
    
    @GetMapping("client/event/cart")
    public String getEventCart() {
        return "client/event/eventCart";
    }
    

}
