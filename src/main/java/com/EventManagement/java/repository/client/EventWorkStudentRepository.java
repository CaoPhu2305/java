package com.EventManagement.java.repository.client;

import java.util.List;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import com.EventManagement.java.domain.client.model.EventWorkStudent;
import com.EventManagement.java.domain.client.model.EventWorkStudentID;

public interface EventWorkStudentRepository extends JpaRepository<EventWorkStudent, EventWorkStudentID> {
    
    List<EventWorkStudent> findByEventWorkStudentID_EventID(int eventID);

    List<EventWorkStudent> findByEventWorkStudentID_EventIDAndEventWorkStudentID_WorkID(int eventID, int workID);

    boolean existsByEventWorkStudentID_StudentID(int studentID);

    boolean existsByEventWorkStudentID(EventWorkStudentID id);

    int countByEventWorkStudentID_EventIDAndEventWorkStudentID_WorkID(int eventID, int WorkID);

    boolean existsByEventWorkStudentID_studentIDAndEventWorkStudentID_EventID(int studentID, int eventID);

}
