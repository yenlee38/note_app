package com.noteapp.service;

import com.noteapp.model.Note;
import com.noteapp.model.User;
import com.noteapp.repository.NoteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Optional;

@Service
public class NoteService {
    @Autowired
    public NoteRepository noteRepository;

    public List<Note> getAllByUser(int userId) {
        return noteRepository.getAllByUserId(userId);
    }

    public void createNote(Note note) {
        note.setUpdated_at(new Date());
        note.setCreated_at(new Date());
        note.setIs_hidden(false);
        noteRepository.save(note);
    }

    public void updateNote(Note note) {
        Note newNote = noteRepository.findById(note.getId());
        newNote.setUpdated_at(new Date());
        newNote.setName(note.getName());
        newNote.setContent(note.getContent());
        noteRepository.save(newNote);
    }

    public void deleteNote(int noteId) {
        Note note = noteRepository.findById(noteId);
        note.setUpdated_at(new Date());
        note.setIs_hidden(true);
        noteRepository.save(note);
    }

    public Note getById(int noteId) {
       return noteRepository.findById(noteId);
    }

    public List<Note> searchNote(int userId, String name) {
        return noteRepository.getAllByName(userId, name);
    }

    public List<Note> getAll(int userId) {
        System.out.println("notes" + noteRepository.getAllByUserId(userId));
        return noteRepository.getAllByUserId(userId);
    }
}
