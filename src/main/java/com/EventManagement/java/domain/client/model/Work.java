package com.EventManagement.java.domain.client.model;

import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "work")
public class Work {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int workID;

    private double price;

    @Column(columnDefinition = "nvarchar(255)")
    private String nameWork;

    private Boolean isComplate;

    public Work() {
        
    }

    @OneToMany(mappedBy = "work")
    private List<EventWorkStudent> eventWorkStudents;

    public int getWorkID() {
        return workID;
    }

    public void setWorkID(int workID) {
        this.workID = workID;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getNameWork() {
        return nameWork;
    }

    public void setNameWork(String nameWork) {
        this.nameWork = nameWork;
    }

    public Boolean getIsComplate() {
        return isComplate;
    }

    public void setIsComplate(Boolean isComplate) {
        this.isComplate = isComplate;
    }

    

}
