package com.nit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nit.model.Questions;
import com.nit.repository.QuestionRepository;

@Service
public class QuestionsService {

	@Autowired
	private QuestionRepository questionRepository;
	public void savequestion(Questions q) {
		questionRepository.save(q);
	}
	public List<Questions> getallquestions(){
		
		return questionRepository.findAll();
	}
	public Questions getOne(Integer id) {
		return questionRepository.findById(id).get();
	}

}
