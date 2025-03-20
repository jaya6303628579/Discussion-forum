package com.nit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nit.model.Alumini;
import com.nit.model.Student;
import com.nit.repository.AluminiRepository;

@Service
public class AluminiService {

@Autowired
private AluminiRepository aluminiRepository;

public void saveAlumini(Alumini alumini) {
	aluminiRepository.save(alumini);
}

public Alumini login(String usr, String pass) {
	
	return aluminiRepository.findByUsernameAndPassword(usr, pass);
}

public List<Alumini> getAll(){
	return aluminiRepository.findAll();
}

public void deleteStudent(Integer rollno) {
	aluminiRepository.deleteById(rollno);
}
}
