package com.contacts.service;

import com.contacts.domain.User;


public interface UserService {
	User loadUser(String username);
	void saveUser(User user);
}
