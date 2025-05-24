package com.EventManagement.java.repository.client;

import org.springframework.data.jpa.repository.JpaRepository;

import com.EventManagement.java.domain.client.model.Student;

public interface StudentRepository extends JpaRepository<Student , Integer> {
    
    Student findByStudentID(int studentID);

}
