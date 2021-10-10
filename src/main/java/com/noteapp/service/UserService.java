package com.noteapp.service;

import com.noteapp.model.User;
import com.noteapp.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

@Service
public class UserService {

    @Autowired
    UserRepository userRepository;

    public User getByLogin(String username, String password) {
        return userRepository.findUserByUsernameAndPassword(username, password);
    }

    public User register(String username, String password) {
        User user = new User(username, password, new Date(), new Date());
        userRepository.save(user);
        return userRepository.findUserByUsernameAndPassword(username, password);
    }
}
