package com.EventManagement.java.domain.client.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.MapsId;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "admins")
public class Admin {
    
    @Id
    @Column(name = "adminID")
    private int adminID;

    // có thể sửa
    private String department;

    @OneToOne
    @MapsId
    @JoinColumn(name = "userID")
    private UserAccount userAccount;

    public Admin() {
        
    }

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
