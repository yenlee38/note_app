package com.noteapp.controller;

import com.noteapp.model.Note;
import com.noteapp.service.CategoryService;
import com.noteapp.service.NoteService;
import com.noteapp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@Controller
public class NoteController {

    @Autowired
    public NoteService noteService;

    @Autowired
    public CategoryService categoryService;

    @Autowired
    public UserService userService;

    @RequestMapping(value = "/{id}/add-note")
    public String showPageAddNote(@PathVariable("id") int id, Model model) {
        model.addAttribute("userId", id);
        model.addAttribute("categorys", categoryService.getAll(id));
        model.addAttribute("note", new Note());
        return "add-note";
    }
    @RequestMapping(value = "/{id}/update-note")
    public String showPageUpdateNote(@PathVariable("id") int userId,@RequestParam int id, Model model) {
        model.addAttribute("userId", userId);
        model.addAttribute("categorys", categoryService.getAll(userId));
        Note note = noteService.getById(id);
        model.addAttribute("note", note);
        return "update-note";
    }

    @RequestMapping(value = "/{id}/update-note", method = RequestMethod.POST)
    public String updateNote(@PathVariable("id") int id, Model model, @ModelAttribute("note") Note note) {
        Note noteNew = new Note(note.getId(), note.getName(), note.getContent(), id, note.getCategory_id());
        noteService.updateNote(noteNew);
        return "redirect:/{id}/home";
    }

    @RequestMapping(value = "/{id}/add-note", method = RequestMethod.POST)
    public String addNote(@PathVariable("id") int id, Model model, @ModelAttribute("note") Note note) {

        Note noteNew = new Note(note.getName(), note.getContent(), id, note.getCategory_id());
        noteService.createNote(noteNew);
        return "redirect:/{id}/home";
    }

    @RequestMapping(value = "/{id}/delete-note", method = RequestMethod.GET)
    public String deleteNote(@RequestParam int id) {
        noteService.deleteNote(id);
        return "redirect:/{id}/home";
    }

    @RequestMapping(value = "/{id}/search-note", method = RequestMethod.POST)
    public String searchCategory(@PathVariable("id") int id, @Valid String name, Model model) {
        model.addAttribute("userId", id);
        model.addAttribute("user",userService.getById(id));
        model.addAttribute("notes", noteService.searchNote(id, name));
        return "home";
    }


}
