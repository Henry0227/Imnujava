package cn.book.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import cn.book.model.Progenitor;
import cn.book.model.Users;
import cn.book.service.ProgenitorService;
import cn.book.service.UserService;

import cn.book.util.IPTimeStamp;
import com.opensymphony.xwork2.ActionSupport;

public class ProgenitorAction extends ActionSupport {
	private Progenitor progenitor;
	private ProgenitorService progenitorService;
	private UserService userService;
	private int tag;
	private String pic;
	private File file; // File对象
	private String fileFileName; // 获取上传文件名
	
	

	@Override
	public String execute() throws Exception {
		Users user=(Users) ServletActionContext.getRequest().getSession().getAttribute("USER");
		if(null==user){
			this.tag=7;
			return "doresult";
		}else{
			if(!this.progenitorService.valiUser(user)){
				this.tag=6;
				return "doresult";
			}
		}
		progenitor=null;
		return SUCCESS;
	}
	
	public String valiPerson() throws Exception{
		Users user=(Users) ServletActionContext.getRequest().getSession().getAttribute("USER");
		if(null==user){
			this.tag=7;
			return "doresult";
		}else{
			if(this.progenitorService.valiUser(user)){
				this.tag=9;
				return "doresult";
			}
		}
		ServletActionContext.getRequest().setAttribute("user", user);
		return "center";
	}
	/*
	 * 注册为原创作者
	 */
	public String register() throws Exception {
		Users user=(Users) ServletActionContext.getRequest().getSession().getAttribute("USER");
		System.out.println("当前用户："+user.getUsername());
		if(null==user){
			this.tag=4;
		}else{
			if(this.progenitorService.valiUser(user)){
				// 取得后缀名
				String hou = "";
				// 从项目根路径里取得upload文件夹的全路径
				String root = ServletActionContext.getRequest().getRealPath("/upload");
				System.out.println("fileFileName:"+this.fileFileName);
				// 判断file不为空的时候执行文件的上传
				if (this.file != null &&!"".equals(this.fileFileName)) {
					   

					// 当文件名不为空时取得后缀
					if (this.fileFileName != null|| this.fileFileName.indexOf(".") != -1) {
						hou = this.fileFileName.substring(
								this.fileFileName.lastIndexOf(".") + 1).trim()
								.toLowerCase();
					}

					// 获取request对象
					HttpServletRequest request = ServletActionContext.getRequest();

					// 创建随机数辅助类对象，并传当前IP参数
					IPTimeStamp ip = new IPTimeStamp(request.getRemoteAddr());
					// 组合文件名
					this.fileFileName = ip.getIPTimeStampRand() + "." + hou;

					// 根据上传文件创建输入流
					InputStream is = new FileInputStream(file);
					File destFile = new File(root, fileFileName);
					OutputStream os = new FileOutputStream(destFile);
					byte[] buffer = new byte[1024];
					int length = 0;
					while (-1 != (length = is.read(buffer))) {
						os.write(buffer, 0, length);
					}
					os.close();
					is.close();
					// 不为空的时候set为当前图片
					progenitor.setPhoto("upload/"+fileFileName);
					System.out.println("图片名称为："+fileFileName);
				} else {
					// 为空的时候set为默认图片
					progenitor.setPhoto(pic);
				}
				

				progenitor.setUsers(user);
				this.progenitorService.register(progenitor);
				
				
				this.tag=5;
			}else{
				this.tag=6;
			}
		}
		return "doresult";
	}
	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

	public String getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}

	public Progenitor getProgenitor() {
		return progenitor;
	}
	public void setProgenitor(Progenitor progenitor) {
		this.progenitor = progenitor;
	}
	public ProgenitorService getProgenitorService() {
		return progenitorService;
	}
	public void setProgenitorService(ProgenitorService progenitorService) {
		this.progenitorService = progenitorService;
	}

	public int getTag() {
		return tag;
	}

	public void setTag(int tag) {
		this.tag = tag;
	}
	
	public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	

	

}
