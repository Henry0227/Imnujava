package cn.book.model;

/**
 * Article entity. @author MyEclipse Persistence Tools
 */

public class Article implements java.io.Serializable {

	// Fields

	private Integer id;
	private Book book;
	private String title;
	private String content;
	private String url;
	private Integer vip;
	private Integer iscross;
	private Integer progenitor;

	// Constructors

	/** default constructor */
	public Article() {
	}

	/** minimal constructor */
	public Article(Book book, String title, String url) {
		this.book = book;
		this.title = title;
		this.url = url;
	}

	/** full constructor */
	public Article(Book book, String title, String content, String url,
			Integer vip, Integer iscross, Integer progenitor) {
		this.book = book;
		this.title = title;
		this.content = content;
		this.url = url;
		this.vip = vip;
		this.iscross = iscross;
		this.progenitor = progenitor;
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

	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Integer getVip() {
		return this.vip;
	}

	public void setVip(Integer vip) {
		this.vip = vip;
	}

	public Integer getIscross() {
		return this.iscross;
	}

	public void setIscross(Integer iscross) {
		this.iscross = iscross;
	}

	public Integer getProgenitor() {
		return this.progenitor;
	}

	public void setProgenitor(Integer progenitor) {
		this.progenitor = progenitor;
	}

}