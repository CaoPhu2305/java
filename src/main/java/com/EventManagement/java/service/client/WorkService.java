package com.EventManagement.java.service.client;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;
import com.EventManagement.java.repository.client.WorkRepository;
import org.springframework.stereotype.Service;

import com.EventManagement.java.domain.client.model.EventWorkStudent;
import com.EventManagement.java.domain.client.model.EventWorkStudentID;
import com.EventManagement.java.domain.client.model.Work;
import com.EventManagement.java.repository.client.EventWorkStudentRepository;

@Service
public class WorkService {

    private final WorkRepository workRepository;
    
    public final EventWorkStudentRepository eventWorkStudentRepository;

    public WorkService(EventWorkStudentRepository eventWorkStudentRepository, WorkRepository workRepository) {
        this.eventWorkStudentRepository = eventWorkStudentRepository;
        this.workRepository = workRepository;
    }

    public List<Work> getWoksByEventID(int eventID) {

        List<Work> works = new ArrayList<>();

        List<EventWorkStudent> eventWorks = eventWorkStudentRepository.findByEventWorkStudentID_EventID(eventID);
        
        for (EventWorkStudent work : eventWorks) {
           Work workTmp = work.getWork();
           if(!works.contains(workTmp)){

                // work.set
                works.add(workTmp);
            }
        }

        return works;
    }

    public List<Integer> countWorkOfEvent(int eventID, List<Work> works){
        List<Integer> quantity = new ArrayList<>();

        for (Work work : works) {
            quantity.add(eventWorkStudentRepository.countByEventWorkStudentID_EventIDAndEventWorkStudentID_WorkID(eventID, work.getWorkID()));
        }

        return quantity;
    }

    public void handleSaveWork(Work work) {
        work.setIsComplate(false);
        workRepository.save(work);
    }

    public String handWorkIsComplaute(int workID) {
        Work work = workRepository.findByWorkID(workID);
        boolean tmp = work.getIsComplate();
        if(work != null) {
            work.setIsComplate(!tmp);
            workRepository.save(work);
            return"Đã Cập Nhật Công Việc Này đã hoàn thành";
        }else{

            return"Không tìm thấy công việc này";

        }

    }

}
