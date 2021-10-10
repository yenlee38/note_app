package com.noteapp.repository;

import com.noteapp.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {
    User findUserById(int id);
    User findUserByUsernameAndPassword(String username, String password);
}
