package com.sathya.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.sathya.model.Student;
@Repository
public interface StudentRepository extends JpaRepository<Student, Integer> {

	Student findByEmailAndPassword(String email, String password);

	Student findByEmail(String s);
	

}
