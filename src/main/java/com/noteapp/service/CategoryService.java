package com.noteapp.service;

import com.noteapp.model.Category;
import com.noteapp.repository.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Optional;

@Service
public class CategoryService {

    @Autowired
    private CategoryRepository categoryRepository;

//    public List<Category> getAll() {
//        return categoryRepository.findAll();
//    }

    public List<Category> getAll() {
        return  categoryRepository.findAllByIsHisdden();
    }

    public List<Category> getAll(int id) {
        return  categoryRepository.findAllByUserIsHisdden(id);
    }

    public Category getById(int id) {
        Optional<Category> category = categoryRepository.findById(id);
        return category.get();
    }

    public List<Category> searchCategory(int id, String name) {
        return categoryRepository.findCategoryByName(id, name);
    }

    public void deleteCategoryById(int id) {
        Optional<Category> category = categoryRepository.findById(id);
        category.get().setIs_hidden(true);
        category.get().setUpdated_at(new Date());
        categoryRepository.save(category.get());
    }

    public void addCategory(int id, String name) {
        Category category = new Category();
        category.setName(name);
        category.setUser_id(id);
        category.setCreated_at(new Date());
        category.setUpdated_at(new Date());
        categoryRepository.save(category);
    }

    public void updateCategory(int id, String name) {
        Optional<Category> category = categoryRepository.findById(id);
        category.get().setName(name);
        category.get().setUpdated_at(new Date());
        categoryRepository.save(category.get());
    }
}
