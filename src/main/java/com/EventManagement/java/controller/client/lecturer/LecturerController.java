package com.EventManagement.java.controller.client.lecturer;

import java.util.List;

import org.springframework.boot.context.properties.bind.BindResult;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import com.EventManagement.java.domain.client.model.Event;

import com.EventManagement.java.domain.client.model.Lecturer;
import com.EventManagement.java.domain.client.model.Student;
import com.EventManagement.java.domain.client.model.Work;
import com.EventManagement.java.service.client.EventService;
import com.EventManagement.java.service.client.EventWorkStudentService;
import com.EventManagement.java.service.client.LecturerService;
import com.EventManagement.java.service.client.WorkService;
import com.EventManagement.java.service.uploadfile.UploadService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.bind.annotation.RequestBody;



@SessionAttributes("workSession")
@Controller
public class LecturerController {

    private final UploadService uploadService;
    private final EventService eventService;
    private final LecturerService lecturerService;
    private final WorkService workService;
    private final EventWorkStudentService eventWorkStudentService;

    public LecturerController(UploadService uploadService, PasswordEncoder passwordEncoder,
                            EventService eventService,LecturerService lecturerService, WorkService workService, 
                             EventWorkStudentService eventWorkStudentService ) {
        this.uploadService = uploadService;
        this.eventService = eventService;
        this.lecturerService = lecturerService;
        this.workService = workService;
        this.eventWorkStudentService = eventWorkStudentService;
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
        List<Integer> quantity = workService.countWorkOfEvent(id, works);
        model.addAttribute("works", works);
        model.addAttribute("id", id);
        model.addAttribute("quantity", quantity);

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
    
    @GetMapping("/lecturer/view/{idEV}/{idCV}")
    public String getViewWorkPage(Model model, @PathVariable("idEV") Integer idEV, @PathVariable("idCV") Integer idCV) {

        List<Student> students = eventWorkStudentService.getALLStudentByEventIDAndWorkID(idEV, idCV);

        model.addAttribute("students", students);
        model.addAttribute("idSK", idEV);
        model.addAttribute("idCV", idCV);

        return "client/lecturer/view";
    }
    
    @GetMapping("/lecturer/add/{idSK}/{idCV}")
    public String getADDCTVPage(Model model, @PathVariable("idSK") Integer idSK,
                        @PathVariable("idCV") Integer idCV) {

        List<Student> students = eventWorkStudentService.getALLSudentCTV(idSK, idCV);

        model.addAttribute("students", students);
        model.addAttribute("idSK", idSK);
        model.addAttribute("idCV", idCV);

        return "client/lecturer/add";
    }

    @GetMapping("/lecturer/create/{eventID}")
    public String getCreateWork(Model model, @PathVariable("eventID") Integer eventID) {

        model.addAttribute("newWork", new Work());

        model.addAttribute("eventID", eventID);

        return "client/lecturer/create";
    }

    @PostMapping("/lecturer/create") // sửa ở đây
    public String postMethodName(Model model, @ModelAttribute("newWork") @Valid Work work, 
                        BindingResult bindResult, RedirectAttributes redirectAttributes,
                        @RequestParam("eventID") Integer eventID) {


        if(bindResult.hasErrors()){
            model.addAttribute("eventID", eventID);
            return "client/lecturer/create";
        }

        work.setIsComplate(false);
        workService.handleSaveWork(work);

        redirectAttributes.addAttribute("newWork", work);

        return "redirect:/lecturer/add/" + eventID + "/" + work.getWorkID();
    }

    @PostMapping("/lecturer/add/{idSK}/{idCV}")
    public String postCreateCTVToWork(Model model, @PathVariable("idSK") Integer idSK,
                @PathVariable("idCV") Integer idCV,
                 @RequestParam( required = false ,name = "studentIds") List<Integer> studentIDS,
                 RedirectAttributes redirectAttributes ){
        
        
        // String messString = eventWorkStudentService.handleAddCTVToWork(idSK, idCV, idSV);

        if(studentIDS == null)
            return "redirect:/lecturer/work/{idSK}";
        

        List<String> resultMessages = eventWorkStudentService.handleAddListCTVToWork(idSK, idCV, studentIDS);

        return "redirect:/lecturer/work/{idSK}";
    }
    
    @PostMapping("/lecturer/view/{idEV}/{idCV}")
    public String postRemoveCTVToWork(Model model, @PathVariable("idEV") Integer idEV,
                @PathVariable("idCV") Integer idCV,
                 @RequestParam(required = false, name = "studentIDS") List<Integer> studentIDS,
                 RedirectAttributes redirectAttributes ){
        
        // String messString = eventWorkStudentService.handleAddCTVToWork(idSK, idCV, idSV);
        
        if(studentIDS == null)
            return "redirect:/lecturer/work/{idEV}";

        List<String> resultMessages = eventWorkStudentService.handleRemoveListCTVFromWork(idEV,idCV , studentIDS);

        return "redirect:/lecturer/work/{idEV}";
    }

    @PostMapping("/lecturer/work/{idEV}/{idCV}")
    public String postMethodName(@PathVariable("idCV") Integer idCV, Model model,
                           @PathVariable("idEV") Integer idEV) {
        
        String mesString = workService.handWorkIsComplaute(idCV);

        model.addAttribute("mess", mesString);
        
        return "redirect:/lecturer/work/" + idEV;
    }

    @GetMapping("/lecturer/eventUpdate")
    public String getMethodName(@RequestParam("eventID") int eventID, Model model) {

        Event event = eventService.getEventByID(eventID);

        model.addAttribute("newEvent", event);

        return "client/lecturer/update";
    }

    @PostMapping("/lecturer/eventUpdate")
    public String postMethodName( @ModelAttribute("newWork") Event event, HttpSession session) {

        eventService.handleSaveCreateEvent(event);
        
        return "redirect:/lecturer";
    }
    
    
    
}
