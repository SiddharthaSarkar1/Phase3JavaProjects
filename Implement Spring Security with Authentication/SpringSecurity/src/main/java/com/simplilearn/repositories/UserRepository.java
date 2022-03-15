package com.simplilearn.repositories;

import java.util.Optional;
import org.springframework.stereotype.Repository;
import org.springframework.data.repository.CrudRepository;

import com.simplilearn.entities.User;



@Repository
public interface UserRepository extends CrudRepository<User, Integer>{

	public Optional<User> findUserByName(String name); 
}