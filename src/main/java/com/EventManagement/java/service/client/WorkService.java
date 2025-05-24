package com.EventManagement.java.service.client;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.EventManagement.java.domain.client.model.EventWorkStudent;
import com.EventManagement.java.domain.client.model.Work;
import com.EventManagement.java.repository.client.EventWorkStudentRepository;

@Service
public class WorkService {
    
    public final EventWorkStudentRepository eventWorkStudentRepository;

    public WorkService(EventWorkStudentRepository eventWorkStudentRepository) {
        this.eventWorkStudentRepository = eventWorkStudentRepository;
    }

    public List<Work> getWoksByEventID(int eventID) {

        List<Work> works = new ArrayList<>();

        List<EventWorkStudent> eventWorks = eventWorkStudentRepository.findByEventWorkStudentID_EventID(eventID);
        
        for (EventWorkStudent work : eventWorks) {
            works.add(work.getWork());
        }

        return works;
    }


}
