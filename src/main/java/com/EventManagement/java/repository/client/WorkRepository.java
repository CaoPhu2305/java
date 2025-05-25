package com.EventManagement.java.repository.client;

import org.springframework.data.jpa.repository.JpaRepository;

import com.EventManagement.java.domain.client.model.Work;
import java.util.List;


public interface WorkRepository extends JpaRepository<Work , Integer> {
    
    Work findByWorkID(int workID);

}
