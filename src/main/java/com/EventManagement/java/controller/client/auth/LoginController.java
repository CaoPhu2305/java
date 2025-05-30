package com.EventManagement.java.controller.client.auth;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;




@Controller
public class LoginController {
    

    @GetMapping("/login")
    public String getLoginPage() {
        return "client/auth/login/show";
    }

    @GetMapping("/403")
    public String get403Page() {
        return "client/auth/err/403";
    }
    
    

}
