package com.RS.repository;

import org.springframework.data.repository.CrudRepository;

import com.RS.modal.User;

public interface UserRepository extends CrudRepository<User, Integer> {

	public User findByUsernameAndPassword(String username, String password);

	public User findByUsername(String username);

}
