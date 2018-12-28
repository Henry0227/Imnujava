package cn.book.service;

import java.util.List;

import cn.book.model.Users;

public interface UserService {
	public Users login(Users user);

	public void register(Users user);

	public Users upateUser(Users user);

	public void deleteUser(Users user);

	public void update(Users user);

	public void devVIp(Users user);

	public List<Users> findAll(String condition, int pageSize, int pageNum,
			String type);

	public int getCount(String condition, String type);
	
	public Users findOne(Users user);
	
	public boolean valiUserByName(String username);

}
