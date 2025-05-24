package com.EventManagement.java.domain.client.model;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "events")
public class Event {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="eventid")
    private int eventID;

    // sửa varchar -> nvarchar 
    @Column(columnDefinition = "nvarchar(255)")
    private String name;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date startDay;

    @DateTimeFormat(pattern = "HH:mm")
    private Date startTime;

    @DateTimeFormat(pattern = "HH:mm")
    private Date endTime;

    private String checkinID;

    public Event(){

    }

    

    public String getCheckinID() {
        return checkinID;
    }

    public void setCheckinID(String checkinID) {
        this.checkinID = checkinID;
    }



    @Column(columnDefinition = "nvarchar(255)")
    private String location;

    private int maxCTV;

    private int maxAudience;

    private double cost;

    private Boolean isApproved;

    // không cần nvarchar
    private String imageEvent;

    @ManyToOne
    @JoinColumn(name = "lecturer_Event")
    private Lecturer lecturer;

    //sửa lại nvarchar và thêm max tối đa 2G

    @Column(columnDefinition = "nvarchar(max)")
    private String description;

    private int  socialWordPoint;

    private int trainingPoints;

    @OneToMany(mappedBy = "event")
    private List<Registration> registrations;

    @OneToMany(mappedBy = "event")
    private List<EventWorkStudent> eventWorkStudents;

    // getset

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getStartDay() {
        return startDay;
    }

    public void setStartDay(Date startDay) {
        this.startDay = startDay;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public int getMaxCTV() {
        return maxCTV;
    }

    public void setMaxCTV(int maxCTV) {
        this.maxCTV = maxCTV;
    }

    public int getMaxAudience() {
        return maxAudience;
    }

    public void setMaxAudience(int maxAudience) {
        this.maxAudience = maxAudience;
    }

    public double getCost() {
        return cost;
    }

    public void setCost(double cost) {
        this.cost = cost;
    }

    public Boolean getIsApproved() {
        return isApproved;
    }

    public void setIsApproved(Boolean isApproved) {
        this.isApproved = isApproved;
    }

    public String getImageEvent() {
        return imageEvent;
    }

    public void setImageEvent(String imageEvent) {
        this.imageEvent = imageEvent;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getSocialWordPoint() {
        return socialWordPoint;
    }

    public void setSocialWordPoint(int socialWordPoint) {
        this.socialWordPoint = socialWordPoint;
    }

    public int getTrainingPoints() {
        return trainingPoints;
    }

    public void setTrainingPoints(int trainingPoints) {
        this.trainingPoints = trainingPoints;
    }

    

    public int getEventID() {
        return eventID;
    }

    public void setEventID(int eventID) {
        this.eventID = eventID;
    }

    public Lecturer getLecturer() {
        return lecturer;
    }

    public void setLecturer(Lecturer lecturer) {
        this.lecturer = lecturer;
    }

    @Override
    public String toString() {
        return "Event [eventID=" + eventID + ", name=" + name + ", startDay=" + startDay + ", startTime=" + startTime
                + ", endTime=" + endTime + ", location=" + location + ", maxCTV=" + maxCTV + ", maxAudience="
                + maxAudience + ", cost=" + cost + ", isApproved=" + isApproved + ", imageEvent=" + imageEvent
                + ", Description=" + description + ", socialWordPoint=" + socialWordPoint + ", trainingPoints="
                + trainingPoints + "]";
    }

    

}
