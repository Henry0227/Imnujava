package cn.book.model;

/**
 * Progenitor entity. @author MyEclipse Persistence Tools
 */

public class Progenitor implements java.io.Serializable {

	// Fields

	private Integer id;
	private Users users;
	private String penname;
	private Integer sex;
	private String photo;
	private String personInfo;
	private String sayshow;
	private Integer phone;
	private String email;
	private Integer qq;
	private String address;

	// Constructors

	/** default constructor */
	public Progenitor() {
	}

	/** minimal constructor */
	public Progenitor(Users users, String penname, Integer sex, Integer phone,
			String email) {
		this.users = users;
		this.penname = penname;
		this.sex = sex;
		this.phone = phone;
		this.email = email;
	}

	/** full constructor */
	public Progenitor(Users users, String penname, Integer sex, String photo,
			String personInfo, String sayshow, Integer phone, String email,
			Integer qq, String address) {
		this.users = users;
		this.penname = penname;
		this.sex = sex;
		this.photo = photo;
		this.personInfo = personInfo;
		this.sayshow = sayshow;
		this.phone = phone;
		this.email = email;
		this.qq = qq;
		this.address = address;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Users getUsers() {
		return this.users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public String getPenname() {
		return this.penname;
	}

	public void setPenname(String penname) {
		this.penname = penname;
	}

	public Integer getSex() {
		return this.sex;
	}

	public void setSex(Integer sex) {
		this.sex = sex;
	}

	public String getPhoto() {
		return this.photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getPersonInfo() {
		return this.personInfo;
	}

	public void setPersonInfo(String personInfo) {
		this.personInfo = personInfo;
	}

	public String getSayshow() {
		return this.sayshow;
	}

	public void setSayshow(String sayshow) {
		this.sayshow = sayshow;
	}

	public Integer getPhone() {
		return this.phone;
	}

	public void setPhone(Integer phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Integer getQq() {
		return this.qq;
	}

	public void setQq(Integer qq) {
		this.qq = qq;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

}