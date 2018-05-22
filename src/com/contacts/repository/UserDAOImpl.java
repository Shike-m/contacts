package com.contacts.repository;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.contacts.domain.User;

@Repository
public class UserDAOImpl implements UserDAO {
	
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public User loadUser(String username) {		
		Session session= sessionFactory.getCurrentSession();
		Query<User> query = session.createQuery("from User as u where u.username =:name",User.class);
		query.setParameter("name", username);
		//return query.getSingleResult();		
		return query.uniqueResult();
	}

	@Override
	public void saveUser(User user) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(user);
	}

}
