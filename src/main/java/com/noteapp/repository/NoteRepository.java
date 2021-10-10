package com.noteapp.repository;

import com.noteapp.model.Note;
import org.springframework.data.jpa.repository.JpaRepository;

public interface NoteRepository extends JpaRepository<Note,Note> {
}
