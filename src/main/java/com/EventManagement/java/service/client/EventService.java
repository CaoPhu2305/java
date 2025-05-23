package com.EventManagement.java.service.client;

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

    public List<Event> getAllEvents() {
        return eventRepository.findAll();
    }

    public Event getEventByID(int eventID) {
        return eventRepository.findByEventID(eventID);
    }

    public List<Event> getAllEventTrainingPoints(int point) {
        return eventRepository.findByTrainingPointsGreaterThan(point);
    }

    public List<Event> getALLEventSocialWordPoints(int point) {
        return eventRepository.findBySocialWordPointGreaterThan(point);
    }

    public void handleSaveCreateEvent(Event event, Lecturer lecturer) {
        String chekINID = passwordEncoder.encode(event.getImageEvent());
        event.setCheckinID(chekINID);
        event.setLecturer(lecturer);
        event.setIsApproved(null);
        eventRepository.save(event);
    }

    public List<Event> getAllEventsByLecturer(int lecturerID) {
        return eventRepository.findByLecturer_LecturerID(lecturerID);
    }

}
