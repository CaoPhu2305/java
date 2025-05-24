package com.EventManagement.java.repository.client;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.EventManagement.java.domain.client.model.EventWorkStudent;
import com.EventManagement.java.domain.client.model.EventWorkStudentID;

public interface EventWorkStudentRepository extends JpaRepository<EventWorkStudent, EventWorkStudentID> {
    
    List<EventWorkStudent> findByEventWorkStudentID_EventID(int eventID);

}
