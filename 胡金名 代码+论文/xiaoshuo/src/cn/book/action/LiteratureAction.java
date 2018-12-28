package cn.book.action;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import cn.book.model.Literature;
import cn.book.service.LiteratureService;

import com.opensymphony.xwork2.ActionSupport;

public class LiteratureAction extends ActionSupport {
	private Literature literature;
	private LiteratureService literatureService;
	private List<Literature> lilist=new ArrayList<Literature>();
	private int parentid;
	
	
	public String findAll() throws Exception {
		lilist=this.literatureService.findAll();
		ServletActionContext.getRequest().setAttribute("lilist", lilist);
		return SUCCESS;
	}
	@Override
	public String execute() throws Exception {
		lilist=this.literatureService.findAll(0);
		ServletActionContext.getRequest().setAttribute("lilist", lilist);
		return SUCCESS;
	}
	
	public String execute2() throws Exception {
		lilist=this.literatureService.findAll(1);
		ServletActionContext.getRequest().setAttribute("lilist", lilist);
		return SUCCESS;
	}
	
	public String execute3() throws Exception {
		lilist=this.literatureService.findAll(2);
		ServletActionContext.getRequest().setAttribute("lilist", lilist);
		return SUCCESS;
	}
	
	
	public String execute4() throws Exception {
		lilist=this.literatureService.findAll(3);
		ServletActionContext.getRequest().setAttribute("lilist", lilist);
		return SUCCESS;
	}
	
	public String execute5() throws Exception {
		lilist=this.literatureService.findAll(4);
		ServletActionContext.getRequest().setAttribute("lilist", lilist);
		return SUCCESS;
	}
	
	public Literature getLiterature() {
		return literature;
	}
	public void setLiterature(Literature literature) {
		this.literature = literature;
	}
	public LiteratureService getLiteratureService() {
		return literatureService;
	}
	public void setLiteratureService(LiteratureService literatureService) {
		this.literatureService = literatureService;
	}
	public List<Literature> getLilist() {
		return lilist;
	}
	public void setLilist(List<Literature> lilist) {
		this.lilist = lilist;
	}
	
	public int getParentid() {
		return parentid;
	}

	public void setParentid(int parentid) {
		this.parentid = parentid;
	}
	
	
	

}
