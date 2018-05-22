package com.contacts.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.contacts.domain.Person;
import com.contacts.repository.PersonDAO;

@Service
public class PersonService implements IService {
	
	@Autowired
	PersonDAO personDAO;

	@Override	
	@Transactional
	public List<Person> findAll() {
		
		return personDAO.findAll();
	}

	@Override	
	@Transactional
	public Person getPerson(long id) {
		
		return personDAO.findOne(id);
	}

	@Override
	@Transactional
	public void deletePerson(long id) {
		personDAO.deleteOne(id);
		
	}

	@Override	
	@Transactional
	public void savePerson(Person person) {
		//System.out.println("Before the save action");
		personDAO.savePerson(person);
		//System.out.println("Before the save action");
		
	}

	@Override
	@Transactional
	public void updatePerson(Person person) {
		personDAO.updatePerson(person);
		
	}

}
