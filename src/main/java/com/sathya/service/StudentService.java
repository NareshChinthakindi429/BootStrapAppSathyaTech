package com.sathya.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sathya.model.Student;
import com.sathya.repo.StudentRepository;
@Service
public class StudentService {
	@Autowired
	StudentRepository repository;

	public Student saveStudent(Student student) {
		Student stu = null;
		try {
		stu = repository.save(student);
		}
		catch (Exception e) {
			stu = null;
		}
			return stu;
			
	}

	public Student login(String email, String password) {
		Student student = null;
		try {
			student = repository.findByEmailAndPassword(email, password);
		}catch (Exception e) {
			student = null;
		} 
		return student;
	}

	public List<Student> getAllStudents() {
		return repository.findAll();
	}

	public void deleteStudent(int id) {
		repository.deleteById(id);
	}

	public Student updateStudent( Student student) {
		Student stu = repository.findById(student.getId()).get();
		stu.setAddress(student.getAddress());
		stu.setName(student.getName());
		stu.setPassword(student.getPassword());
		stu.setPhoneNo(student.getPhoneNo());
		return repository.save(stu);

	}

	public Student searchStudent(String s) {
		Student student = null;
		if (s.contains("@"))
			student = repository.findByEmail(s);
		else
			student = repository.findById(Integer.parseInt(s)).get();
		return student;
	}

	public Student update(Integer id) {
		
		return repository.findById(id).get();
	}


}
