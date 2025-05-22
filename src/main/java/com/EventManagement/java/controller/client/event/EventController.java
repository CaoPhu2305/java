package com.EventManagement.java.controller.client.event;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.EventManagement.java.domain.client.model.Event;
import com.EventManagement.java.service.client.EventService;




@Controller
public class EventController {

    private EventService eventService;

    public EventController(EventService eventService) {
        this.eventService = eventService;
    }
    

    @GetMapping("/")
    public String getHomePage(Model model) {

        List<Event> getAllEvents = eventService.getAllEvents();
        model.addAttribute("allEvents", getAllEvents);
        System.out.println(getAllEvents);
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

    @GetMapping("/client/event/detail/{id}")
    public String postMethodName(Model model, @PathVariable Integer id) {
       
        Event getEventByID = eventService.getEventByID(id);
        
        model.addAttribute("event", getEventByID);
        return "client/event/EventDetail";
    }
    

}
