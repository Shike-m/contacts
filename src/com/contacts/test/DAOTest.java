package com.contacts.test;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.contacts.domain.Address;
import com.contacts.domain.Person;
import com.contacts.repository.PersonDAO;
import com.contacts.service.IService;
import com.contacts.service.PersonService;



public class DAOTest {
	
	@Autowired
	IService pService;
	
	@Test
	public void test1() {		
		
		
		Person person = new Person();
		Address address= new Address();
		person.setId(1);
		person.setFirstname("Mike");
		person.setLastname("Soyia");
		person.setEmail("Soyia@q.com");
		address.setId(1);
		address.setCity("FF");
		person.setAddress(address);		
		pService.savePerson(person);
		
		//System.out.println(p.findOne(1));
	}
	
	@Test
	public void output() {
		List<Person> persons = pService.findAll();
		System.out.println(persons.toString());
	}
	
}
