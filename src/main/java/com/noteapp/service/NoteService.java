package com.noteapp.service;

import com.noteapp.model.User;
import com.noteapp.repository.NoteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NoteService {
    @Autowired
    public NoteRepository noteRepository;

}
