package com.EventManagement.java.domain.client.model;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "users")
public class UserAccount {
    
    @Id
    private int userID;

    private String password;

    private String name;
    
    private String phone;

    private int role;

    @OneToOne(mappedBy = "userAccount", cascade = CascadeType.ALL)
    private Student student;

    @OneToOne(mappedBy = "userAccount", cascade = CascadeType.ALL)
    private Lecturer lecturer;

    @OneToOne(mappedBy = "userAccount", cascade = CascadeType.ALL)
    private Admin admin;

    

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public Lecturer getLecturer() {
        return lecturer;
    }

    public void setLecturer(Lecturer lecturer) {
        this.lecturer = lecturer;
    }

    public Admin getAdmin() {
        return admin;
    }

    public void setAdmin(Admin admin) {
        this.admin = admin;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public UserAccount(int userID, String password, String name, String phone, int role) {
        this.userID = userID;
        this.password = password;
        this.name = name;
        this.phone = phone;
        this.role = role;
    }

    

}
