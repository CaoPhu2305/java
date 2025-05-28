package com.EventManagement.java.service.client;

import java.util.ArrayList;
import java.util.List;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.EventManagement.java.domain.client.model.Event;
import com.EventManagement.java.domain.client.model.Lecturer;
import com.EventManagement.java.repository.client.EventRepository;

import jakarta.servlet.http.HttpSession;


@Service
public class EventService {

    private final EventRepository eventRepository;
    private final PasswordEncoder passwordEncoder;

    public EventService(EventRepository eventRepository, PasswordEncoder passwordEncoder) {
        this.eventRepository = eventRepository;
        this.passwordEncoder = passwordEncoder;
    }

    public List<Event> getALLEventsIsApproved(List<Event> events){
         List<Event> events2 = new ArrayList<>();

        for (Event event : events) {
            if(event.getIsApproved())
                events2.add(event);
        }

        return events2;
    }

    public List<Event> getAllEventsStudent() {
        List<Event> events = eventRepository.findAll();

        return getALLEventsIsApproved(events);
    }

    public Event getEventByID(int eventID) {
        return eventRepository.findByEventID(eventID);
    }

    public List<Event> getAllEventTrainingPoints(int point) {
         List<Event> events = eventRepository.findByTrainingPointsGreaterThan(point);

         return getALLEventsIsApproved(events);

    }

    public List<Event> getALLEventSocialWordPoints(int point) {
         List<Event> events = eventRepository.findBySocialWordPointGreaterThan(point);
        return getALLEventsIsApproved(events);
    }

    public void handleSaveCreateEvent(Event event, Lecturer lecturer) {
        event.setLecturer(lecturer);
        event.setIsApproved(null);
        eventRepository.save(event);
    }

    

    public List<Event> getAllEventsByLecturer(int lecturerID) {
        return eventRepository.findByLecturer_LecturerID(lecturerID);
    }

    public void handleSaveCreateEvent(Event event) {
        eventRepository.save(event);
    }
    
}
