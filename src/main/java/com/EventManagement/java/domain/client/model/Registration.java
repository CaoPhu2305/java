package com.EventManagement.java.domain.client.model;

import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.MapsId;
import jakarta.persistence.Table;

@Entity
@Table(name = "registrations")
public class Registration {
    
    @EmbeddedId
    private RegistrationID registrationID;

    private Boolean isCTV;

    private Boolean isCheckedIn;

    private String tradingID;

    public Registration() {
        
    }

    @ManyToOne
    @MapsId("studentID")
    @JoinColumn(name = "studentID_RegistrationID")
    private Student student;

    @ManyToOne
    @MapsId("eventID")
    @JoinColumn(name = "eventID_RegistrationID")
    private Event event;

    

    public RegistrationID getRegistrationID() {
        return registrationID;
    }

    public void setRegistrationID(RegistrationID registrationID) {
        this.registrationID = registrationID;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public Event getEvent() {
        return event;
    }

    public void setEvent(Event event) {
        this.event = event;
    }

    public Boolean getIsCTV() {
        return isCTV;
    }

    public void setIsCTV(Boolean isCTV) {
        this.isCTV = isCTV;
    }

    public Boolean getIsCheckedIn() {
        return isCheckedIn;
    }

    public void setIsCheckedIn(Boolean isCheckedIn) {
        this.isCheckedIn = isCheckedIn;
    }

    public String getTradingID() {
        return tradingID;
    }

    public void setTradingID(String tradingID) {
        this.tradingID = tradingID;
    }

    public Registration(RegistrationID registrationID, Boolean isCTV, Boolean isCheckedIn, String tradingID,
            Student student, Event event) {
        this.registrationID = registrationID;
        this.isCTV = isCTV;
        this.isCheckedIn = isCheckedIn;
        this.tradingID = tradingID;
        this.student = student;
        this.event = event;
    }

}
