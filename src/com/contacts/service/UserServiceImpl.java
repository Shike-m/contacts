package com.contacts.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.contacts.domain.User;
import com.contacts.repository.UserDAO;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	UserDAO userDAO;

	@Override
	@Transactional
	public User loadUser(String username) {
		
		return userDAO.loadUser(username);
		
	}

	@Override
	@Transactional
	public void saveUser(User user) {
		
		userDAO.saveUser(user);

	}

}
