package com.EventManagement.java.service.client;

import org.springframework.stereotype.Service;


import com.EventManagement.java.domain.client.model.Student;
import com.EventManagement.java.repository.client.StudentRepository;

@Service
public class StudentService {
    
    private final StudentRepository studentRepository;

    public StudentService(StudentRepository studentRepository){
        this.studentRepository = studentRepository;
    }

    public Student getStudentByID(int id) {
        return studentRepository.findByStudentID(id);
    }



}
