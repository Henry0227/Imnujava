package cn.book.model;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * Users entity. @author MyEclipse Persistence Tools
 */

public class Users implements java.io.Serializable {

	// Fields

	private Integer id;
	private String username;
	private String password;
	private Integer vip;
	private Integer progenitor;
	private Integer sex;
	private String email;
	private Timestamp birth;
	private Set bookmarks = new HashSet(0);
	private Set books = new HashSet(0);
	private Set progenitors = new HashSet(0);

	// Constructors

	/** default constructor */
	public Users() {
	}

	/** minimal constructor */
	public Users(String username, String password) {
		this.username = username;
		this.password = password;
	}

	/** full constructor */
	public Users(String username, String password, Integer vip,
			Integer progenitor, Integer sex, String email, Timestamp birth,
			Set bookmarks, Set books, Set progenitors) {
		this.username = username;
		this.password = password;
		this.vip = vip;
		this.progenitor = progenitor;
		this.sex = sex;
		this.email = email;
		this.birth = birth;
		this.bookmarks = bookmarks;
		this.books = books;
		this.progenitors = progenitors;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getVip() {
		return this.vip;
	}

	public void setVip(Integer vip) {
		this.vip = vip;
	}

	public Integer getProgenitor() {
		return this.progenitor;
	}

	public void setProgenitor(Integer progenitor) {
		this.progenitor = progenitor;
	}

	public Integer getSex() {
		return this.sex;
	}

	public void setSex(Integer sex) {
		this.sex = sex;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Timestamp getBirth() {
		return this.birth;
	}

	public void setBirth(Timestamp birth) {
		this.birth = birth;
	}

	public Set getBookmarks() {
		return this.bookmarks;
	}

	public void setBookmarks(Set bookmarks) {
		this.bookmarks = bookmarks;
	}

	public Set getBooks() {
		return this.books;
	}

	public void setBooks(Set books) {
		this.books = books;
	}

	public Set getProgenitors() {
		return this.progenitors;
	}

	public void setProgenitors(Set progenitors) {
		this.progenitors = progenitors;
	}

}