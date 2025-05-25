package com.EventManagement.java.service.client;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

import org.springframework.stereotype.Service;

import com.EventManagement.java.domain.client.model.EventWorkStudent;
import com.EventManagement.java.domain.client.model.EventWorkStudentID;
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
           Work workTmp = work.getWork();
           if(!works.contains(workTmp)){

                // work.set
                works.add(workTmp);
            }
        }

        return works;
    }

    public int countWorkOfEvent(int eventID){
        return eventWorkStudentRepository.countByEventWorkStudentID_EventID(eventID);
    }



}
