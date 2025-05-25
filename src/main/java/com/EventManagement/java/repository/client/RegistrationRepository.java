package com.EventManagement.java.repository.client;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.EventManagement.java.domain.client.model.Registration;
import com.EventManagement.java.domain.client.model.RegistrationID;




public interface RegistrationRepository extends JpaRepository<Registration, RegistrationID> {
    
    // List<Registration> getALLStudentByEventIDAndWorkID(int studentID);

    // Registration findByRegistrationID_StudentIDAndRegistrationID_EventID(int studentID, int eventID);

    Registration findByRegistrationID(RegistrationID registrationID);

    List<Registration> findByRegistrationID_EventID(int eventID);

    List<Registration> findByRegistrationID_StudentID(int studentID);

}
