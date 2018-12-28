package cn.book.model;

/**
 * Bookmark entity. @author MyEclipse Persistence Tools
 */

public class Bookmark implements java.io.Serializable {

	// Fields

	private Integer id;
	private Book book;
	private Users users;
	private String name;
	private String url;
	private String nowpage;

	// Constructors

	/** default constructor */
	public Bookmark() {
	}

	/** minimal constructor */
	public Bookmark(Book book, String url) {
		this.book = book;
		this.url = url;
	}

	/** full constructor */
	public Bookmark(Book book, Users users, String name, String url,
			String nowpage) {
		this.book = book;
		this.users = users;
		this.name = name;
		this.url = url;
		this.nowpage = nowpage;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Book getBook() {
		return this.book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	public Users getUsers() {
		return this.users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getNowpage() {
		return this.nowpage;
	}

	public void setNowpage(String nowpage) {
		this.nowpage = nowpage;
	}

}