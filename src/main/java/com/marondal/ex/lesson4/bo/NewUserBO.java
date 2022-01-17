package com.marondal.ex.lesson4.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.marondal.ex.lesson4.dao.NewUserDAO;
import com.marondal.ex.lesson4.model.NewUser;



@Service
public class NewUserBO {


	@Autowired
	private NewUserDAO newUserDAO;
	
	public int adduser(String name, String yyyymmdd, String email, String introduce) {
		return newUserDAO.insertUser(name, yyyymmdd, email, introduce);
	}
	
	public NewUser getUser(int id) {
		return newUserDAO.selectUser(id);
	}
	
	public boolean isDuplicateName(String name) {
		
		int count  = newUserDAO.selectCountName(name);
		if(count == 0 ) {
			return false;
		}else {
			return true;
		}
	}
}
