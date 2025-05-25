package com.EventManagement.java.service.client;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;
import com.EventManagement.java.*;
import com.EventManagement.java.domain.client.model.Event;
import com.EventManagement.java.domain.client.model.EventWorkStudent;
import com.EventManagement.java.domain.client.model.EventWorkStudentID;
import com.EventManagement.java.domain.client.model.Registration;
import com.EventManagement.java.domain.client.model.Student;
import com.EventManagement.java.domain.client.model.Work;
import com.EventManagement.java.repository.client.EventRepository;
import com.EventManagement.java.repository.client.EventWorkStudentRepository;
import com.EventManagement.java.repository.client.RegistrationRepository;
import com.EventManagement.java.repository.client.StudentRepository;
import com.EventManagement.java.repository.client.WorkRepository;

@Service
public class EventWorkStudentService {
    
    private final EventWorkStudentRepository eventWorkStudentRepository;
    private final RegistrationRepository registrationRepository;
    private final EventRepository eventRepository;
    private final WorkRepository workRepository;
    private final StudentRepository studentRepository;

    public EventWorkStudentService(EventWorkStudentRepository eventWorkStudentRepository, RegistrationRepository registrationRepository,
                            EventRepository eventRepository, WorkRepository workRepository, StudentRepository studentRepository) {
        this.eventWorkStudentRepository = eventWorkStudentRepository;
        this.registrationRepository = registrationRepository;
        this.eventRepository = eventRepository;
        this.workRepository = workRepository;
        this.studentRepository = studentRepository;
    }

    public List<Student> getALLStudentByEventIDAndWorkID(int eventID, int WorkID) {
        
        List<Student> students = new ArrayList<>();

        List<EventWorkStudent> eventWorkStudents = eventWorkStudentRepository.findByEventWorkStudentID_EventIDAndEventWorkStudentID_WorkID(eventID, WorkID);

        for (EventWorkStudent eventWorkStudent : eventWorkStudents) {
            students.add(eventWorkStudent.getStudent());
        }

        return students;

    }

    public List<Student> getALLSudentCTV(int eventID){
        List<Registration> registrationRepositories = registrationRepository.findByRegistrationID_EventID(eventID);

        List<Student> students = new ArrayList<>();
         List<Student> students1 = new ArrayList<>();
        // nhớ bắt lỗi

        for (Registration student : registrationRepositories) {
            if(student.getIsCTV())
                students.add(student.getStudent());
        }

        for (Student student : students) {
            if(!eventWorkStudentRepository.existsByEventWorkStudentID_StudentID(student.getStudentID()))
                students1.add(student);
        }

        return students1;


    }

    public String handleAddCTVToWork(int eventID,int workID,int studentID) {

        EventWorkStudentID eventWorkStudentID = new EventWorkStudentID(studentID, eventID, workID);

        if(eventWorkStudentRepository.existsByEventWorkStudentID(eventWorkStudentID))
            return "có vẻ sinh viên này đã đang làm công việc nào đó";
        else{

            Event event = eventRepository.findByEventID(eventID);
            Work work = workRepository.findByWorkID(workID);
            Student student = studentRepository.findByStudentID(studentID);

            if(event != null && work != null && student != null){
                EventWorkStudent eventWorkStudent = new EventWorkStudent();
                eventWorkStudent.setEvent(event);
                eventWorkStudent.setStudent(student);
                eventWorkStudent.setWork(work);
                eventWorkStudent.setEventWorkStudentID(eventWorkStudentID);
                eventWorkStudentRepository.save(eventWorkStudent);
                return"thêm thành công";
            }

            return "thêm thất bại";
            
        } 
    }

}
