package com.nit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nit.model.Student;
import com.nit.repository.StudentRepository;

@Service
public class StudentService {
@Autowired
private StudentRepository studentRepository;

public void registerStudent(Student student) {
	studentRepository.save(student);
}
public Student login(String usr, String pass) {
	
	return studentRepository.findByUsernameAndPassword(usr, pass);
}

public List<Student> getcommon(){
	return studentRepository.findCommonStudents();
}

public List<Student> getAll(){
	return studentRepository.findAll();
}
public List<Student> getYopStudents(Long yop) {
	return studentRepository.findByYop(yop);
}
public void deleteStudent(Integer rollno) {
	studentRepository.deleteById(rollno);
}
 
}
