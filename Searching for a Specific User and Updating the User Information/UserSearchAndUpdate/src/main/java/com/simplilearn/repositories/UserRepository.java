package com.simplilearn.repositories;

import org.springframework.data.repository.CrudRepository;

import com.simplilearn.entities.User;

public interface UserRepository extends CrudRepository<User, Integer> {

	public User findByName(String name);
	
}