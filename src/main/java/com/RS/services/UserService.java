package com.RS.services;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.RS.modal.User;
import com.RS.repository.UserRepository;

@Service
@Transactional
public class UserService {

	private final UserRepository userRepository;

	public UserService(UserRepository userRepository) {
		this.userRepository = userRepository;
	}

	public void adduser(User ussr) {
		userRepository.save(ussr);
	}

	public User findByUsernameAndPassword(String username, String password) {

		return userRepository.findByUsernameAndPassword(username, password);

	}

	public User findByUsername(String username) {

		return userRepository.findByUsername(username);
	}

	/*
	 * public int findByUserId(String username) {
	 * 
	 * return userRepository.findByUserId(username);
	 * 
	 * }
	 */

}
