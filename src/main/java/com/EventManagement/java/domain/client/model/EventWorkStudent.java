package com.EventManagement.java.domain.client.model;

import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.MapsId;

@Entity
public class EventWorkStudent {
    
    @EmbeddedId
    private EventWorkStudentID eventWorkStudentID;

    @ManyToOne
    @MapsId("eventID")
    @JoinColumn(name = "eventID_EWS")
    private Event event;
    
    @ManyToOne
    @MapsId("studentID")
    @JoinColumn(name = "studentID_EWS")
    private Student student;

    @ManyToOne
    @MapsId("workID")
    @JoinColumn(name = "workID_EWS")
    private Work work;

    public EventWorkStudent(){

    }

    public EventWorkStudentID getEventWorkStudentID() {
        return eventWorkStudentID;
    }

    public void setEventWorkStudentID(EventWorkStudentID eventWorkStudentID) {
        this.eventWorkStudentID = eventWorkStudentID;
    }

    public Event getEvent() {
        return event;
    }

    public void setEvent(Event event) {
        this.event = event;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public Work getWork() {
        return work;
    }

    public void setWork(Work work) {
        this.work = work;
    }

    

}
