package com.contacts.repository;

import java.util.Collections;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.contacts.domain.Person;

@Repository
public class PersonDAOImpl implements PersonDAO {
	
	@Autowired
	SessionFactory sessionFactory;

	@Override	
	@Transactional
	public void savePerson(Person person) {			
		Session session = sessionFactory.getCurrentSession();		
		session.saveOrUpdate(person);
		
	}

	@Override	
	public List<Person> findAll() {
		System.out.println("Before DAO called");
		Session session = sessionFactory.getCurrentSession();
		Query<Person> query = session.createQuery("from Person p order by id",Person.class);		
		return query.getResultList();		
	}

	@Override	
	public Person findOne(long id) {
		Session session = sessionFactory.getCurrentSession();
		Person person = session.get(Person.class, id);
		return person;
	}

	@Override	
	@Transactional
	public void deleteOne(long id) {
		Session session = sessionFactory.getCurrentSession();
		Person person=session.get(Person.class, id);
		session.delete(person);
		
	}

	@Override
	@Transactional
	public void updatePerson(Person person) {		
		Session session= sessionFactory.getCurrentSession();
		//session.getTransaction().commit();
		session.update(person);
		
	}

}
