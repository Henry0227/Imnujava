package cn.book.service;

import cn.book.model.Progenitor;
import cn.book.model.Users;

public interface ProgenitorService {
	public void register(Progenitor progenitor);
	
	public boolean valiUser(Users user);
	

}
