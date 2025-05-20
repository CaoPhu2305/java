package com.EventManagement.java.controller.client.auth;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;



@Controller
public class LoginController {
    

    @GetMapping("/login")
    public String getLoginPage() {
        return "client/auth/login/show";
    }
    

}
