package com.contacts.repository;

import java.util.List;

import com.contacts.domain.Person;

public interface PersonDAO {
	
	public void savePerson(Person person);
	
	public List<Person> findAll();
	
	public Person findOne(long id);
	
	public void deleteOne(long id);
	
	public void updatePerson(Person person);

}
