package com.noteapp.repository;

import com.noteapp.model.Category;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CategoryRepository extends JpaRepository<Category, Integer> {
    @Override
    List<Category> findAll();
    void deleteCategoryById(int id);

    @Query(value = "select c from Category c where c.is_hidden = false")
    public List<Category> findAllByIsHisdden();

    @Query(value = "select c from Category c where c.is_hidden = false and c.user_id = :id")
    public List<Category> findAllByUserIsHisdden(@Param("id") int id);

    @Query(value = "select c from Category c where c.name LIKE %:name% and c.user_id = :id")
    public List<Category> findCategoryByName(@Param("id") int id, @Param("name") String name);
}
