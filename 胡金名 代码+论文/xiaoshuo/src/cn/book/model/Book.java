package cn.book.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Book entity. @author MyEclipse Persistence Tools
 */

public class Book implements java.io.Serializable {

	// Fields

	private Integer id;
	private Literature literature;
	private Users users;
	private String title;
	private String author;
	private String type;
	private String publisher;
	private Integer vip;
	private String url;
	private Integer progenitor;
	private String picture;
	private String remark;
	private String sayshow;
	private String maketime;
	private Set bookmarks = new HashSet(0);
	private Set articles = new HashSet(0);
	private Set discusses = new HashSet(0);

	// Constructors

	/** default constructor */
	public Book() {
	}

	/** minimal constructor */
	public Book(Literature literature, String title, String author,
			String type, String publisher) {
		this.literature = literature;
		this.title = title;
		this.author = author;
		this.type = type;
		this.publisher = publisher;
	}

	/** full constructor */
	public Book(Literature literature, Users users, String title,
			String author, String type, String publisher, Integer vip,
			String url, Integer progenitor, String picture, String remark,
			String sayshow, String maketime, Set bookmarks, Set articles,
			Set discusses) {
		this.literature = literature;
		this.users = users;
		this.title = title;
		this.author = author;
		this.type = type;
		this.publisher = publisher;
		this.vip = vip;
		this.url = url;
		this.progenitor = progenitor;
		this.picture = picture;
		this.remark = remark;
		this.sayshow = sayshow;
		this.maketime = maketime;
		this.bookmarks = bookmarks;
		this.articles = articles;
		this.discusses = discusses;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Literature getLiterature() {
		return this.literature;
	}

	public void setLiterature(Literature literature) {
		this.literature = literature;
	}

	public Users getUsers() {
		return this.users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return this.author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getPublisher() {
		return this.publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public Integer getVip() {
		return this.vip;
	}

	public void setVip(Integer vip) {
		this.vip = vip;
	}

	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Integer getProgenitor() {
		return this.progenitor;
	}

	public void setProgenitor(Integer progenitor) {
		this.progenitor = progenitor;
	}

	public String getPicture() {
		return this.picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getSayshow() {
		return this.sayshow;
	}

	public void setSayshow(String sayshow) {
		this.sayshow = sayshow;
	}

	public String getMaketime() {
		return this.maketime;
	}

	public void setMaketime(String maketime) {
		this.maketime = maketime;
	}

	public Set getBookmarks() {
		return this.bookmarks;
	}

	public void setBookmarks(Set bookmarks) {
		this.bookmarks = bookmarks;
	}

	public Set getArticles() {
		return this.articles;
	}

	public void setArticles(Set articles) {
		this.articles = articles;
	}

	public Set getDiscusses() {
		return this.discusses;
	}

	public void setDiscusses(Set discusses) {
		this.discusses = discusses;
	}

}