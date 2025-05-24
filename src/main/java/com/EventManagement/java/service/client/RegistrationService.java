package com.EventManagement.java.service.client;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.EventManagement.java.domain.client.model.Event;
import com.EventManagement.java.domain.client.model.Registration;
import com.EventManagement.java.domain.client.model.RegistrationID;
import com.EventManagement.java.domain.client.model.Student;
import com.EventManagement.java.repository.client.RegistrationRepository;

@Service
public class RegistrationService {

    private final RegistrationRepository registrationRepository;
    private final EventService eventService;
    private final StudentService studentService;

    public RegistrationService(RegistrationRepository registrationRepository,
        EventService eventService, StudentService studentService) {
        this.registrationRepository = registrationRepository;
        this.eventService = eventService;
        this.studentService = studentService;
    }

    public List<Registration> getAllRegistrationByStudentID(int studentID) {
        return registrationRepository.findByRegistrationID_StudentID(studentID);
    }

    public String addRegistration(int eventID, int userAccount){

        Student student = studentService.getStudentByID(userAccount);

        Event event = eventService.getEventByID(eventID);

        if(student != null && event != null ){

            RegistrationID newRegisID = new RegistrationID(student.getStudentID(), eventID);

            if(registrationRepository.existsById(newRegisID)){

                return "bạn không được phép đăng 1 sự kiện 2 lần ";

            }else{

                Registration newRegistration = new Registration();
                newRegistration.setIsCTV(false);
                newRegistration.setIsCheckedIn(false);
                newRegistration.setEvent(event);
                newRegistration.setStudent(student);
                newRegistration.setTradingID(null);
                newRegistration.setRegistrationID(newRegisID);
                registrationRepository.save(newRegistration);
                return "Đăng Ký Thành Công";
            }
        }
        return "Lỗi Đăng Ký Thất Bại";
    }

    public List<Event> getEventOfStudent(int studentID) {
        
        List<Registration> registrations = registrationRepository.findByRegistrationID_StudentID(studentID);
        List<Event> events = new ArrayList<Event>();

        for (Registration registration : registrations) {
            events.add(registration.getEvent());
        }

       return events;

    }

}
