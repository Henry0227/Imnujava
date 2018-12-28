package cn.book.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.book.dao.LiteratureDao;
import cn.book.model.Literature;

public class LiteratureDaoImpl extends HibernateDaoSupport implements LiteratureDao {

	public List<Literature> findAll(int parentId) {
		return super.getHibernateTemplate().find("from Literature literature where literature.parent="+parentId);
	}

	public List<Literature> findAll() {
		return super.getHibernateTemplate().find("from Literature");
	}

	public Literature findOne(int id) {
		return super.getHibernateTemplate().get(Literature.class, id);
	}

}
