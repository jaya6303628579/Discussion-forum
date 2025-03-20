package com.nit.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Questions {
@Id
private int no;
private String Question;
private String Answer;
public Questions(int no, String question, String answer) {
	super();
	this.no = no;
	Question = question;
	Answer = answer;
}
public Questions() {
	super();
}
public int getNo() {
	return no;
}
public void setNo(int no) {
	this.no = no;
}
public String getQuestion() {
	return Question;
}
public void setQuestion(String question) {
	Question = question;
}
public String getAnswer() {
	return Answer;
}
public void setAnswer(String answer) {
	Answer = answer;
}
@Override
public String toString() {
	return "Questions [no=" + no + ", Question=" + Question + ", Answer=" + Answer + "]";
}

}
