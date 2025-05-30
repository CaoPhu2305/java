package com.EventManagement.java.service.client;

import java.util.ArrayList;
import java.util.EventListener;
import java.util.List;

import org.springframework.stereotype.Service;

import com.EventManagement.java.domain.client.model.Event;
import com.EventManagement.java.domain.client.model.EventWorkStudent;
import com.EventManagement.java.domain.client.model.Registration;
import com.EventManagement.java.domain.client.model.RegistrationID;
import com.EventManagement.java.domain.client.model.Student;
import com.EventManagement.java.domain.client.model.Work;
import com.EventManagement.java.repository.client.EventWorkStudentRepository;
import com.EventManagement.java.repository.client.RegistrationRepository;
import com.EventManagement.java.repository.client.StudentRepository;

@Service
public class StudentService {
    
    private final StudentRepository studentRepository;
    private final RegistrationRepository registrationRepository;
    private final EventWorkStudentRepository eventWorkStudentRepository;

    public StudentService(StudentRepository studentRepository,  RegistrationRepository registrationRepository, 
                        EventWorkStudentRepository eventWorkStudentRepository){
        this.studentRepository = studentRepository;
        this.registrationRepository = registrationRepository;
        this.eventWorkStudentRepository = eventWorkStudentRepository;
    }

    public Student getStudentByID(int id) {
        return studentRepository.findByStudentID(id);
    }

    // danh sách các sự kiện mà sinh viên đang là ctv  

  
    public List<Event> getEventOfStudentCTV(int studentID) {
        
        List<Registration> registrations = registrationRepository.findByRegistrationID_StudentID(studentID);
        List<Event> events = new ArrayList<Event>();

        for (Registration registration : registrations) {
            if(registration.getIsCTV())
                events.add(registration.getEvent());
        }

       return events;

    }

    public String deleteEventStudent(int studentID, int eventID){
       
        RegistrationID registrationID = new RegistrationID(studentID, eventID);
       
        if(registrationRepository.existsById(registrationID)){
            registrationRepository.deleteById(registrationID);
            return "xóa thành công";
        }
        else 
            return "hủy thất bại";
    }

    public List<Work> getALLWorksOfCTV(int eventID, int studentID) {

        List<EventWorkStudent> eventWorkStudents = eventWorkStudentRepository.findByEventWorkStudentID_EventIDAndEventWorkStudentID_StudentID(eventID, studentID);

        List<Work> works = new ArrayList<>();

        for (EventWorkStudent work : eventWorkStudents) {
            works.add(work.getWork());
        }

        return works;

    }

}
