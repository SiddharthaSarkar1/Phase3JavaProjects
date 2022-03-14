package com.simplilearn.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.simplilearn.entities.Feedback;
import com.simplilearn.services.FeedbackService;

@RestController
public class FeedbackController {

	@Autowired
	FeedbackService feedbackService;
	
	@GetMapping("/feedback")
	public Iterable<Feedback> getAllFeedbacks() {
        // This returns a JSON or XML with the Feedbacks
        return feedbackService.GetAllFeedback();
    }
	
	
	@PostMapping(path="/feedback", consumes= {MediaType.APPLICATION_JSON_VALUE}) 
	public Feedback addNewFeedback(@RequestBody Feedback fb) {
		Feedback newFb = new Feedback(fb.getComments(), fb.getRating(), fb.getUser());
		feedbackService.addFeedback(newFb);
		return newFb;
	}
	
}
