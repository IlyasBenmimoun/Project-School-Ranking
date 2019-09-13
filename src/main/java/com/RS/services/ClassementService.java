package com.RS.services;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.RS.modal.Classement;
import com.RS.repository.ClassementRepository;

@Service
@Transactional
public class ClassementService {
	@Autowired
	private final ClassementRepository Classementrepository;

	public ClassementService(ClassementRepository classementrepository) {
		super();
		Classementrepository = classementrepository;
	}

	public void addclassement(Classement c) {
		Classementrepository.save(c);
	}

	public void delete(Classement c) {

		Classementrepository.delete(c);
	}

	public Collection<? extends Classement> afficherclassement() {
		List<Classement> cl = new ArrayList<Classement>();
		for (Classement c : Classementrepository.findAll()) {
			cl.add(c);
		}

		return cl;
	}

	public Collection<? extends Classement> afficherclassementById(int i) {
		// TODO Auto-generated method stub
		List<Classement> userList = new ArrayList<Classement>();
		userList.add(Classementrepository.findById(i).get());
		return userList;
	}

	public String saveClassement(Classement c) {
		Classement form = Classementrepository.save(c);
		return null;
	}
}
