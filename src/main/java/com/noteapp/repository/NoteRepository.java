package com.noteapp.repository;

import com.noteapp.model.Note;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface NoteRepository extends JpaRepository<Note,Integer> {
    @Query(value = "select n from Note n where n.user_id = :id and n.is_hidden = false ")
    List<Note> getAllByUserId(@Param("id") int id);

    @Query(value = "select n from Note n where n.user_id = :id and n.is_hidden = false and n.name like %:name%")
    List<Note> getAllByName(@Param("id") int id, @Param("name") String name);

    Note findById(int id);
}
