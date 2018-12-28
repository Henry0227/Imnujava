package cn.book.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Literature entity. @author MyEclipse Persistence Tools
 */

public class Literature implements java.io.Serializable {

	// Fields

	private Integer id;
	private String literature;
	private Integer parent;
	private Set books = new HashSet(0);

	// Constructors

	/** default constructor */
	public Literature() {
	}

	/** minimal constructor */
	public Literature(String literature, Integer parent) {
		this.literature = literature;
		this.parent = parent;
	}

	/** full constructor */
	public Literature(String literature, Integer parent, Set books) {
		this.literature = literature;
		this.parent = parent;
		this.books = books;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getLiterature() {
		return this.literature;
	}

	public void setLiterature(String literature) {
		this.literature = literature;
	}

	public Integer getParent() {
		return this.parent;
	}

	public void setParent(Integer parent) {
		this.parent = parent;
	}

	public Set getBooks() {
		return this.books;
	}

	public void setBooks(Set books) {
		this.books = books;
	}

}