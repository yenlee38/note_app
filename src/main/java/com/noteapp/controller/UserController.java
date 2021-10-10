package com.noteapp.controller;

import com.noteapp.model.User;
import com.noteapp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import javax.validation.Valid;

@Controller

public class UserController {

    @Autowired
    public UserService userService;

    @RequestMapping(value = "/well-come", method = RequestMethod.GET)
    public String hello(ModelMap model){
        return "register";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(@Valid String username, @Valid String password, ModelMap modelMap) {
        return "home";
    }

    @RequestMapping(value = "/home", method = RequestMethod.POST)
    public String register(@Valid String username, @Valid String password, ModelMap modelMap) {
        if(userService.getByLogin(username, password) != null) {
            modelMap.addAttribute("user", userService.getByLogin(username, password));
        } else {
            User user = userService.register(username, password);
            if (user!= null) {
                modelMap.addAttribute("user", user);
            } else {
                return "index";
            }
        }
        return "home";
    }

    @RequestMapping("/home")
    public ModelAndView home(ModelMap modelMap, @Valid User user) {
        modelMap.addAttribute("user", user);
        return new ModelAndView("home", modelMap);
    }

}
