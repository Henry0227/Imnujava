package cn.book.service.impl;

import java.util.List;

import cn.book.dao.AdminDao;
import cn.book.model.Admin;
import cn.book.service.AdminService;

public class AdminServiceImpl implements AdminService {
	private AdminDao adminDao;

	public void deleteAdmin(Admin admin) {
		this.adminDao.deleteAdmin(admin);

	}

	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
	}

	public List<Admin> findAdminAll(int pageSize, int pageNum) {
		return this.adminDao.findAdminAll(pageSize, pageNum);
	}

	public Admin findAdminById(int id) {
		return this.adminDao.findAdminById(id);
	}

	public void saveAdmin(Admin admin) {
		this.adminDao.saveAdmin(admin);

	}

	public void updateAdmin(Admin admin) {
		this.adminDao.updateAdmin(admin);

	}

	public Admin login(Admin admin) {
		return this.adminDao.login(admin);
	}

	public int findNumAll() {
		return this.adminDao.findNumAll();
	}

	
	

}
