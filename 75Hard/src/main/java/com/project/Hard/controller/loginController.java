package com.project.Hard.controller;

import com.project.Hard.model.login;
import com.project.Hard.model.register;
import com.project.Hard.service.LoginService;
import com.project.Hard.service.RegistrationService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class loginController {
    private RegistrationService registrationService;
    private LoginService loginService;
    @Autowired
    public loginController(RegistrationService theRegistrationService,LoginService theLoginService){
        registrationService=theRegistrationService;
        loginService=theLoginService;
    }
    @GetMapping("/login")
    public String showLogin(Model theModel){
        login l=new login();
        theModel.addAttribute("login",l);
        return "login";
    }
    @PostMapping("/loggedin")
    public String logged(HttpServletRequest request, @RequestParam("username")String username, @RequestParam("password")String password
    , Model theModel){

        theModel.addAttribute("login",new login());
        if(loginService.existsById(username)) {
            HttpSession session=request.getSession();

            register name=registrationService.findById(username);
            theModel.addAttribute("name",name.getFirstName());

            login l = loginService.findById(username);
            System.out.println(username + password);


            if (l.getPassword().equals(password)) {
                session.setAttribute("USER",l.getUsername());
                return "UserDashBoard";
            } else {
                System.out.println("it does not worked!!");
                return "redirect:/login";
            }
        }
        else{
            System.out.println("Username Does not found");
            return "redirect:/login";
        }
    }

    @GetMapping("/logout")
    public String logout(){
        return "home";
    }
}
