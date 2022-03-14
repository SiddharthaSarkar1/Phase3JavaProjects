package com.simplilearn.repositories;

import org.springframework.data.repository.CrudRepository;

import com.simplilearn.entities.Feedback;

public interface FeedbackRepository extends CrudRepository<Feedback, Integer>{
	
	public Feedback findByUser(String feedback);

}
