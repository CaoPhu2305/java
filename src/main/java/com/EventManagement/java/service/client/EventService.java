package com.EventManagement.java.service.client;

import java.util.List;

import org.springframework.stereotype.Service;

import com.EventManagement.java.domain.client.model.Event;
import com.EventManagement.java.repository.client.EventRepository;


@Service
public class EventService {

    private EventRepository eventRepository;

    
    
    public EventService(EventRepository eventRepository) {
        this.eventRepository = eventRepository;
    }



    public List<Event> getAllEvents() {
        return eventRepository.findAll();
    }

    public Event getEventByID(int eventID) {
        return eventRepository.findByEventID(eventID);
    }
}
