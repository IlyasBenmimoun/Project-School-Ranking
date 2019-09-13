package com.RS.modal;

import java.util.Comparator;

import com.RS.modal.Classement;

public class SortByScore implements Comparator<Classement> {

	@Override
	public int compare(Classement a, Classement b) {
		// TODO Auto-generated method stub

		return b.getScoretotal() - a.getScoretotal();
	}

}