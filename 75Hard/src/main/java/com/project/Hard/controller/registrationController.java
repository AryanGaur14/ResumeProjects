package com.project.Hard.controller;


import com.project.Hard.model.login;
import com.project.Hard.model.register;
import com.project.Hard.service.LoginService;
import com.project.Hard.service.RegistrationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class registrationController{
    private RegistrationService registrationService;
    private LoginService loginService;
    @Autowired
    public registrationController(RegistrationService theRegistrationService,LoginService theLoginService){
        registrationService=theRegistrationService;
        loginService=theLoginService;
    }
    @GetMapping("/registration-page")
    public String getForm(Model theModel){
        theModel.addAttribute("register",new register());
        return "registration-page";
    }

    @PostMapping("/register")
    public String register(@ModelAttribute("register")register userRegister, @RequestParam("username")
                           String username,@RequestParam("password") String password){
        registrationService.save(userRegister);
        login l=new login(username,password);
        loginService.save(l);
        return "redirect:/login";
    }
}
