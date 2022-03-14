package com.simplilearn.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.simplilearn.entities.Feedback;
import com.simplilearn.repositories.FeedbackRepository;

@Service
public class FeedbackService {
	
	@Autowired
	private FeedbackRepository feedbackRepository;

	public Iterable<Feedback> GetAllFeedback() {
		return feedbackRepository.findAll();
	}

	public boolean addFeedback (Feedback feed) {
		feedbackRepository.save(feed);
		return true;

	}

}
