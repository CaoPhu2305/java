package com.EventManagement.java.domain.client.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Admin {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int adminID;

    
    private String department;



    
    public int getAdminID() {
        return adminID;
    }

    public void setAdminID(int adminID) {
        this.adminID = adminID;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public Admin(int adminID, String department) {
        this.adminID = adminID;
        this.department = department;
    }

    @Override
    public String toString() {
        return "Admin [adminID=" + adminID + ", department=" + department + "]";
    }

}
