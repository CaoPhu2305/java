package com.EventManagement.java.domain.client.model;

import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.MapsId;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "student")
public class Student {

    @Id
    @Column(name = "studentID")
    private int studentID;
    
    private String classID;

    private int cTXH;

    private int renLuyen;

    public Student(){
        
    }


    @OneToOne
    @MapsId
    @JoinColumn(name = "userID")
    private UserAccount userAccount;

    @OneToMany(mappedBy = "student")
    private List<Registration> registrations;

    @OneToMany(mappedBy = "student")
    private List<EventWorkStudent> eventWorkStudents;

    public int getStudentID() {
        return studentID;
    }

    public void setStudentID(int studentID) {
        this.studentID = studentID;
    }

    public String getClassID() {
        return classID;
    }

    public void setClassID(String classID) {
        this.classID = classID;
    }

    public int getcTXH() {
        return cTXH;
    }

    public void setcTXH(int cTXH) {
        this.cTXH = cTXH;
    }

    public int getRenLuyen() {
        return renLuyen;
    }

    public void setRenLuyen(int renLuyen) {
        this.renLuyen = renLuyen;
    }

    public Student(int studentID, String classID, int cTXH, int renLuyen) {
        this.studentID = studentID;
        this.classID = classID;
        this.cTXH = cTXH;
        this.renLuyen = renLuyen;
    }

    

}