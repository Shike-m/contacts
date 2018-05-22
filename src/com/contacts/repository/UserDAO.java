package com.contacts.repository;

import com.contacts.domain.User;

public interface UserDAO {
	User loadUser(String username);
	void saveUser(User user);
}
