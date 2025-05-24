package com.EventManagement.java.service.client;


import org.springframework.stereotype.Service;

import com.EventManagement.java.domain.client.model.UserAccount;
import com.EventManagement.java.repository.client.UserRepository;

@Service
public class UserService {
    
    private final UserRepository userRepository;

    public UserService(UserRepository userRepository){
        this.userRepository = userRepository;
    }

    public UserAccount getUserByID(int id){
        return userRepository.findByUserID(id);
    }

    public UserAccount getUserByName(String name) {
        return userRepository.findByName(name);
    }

}
