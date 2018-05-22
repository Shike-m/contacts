package com.contacts.service;

import java.util.List;

import com.contacts.domain.Person;

public interface IService {
	List<Person> findAll();
	Person getPerson(long id);
	void deletePerson(long id);
	void savePerson(Person person);

	void updatePerson(Person person);
}
