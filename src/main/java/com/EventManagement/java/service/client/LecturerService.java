package com.EventManagement.java.service.client;

import org.springframework.stereotype.Service;

import com.EventManagement.java.domain.client.model.Lecturer;
import com.EventManagement.java.repository.client.LecturerRepository;

@Service
public class LecturerService {

    private final LecturerRepository lecturerRepository;

    public LecturerService(LecturerRepository lecturerRepository) {
        this.lecturerRepository = lecturerRepository;
    }
    
    public Lecturer getLecturerByID(int id) {
        return lecturerRepository.findByLecturerID(id);
    }

}
