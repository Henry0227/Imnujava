package cn.book.service.impl;

import java.util.List;

import cn.book.dao.ArticleDao;
import cn.book.model.Article;
import cn.book.service.ArticleService;

public class ArticleServiceImpl implements ArticleService {
	private ArticleDao articleDao;

	public void setArticleDao(ArticleDao articleDao) {
		this.articleDao = articleDao;
	}

	public List<Article> findArticleById(int id, int pageSize, int pageNum) {
		return this.articleDao.findArticleById(id, pageSize, pageNum);
	}



	public void updateCross(int id) {
		this.articleDao.updateCross(id);
		
	}

	public Article findOne(int id) {
		return articleDao.findOne(id);
	}

	public void saveOne(Article article) {
		this.articleDao.saveOne(article);
		
	}

	public List<Article> findArticleById2(int id, int pageSize, int pageNum) {
		return this.articleDao.findArticleById2(id, pageSize, pageNum);
	}



	

}
