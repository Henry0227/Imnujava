package cn.book.model;

/**
 * Discuss entity. @author MyEclipse Persistence Tools
 */

public class Discuss implements java.io.Serializable {

	// Fields

	private Integer id;
	private Book book;
	private String title;
	private String content;
	private Integer userid;
	private String username;
	private String maketime;
	private String bookname;
	private Integer iscross;

	// Constructors

	/** default constructor */
	public Discuss() {
	}

	/** minimal constructor */
	public Discuss(Book book, String title, String content, String username) {
		this.book = book;
		this.title = title;
		this.content = content;
		this.username = username;
	}

	/** full constructor */
	public Discuss(Book book, String title, String content, Integer userid,
			String username, String maketime, String bookname, Integer iscross) {
		this.book = book;
		this.title = title;
		this.content = content;
		this.userid = userid;
		this.username = username;
		this.maketime = maketime;
		this.bookname = bookname;
		this.iscross = iscross;
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

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Integer getUserid() {
		return this.userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getMaketime() {
		return this.maketime;
	}

	public void setMaketime(String maketime) {
		this.maketime = maketime;
	}

	public String getBookname() {
		return this.bookname;
	}

	public void setBookname(String bookname) {
		this.bookname = bookname;
	}

	public Integer getIscross() {
		return this.iscross;
	}

	public void setIscross(Integer iscross) {
		this.iscross = iscross;
	}

}