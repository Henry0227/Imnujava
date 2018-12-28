package cn.book.dao;

import cn.book.model.Progenitor;
import cn.book.model.Users;

public interface ProgenitorDao {
	public void register(Progenitor progenitor);
	
	public boolean valiUser(Users user);
	
	
	

}
