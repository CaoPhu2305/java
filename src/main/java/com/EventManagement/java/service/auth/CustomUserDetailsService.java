package com.EventManagement.java.service.auth;

import java.util.Collections;

import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.EventManagement.java.domain.client.model.UserAccount;
import com.EventManagement.java.service.client.UserService;

@Service
public class CustomUserDetailsService implements UserDetailsService {

    private final UserService userService;

    public CustomUserDetailsService(UserService userService) {
        this.userService = userService;
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
       
        UserAccount userAccount = userService.getUserByID(Integer.parseInt(username));
        
        if(userAccount == null) {
            throw new UsernameNotFoundException("ko thay");
        }

        return new User(String.valueOf(userAccount.getUserID()), userAccount.getPassword(), Collections.singletonList(new SimpleGrantedAuthority("ROLE_" + String.valueOf(userAccount.getRole()))));
        //String.valueOf(userAccount.getUserID())
    }
    
}
