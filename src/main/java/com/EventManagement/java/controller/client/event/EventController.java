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

        List<Event> getAllEvents = eventService.getAllEventsStudent();
        List<Event> getAllEventTrainingPoints = eventService.getAllEventTrainingPoints(0);
        List<Event> getALLEventSocialWordPoints = eventService.getALLEventSocialWordPoints(0);
        model.addAttribute("allEvents", getAllEvents);
        model.addAttribute("allEventTrainingPoints", getAllEventTrainingPoints);
        model.addAttribute("allEventSocialWordPoints", getALLEventSocialWordPoints);
        System.out.println(getAllEvents);
        return "client/homepage/show";
    }

    @GetMapping("/student/event/detail/{id}")
    public String postMethodName(Model model, @PathVariable Integer id) {
       
        Event getEventByID = eventService.getEventByID(id);
        
        model.addAttribute("event", getEventByID);
        return "client/event/EventDetail";
    }
    


}
