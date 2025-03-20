package com.nit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nit.model.Postjob;
import com.nit.model.Student;
import com.nit.repository.PostJobRepository;

@Service
public class PostJobService {
	@Autowired
	private PostJobRepository postJobRepository;
	
	public void jobsave(Postjob postjob) {
		postJobRepository.save(postjob);
	}
	
	public List<Postjob> getAll(){
		return postJobRepository.findCommonStudents();
	}
	
	public List<Postjob> getAllList(){
		return postJobRepository.findAll();
	}
	
	public void deletePost(Integer no) {
		postJobRepository.deleteById(no);
	}
}
