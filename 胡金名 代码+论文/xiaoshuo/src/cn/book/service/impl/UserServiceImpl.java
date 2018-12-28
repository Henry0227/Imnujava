package cn.book.service.impl;

import java.util.List;

import cn.book.dao.UserDao;
import cn.book.model.Users;
import cn.book.service.UserService;

public class UserServiceImpl implements UserService {
	private UserDao userDao;

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public Users login(Users user) {
		return this.userDao.login(user);
	}

	public void register(Users user) {
		this.userDao.register(user);
		
	}

	public Users upateUser(Users user) {
		return this.userDao.upateUser(user);
		
	}

	public void devVIp(Users user) {
		this.userDao.devVIp(user);
		
	}

	public List<Users> findAll(String condition, int pageSize, int pageNum,
			String type) {
		return this.userDao.findAll(condition, pageSize, pageNum, type);
	}

	public int getCount(String condition, String type) {
		return this.userDao.getCount(condition, type);
	}

	public void deleteUser(Users user) {
		this.userDao.deleteUser(user);
	}

	public void update(Users user) {
		this.userDao.update(user);
		
	}

	public Users findOne(Users user) {
		return this.userDao.findOne(user);
	}

	public boolean valiUserByName(String username) {
		return this.userDao.valiUserByName(username);
	}


}
