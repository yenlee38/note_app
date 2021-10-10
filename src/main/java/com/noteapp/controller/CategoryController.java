package com.noteapp.controller;

import com.noteapp.model.Category;
import com.noteapp.repository.CategoryRepository;
import com.noteapp.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;
import java.util.List;

@Controller
public class CategoryController {

    @Autowired
    public CategoryService categoryService;

    @RequestMapping(value = "/{id}/category", method = RequestMethod.GET)
    public String showPageCategory(Model model, @PathVariable("id") int id) {
        model.addAttribute("userId", id);
        model.addAttribute("categorys", categoryService.getAll());
        return "category";
    }

    @RequestMapping(value = "/{id}/add-category")
    public String showPageAddCategory( @PathVariable("id") int id, Model model) {
        model.addAttribute("userId", id);
        return "add-category";
    }

    @RequestMapping(value = "/{id}/add-category", method = RequestMethod.POST)
    public String addCategory(@PathVariable("id") int id, Model model, @Valid String name) {
        categoryService.addCategory(name);
        return "redirect:/category";
    }

    @RequestMapping(value = "/{id}/delete-category", method = RequestMethod.GET)
    public String deleteCategory(@RequestParam int id) {
        categoryService.deleteCategoryById(id);
        return "redirect:/category";
    }

    @RequestMapping(value = "/{id}/update-category", method = RequestMethod.GET)
    public String getUpdateCategory(Model model, @RequestParam int id) {
        model.addAttribute("id", id);
        model.addAttribute("name", categoryService.getById(id).getName());
        return "update-category";
    }

    @RequestMapping(value = "/{id}/update-category", method = RequestMethod.POST)
    public String updateCategory(@Valid int id, @Valid String name, Model model) {
       categoryService.updateCategory(id, name);
        return "redirect:/${id}/category";
    }

    @RequestMapping(value = "/{id}/search-category", method = RequestMethod.POST)
    public String searchCategory(@PathVariable("id") int id, @Valid String name, Model model) {
        model.addAttribute("userId", id);
        model.addAttribute("categorys", categoryService.searchCategory(id, name));
        return "category";
    }

}
