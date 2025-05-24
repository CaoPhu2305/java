package com.EventManagement.java.domain.client.model;

import java.io.Serializable;

import jakarta.persistence.Embeddable;

@Embeddable
public class EventWorkStudentID implements Serializable {
    

    private int studentID;
    private int eventID;
    private int workID;

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + studentID;
        result = prime * result + eventID;
        result = prime * result + workID;
        return result;
    }
    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        EventWorkStudentID other = (EventWorkStudentID) obj;
        if (studentID != other.studentID)
            return false;
        if (eventID != other.eventID)
            return false;
        if (workID != other.workID)
            return false;
        return true;
    }
    public EventWorkStudentID(int studentID, int eventID, int workID) {
        this.studentID = studentID;
        this.eventID = eventID;
        this.workID = workID;
    }
    public int getStudentID() {
        return studentID;
    }
    public void setStudentID(int studentID) {
        this.studentID = studentID;
    }
    public int getEventID() {
        return eventID;
    }
    public void setEventID(int eventID) {
        this.eventID = eventID;
    }
    public int getWorkID() {
        return workID;
    }
    public void setWorkID(int workID) {
        this.workID = workID;
    }

    public EventWorkStudentID() {
        
    }

}
