package cn.book.service.impl;

import java.util.List;

import cn.book.dao.LiteratureDao;
import cn.book.model.Literature;
import cn.book.service.LiteratureService;

public class LiteratureServiceImpl implements LiteratureService {
	private LiteratureDao literatureDao;

	public void setLiteratureDao(LiteratureDao literatureDao) {
		this.literatureDao = literatureDao;
	}

	public List<Literature> findAll(int parentId) {
		return  literatureDao.findAll(parentId);
	}

	public List<Literature> findAll() {
		return this.literatureDao.findAll();
	}

	public Literature findOne(int id) {
		return this.literatureDao.findOne(id);
	}

}
