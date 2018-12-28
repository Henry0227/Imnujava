package cn.book.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import cn.book.model.Admin;
import cn.book.service.AdminService;

import com.opensymphony.xwork2.ActionSupport;

public class AdminAction extends ActionSupport implements SessionAware {
	private Admin admin;
	private List<Admin> adminlist = new ArrayList<Admin>();
	private AdminService adminService;
	private int tag;
	private Map<String, Object> session;
	private String code;
	private int pageSize;
	private int allpage;
	
	
	

	public int getAllpage() {
		System.out.println("ÊýÁ¿£º"+this.adminService.findNumAll());
		return this.adminService.findNumAll()/pageSize==0?1:this.adminService.findNumAll()/pageSize+1;
	}

	private int pageNum;
	private String condition;

	
	@Override
	public String execute() throws Exception {
		if(!code.equals(session.get("rand"))){
			tag=0;
			return "doresult";
		}
		admin = this.adminService.login(admin);
		if (null == admin) {
			
            tag=1;
			return "doresult";
		}
		session.put("ADMIN", admin);
		return SUCCESS;
		
	}
	
	public String test() throws Exception {
		
		return SUCCESS;
		
	}
	
	public String deleteAdmin() throws Exception{
		admin=(Admin) session.get("ADMIN");
		if(admin.getStatus()==0){
			this.tag=5;
			return "doresult";
		}
		this.adminService.deleteAdmin(admin);
		this.tag=2;
		return "doresult";
	}
	
	public String saveAdmin() throws Exception{
		this.adminService.saveAdmin(admin);
		this.tag=3;
		return "doresult";
	}
	
	public String updateAdmin() throws Exception{
		this.adminService.updateAdmin(admin);
		this.tag=4;
		return "doresult";
	}
	
	public String findAdmin() throws Exception{
		admin=(Admin) session.get("ADMIN");
		if(admin.getStatus()==0){
			this.tag=5;
			return "doresult";
		}
		admin=this.adminService.findAdminById(admin.getId());
		
		return "update";
	}
	
	public String findAll() throws Exception{
		adminlist=this.adminService.findAdminAll(pageSize, pageNum);
		
		return "showall";
	}
	
	public String findUp() throws Exception{
		if(pageNum<1){
			pageNum=1;
		}else{
			pageNum--;
		}
		adminlist=this.adminService.findAdminAll(pageSize, pageNum);
		
		return "showall";
	}
	
	public String findDown() throws Exception{
		if(this.adminService.findAdminAll(pageSize, pageNum).size()<pageSize){
			pageNum=pageNum;
		}else{
			pageNum++;
		}
		adminlist=this.adminService.findAdminAll(pageSize, pageNum);
		
		return "showall";
	}
	
	
	
	public String exit()throws Exception{
		ServletActionContext.getRequest().getSession().invalidate();
		return LOGIN;
	}

	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	public List<Admin> getAdminlist() {
		return adminlist;
	}

	public void setAdminlist(List<Admin> adminlist) {
		this.adminlist = adminlist;
	}

	public AdminService getAdminService() {
		return adminService;
	}

	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}

	public int getTag() {
		return tag;
	}

	public void setTag(int tag) {
		this.tag = tag;
	}

	public void setSession(Map session) {
		this.session = session;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
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
	
	public String getCondition() {
		return condition;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}


}
