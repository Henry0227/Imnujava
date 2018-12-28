package cn.book.service;

import java.util.List;

import cn.book.model.Article;

public interface ArticleService {
	public List<Article> findArticleById(int id,int pageSize,int pageNum);
	
	public List<Article> findArticleById2(int id,int pageSize,int pageNum);
	
	
	public void updateCross(int id);
	
	public Article findOne(int id);
	
	public void saveOne(Article article);
	


}
