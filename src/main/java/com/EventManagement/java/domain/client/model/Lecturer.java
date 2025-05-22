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
@Table(name = "lecturers")
public class Lecturer {
    
    @Id
    @Column(name = "lecturerID")
    private int lecturerID;

    // đã sữa domain varchar --> nvarchar
    @Column(columnDefinition = "nvarchar(255)")
    private String Falculty;

    @OneToMany(mappedBy = "lecturer")
    private List<Event> events;

    @OneToOne
    @MapsId
    @JoinColumn(name = "userID")
    private UserAccount userAccount;

    public Lecturer(){

    }

    public int getLecturerID() {
        return lecturerID;
    }

    public void setLecturerID(int lecturerID) {
        this.lecturerID = lecturerID;
    }

    public String getFalculty() {
        return Falculty;
    }

    public void setFalculty(String falculty) {
        Falculty = falculty;
    }

    public Lecturer(int lecturerID, String falculty) {
        this.lecturerID = lecturerID;
        Falculty = falculty;
    }

    @Override
    public String toString() {
        return "Lecturer [lecturerID=" + lecturerID + ", Falculty=" + Falculty + "]";
    }

    

}
