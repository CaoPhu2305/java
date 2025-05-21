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
    private RegistrationID RegistrationID;

    private Boolean isCTV;

    private Boolean isCheckedIn;

    private String tradingID;

    @ManyToOne
    @MapsId("studentID")
    @JoinColumn(name = "studentID_RegistrationID")
    private Student student;

    @ManyToOne
    @MapsId("eventID")
    @JoinColumn(name = "eventID_RegistrationID")
    private Event event;

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




}
