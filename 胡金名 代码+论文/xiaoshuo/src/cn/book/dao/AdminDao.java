package cn.book.dao;

import java.util.List;

import cn.book.model.Admin;

public interface AdminDao {
	public void saveAdmin(Admin admin);
	
	public void deleteAdmin(Admin admin);
	
	public void updateAdmin(Admin admin);
	
	public List<Admin> findAdminAll(int pageSize,int pageNum);
	
	public int findNumAll();
	
	public Admin  findAdminById(int id);
	
	public Admin  login(Admin admin);
	
	
	
	

}
