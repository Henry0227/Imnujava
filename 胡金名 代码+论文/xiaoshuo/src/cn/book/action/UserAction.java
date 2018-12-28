package cn.book.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import cn.book.model.Users;
import cn.book.service.UserService;

import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport implements SessionAware {
	private Users user;
	private UserService userService;
	private List<Users> userlist = new ArrayList<Users>();
	private Map<String, Object> session;
	private int pageAll;
	private int pageSize;
	private int pageNum;
	private String action;
	private String message;
	private int tag;
	private int vip;
	private String code;
	private int allpage;
	private int allcount;
	private String condition;
	private String type;


	
    /*
     * 用户注册
     */
	public String register()throws Exception{
		System.out.println("username:"+user.getUsername());
		System.out.println("IS:"+userService.valiUserByName(user.getUsername()));
		boolean is=this.userService.valiUserByName(user.getUsername());
		if(is){
			if(1==this.vip){
				user.setVip(1);
				
				this.tag=0;
			}else{
				user.setVip(0);
				this.tag=1;
			}
			user.setProgenitor(0);
			this.userService.register(user);
		}else{
			this.tag=17;
		}
		
		
		return "doresult";
	}
	/*
	 * 用户升级vip用户
	 */
	public String devVip()throws Exception{
		if(vip==1){
			user=this.userService.findOne(user);
			user.setVip(1);
			this.userService.devVIp(user);
			
			this.tag=13;
		}else{
			this.tag=16;
		}
		return "doresult";
	}
	/*
	 * 用户登录
	 */
	public String login() throws Exception{
		if(code.equals(session.get("rand").toString())){
			
			if(this.userService.login(user)!=null){
				session.put("USER",this.userService.login(user));
				this.tag=3;     //登录成功
			}
		}else{
			this.tag=4;
		}
		return "doresult";
	}
	
	/*
	 * 退出系统
	 */
	public String exit()throws Exception{
		user=(Users) session.get("USER");
		if(null==user){
			this.tag=7;
			return "doresult";
		}
		ServletActionContext.getRequest().getSession().invalidate();
		return SUCCESS;
	}
	
	/*
	 * 分页
	 */
	public String showAll()throws Exception{
		userlist=this.userService.findAll(condition, pageSize, pageNum,type);
		return "show";
	}
	
	public String findUp() throws Exception{
		if(pageNum<1){
			pageNum=1;
		}else{
			pageNum--;
		}
		userlist=this.userService.findAll(condition, pageSize, pageNum, type);
		
		return "show";
	}
	
	public String findDown() throws Exception{
		if(this.userService.findAll(condition, pageSize, pageNum, type).size()<pageSize){
			pageNum=pageNum;
		}else{
			pageNum++;
		}
		userlist=this.userService.findAll(condition, pageSize, pageNum, type);
		
		return "show";
	}
	
	/*
	 * 删除用户
	 */
	public String deleteOne() throws Exception{
		this.userService.deleteUser(user);
		userlist=this.userService.findAll(condition, pageSize, pageNum, type);
		return "show";
	}
	
	/*
	 * 修改用户信息
	 */
	public String updateOne() throws Exception{
		this.userService.update(user);
		userlist=this.userService.findAll(condition, pageSize, pageNum, type);
		return "show";
	}
	
	
	/*
	 * 查找该用户
	 */
	public String findOne() throws Exception{
		user=this.userService.findOne(user);
		return "one";
	}


    /*
     * set和get方法
     */
	public String getAction() {
		return action;
	}

	public void setAction(String action) {
		this.action = action;
	}

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public List<Users> getUserlist() {
		return userlist;
	}

	public void setUserlist(List<Users> userlist) {
		this.userlist = userlist;
	}

	public int getPageAll() {
		return pageAll;
	}

	public void setPageAll(int pageAll) {
		this.pageAll = pageAll;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	
	public int getTag() {
		return tag;
	}
	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public void setTag(int tag) {
		this.tag = tag;
	}


	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	
	

	public int getVip() {
		return vip;
	}
	public void setVip(int vip) {
		this.vip = vip;
	}
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getCondition() {
		return condition;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}

	public int getAllpage() {
		return this.getAllcount()/pageSize==0?1:this.getAllcount()/pageSize+1;
	}

	public int getAllcount() {
		return this.userService.getCount(condition,type);
	}
	

}
