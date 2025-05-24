package com.EventManagement.java.repository.client;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.EventManagement.java.domain.client.model.Event;

public interface EventRepository extends JpaRepository<Event , Integer> {
    List<Event> findAll();

    Event  findByEventID(int eventID);

    List<Event> findByTrainingPointsGreaterThan(int minPoint);

    List<Event> findBySocialWordPointGreaterThan(int minPoint);

    List<Event> findByLecturer_LecturerID(int id);

}
