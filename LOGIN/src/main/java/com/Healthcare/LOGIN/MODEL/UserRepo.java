package com.Healthcare.LOGIN.MODEL;

import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepo extends JpaRepository<User,Integer>{

    User findByName(String userName);
    User findByPassword(String password);
}
