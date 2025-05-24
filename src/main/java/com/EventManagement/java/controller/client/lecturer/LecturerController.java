package com.EventManagement.java.controller.client.lecturer;

import java.util.List;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import com.EventManagement.java.domain.client.model.Event;
import com.EventManagement.java.domain.client.model.Lecturer;
import com.EventManagement.java.domain.client.model.Work;
import com.EventManagement.java.service.client.EventService;
import com.EventManagement.java.service.client.LecturerService;
import com.EventManagement.java.service.client.WorkService;
import com.EventManagement.java.service.uploadfile.UploadService;

import jakarta.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


@Controller
public class LecturerController {

    private final UploadService uploadService;
    private final EventService eventService;
    private final LecturerService lecturerService;
    private final WorkService workService;

    public LecturerController(UploadService uploadService, PasswordEncoder passwordEncoder,
     EventService eventService,LecturerService lecturerService, WorkService workService ) {
        this.uploadService = uploadService;
        this.eventService = eventService;
        this.lecturerService = lecturerService;
        this.workService = workService;
    }

    @GetMapping("/lecturer")
    public String getLecturePage(Model model, HttpSession session) {

        Integer id = (Integer) session.getAttribute("id");
        if(id == null)
            return ("redirect:/login");

       List<Event> events = eventService.getAllEventsByLecturer(id);

       model.addAttribute("events", events);

        return "client/lecturer/show";

    }
    
    @GetMapping("/lecturer/work/{id}")
    public String getWorkPage(Model model, @PathVariable Integer id) {

        List<Work> works = workService.getWoksByEventID(id);

        model.addAttribute("works", works);

        return "client/lecturer/work";
    }

    @GetMapping("/lecturer/createEvent")
    public String getCreateEvent(Model model) {

        model.addAttribute("newEvent", new Event());

        return "client/lecturer/createEvent";
    }

    @PostMapping("/lecturer/createEvent")
    public String postCreateEvent(Model model, @ModelAttribute("newEvent") Event event,  
    @RequestParam("phuFile") MultipartFile file, HttpSession session) {

        String img = uploadService.handleUploadFile(file, "event");
        event.setImageEvent(img);
        
        Integer id = (Integer) session.getAttribute("id");
        if(id == null)
            return ("redirect:/login");
        Lecturer lecturer = lecturerService.getLecturerByID(id);
        if(lecturer == null)
             return ("redirect:/lecturer");
        else
            eventService.handleSaveCreateEvent(event, lecturer);
        return "redirect:/lecturer";
    }
    
    @GetMapping("/lecturer/view/{id}")
    public String getViewWorkPage(Model model, @PathVariable Integer id) {
        return "client/lecturer/view";
    }
    
    @GetMapping("/lecturer/add/{id}")
    public String getADDCTVPage(Model model, @PathVariable Integer id) {
        return "client/lecturer/add";
    }

    @GetMapping("/lecturer/create")
    public String getCreateWork(Model model) {

        model.addAttribute("newWork", new Work());

        return "client/lecturer/create";
    }

    @PostMapping("/lecturer/create")
    public String postMethodName(Model model, @ModelAttribute("newWork") Work work) {
        
        
        return "redirect:/lecturer/work";
    }
    
}
