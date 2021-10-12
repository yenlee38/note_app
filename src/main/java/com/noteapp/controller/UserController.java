package com.noteapp.controller;

import com.noteapp.model.User;
import com.noteapp.service.NoteService;
import com.noteapp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
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

    @Autowired
    public NoteService noteService;

    @RequestMapping(value = "/well-come", method = RequestMethod.GET)
    public String hello(ModelMap model){
        return "register";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(@Valid String username, @Valid String password, ModelMap modelMap) {
        User user = userService.getByLogin(username, password);
        if (user!= null) {
            return "redirect:/" + user.getId() + "/home";
        } else {
            return "index";
        }
    }

//    @RequestMapping(value = "/{id}/home", method = RequestMethod.POST)
//    public String register(@Valid String username, @Valid String password, ModelMap modelMap) {
//        if(userService.getByLogin(username, password) != null) {
//            modelMap.addAttribute("user", userService.getByLogin(username, password));
//            modelMap.addAttribute("notes", noteService.getAllByUser(userService.getByLogin(username, password).getId()));
//        } else {
//            User user = userService.register(username, password);
//            if (user!= null) {
//                modelMap.addAttribute("user", user);
//                modelMap.addAttribute("notes", user.getId());
//
//            } else {
//                return "index";
//            }
//        }
//        return "home";
//    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String register(@Valid String username, @Valid String password, ModelMap modelMap) {
        User user = userService.register(username, password);
        if (user!= null) {
           return "redirect:/" + user.getId() + "/home";
        } else {
            return "register";
        }
    }

    @RequestMapping("/{id}/home")
    public String home(@PathVariable("id") int id, Model model) {
        model.addAttribute("user", userService.getById(id));
        model.addAttribute("notes", noteService.getAll(id));
        return "home";
    }

    @RequestMapping(value = "/register")
    public String getFormRegister(Model model) {
        return "register";
    }

    @RequestMapping(value = "/login")
    public String getFormLogin(Model model) {
        return "index";
    }

}
