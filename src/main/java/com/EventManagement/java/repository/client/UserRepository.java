package com.EventManagement.java.repository.client;

import org.springframework.data.jpa.repository.JpaRepository;

import com.EventManagement.java.domain.client.model.UserAccount;





public interface UserRepository extends JpaRepository<UserAccount, Integer> {
    
    UserAccount findByUserID(int userID);
    UserAccount findByName(String name);
}
