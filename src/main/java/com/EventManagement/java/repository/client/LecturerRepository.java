package com.EventManagement.java.repository.client;

import org.springframework.data.jpa.repository.JpaRepository;

import com.EventManagement.java.domain.client.model.Lecturer;


public interface LecturerRepository extends JpaRepository<Lecturer, Integer> {
    
    Lecturer findByLecturerID(int lecturerID);

}
