package cn.book.dao;

import java.util.List;

import cn.book.model.Literature;

public interface LiteratureDao {
	public List<Literature> findAll(int parentId );
	
	public List<Literature> findAll();
	
	public Literature findOne(int id);

}
