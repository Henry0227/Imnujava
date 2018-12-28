package cn.book.service.impl;

import cn.book.dao.ProgenitorDao;
import cn.book.model.Progenitor;
import cn.book.model.Users;
import cn.book.service.ProgenitorService;

public class ProgenitorServiceImpl implements ProgenitorService {
	private ProgenitorDao progenitorDao;

	public void setProgenitorDao(ProgenitorDao progenitorDao) {
		this.progenitorDao = progenitorDao;
	}

	public void register(Progenitor progenitor) {
		this.progenitorDao.register(progenitor);

	}

	public boolean valiUser(Users user) {
		return this.progenitorDao.valiUser(user);
	}


}
