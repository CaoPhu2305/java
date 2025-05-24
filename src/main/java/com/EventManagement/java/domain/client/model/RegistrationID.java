package com.EventManagement.java.domain.client.model;

import java.io.Serializable;

import jakarta.persistence.Embeddable;

@Embeddable
public class RegistrationID implements Serializable {
    
    private int studentID;
    private int eventID;

    
    public RegistrationID() {
        
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
    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + studentID;
        result = prime * result + eventID;
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
        RegistrationID other = (RegistrationID) obj;
        if (studentID != other.studentID)
            return false;
        if (eventID != other.eventID)
            return false;
        return true;
    }
    public RegistrationID(int studentID, int eventID) {
        this.studentID = studentID;
        this.eventID = eventID;
    }

    

}
