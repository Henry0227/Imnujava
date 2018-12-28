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
	private File file; // File����
	private String fileFileName; // ��ȡ�ϴ��ļ���
	
	

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
	 * ע��Ϊԭ������
	 */
	public String register() throws Exception {
		Users user=(Users) ServletActionContext.getRequest().getSession().getAttribute("USER");
		System.out.println("��ǰ�û���"+user.getUsername());
		if(null==user){
			this.tag=4;
		}else{
			if(this.progenitorService.valiUser(user)){
				// ȡ�ú�׺��
				String hou = "";
				// ����Ŀ��·����ȡ��upload�ļ��е�ȫ·��
				String root = ServletActionContext.getRequest().getRealPath("/upload");
				System.out.println("fileFileName:"+this.fileFileName);
				// �ж�file��Ϊ�յ�ʱ��ִ���ļ����ϴ�
				if (this.file != null &&!"".equals(this.fileFileName)) {
					   

					// ���ļ�����Ϊ��ʱȡ�ú�׺
					if (this.fileFileName != null|| this.fileFileName.indexOf(".") != -1) {
						hou = this.fileFileName.substring(
								this.fileFileName.lastIndexOf(".") + 1).trim()
								.toLowerCase();
					}

					// ��ȡrequest����
					HttpServletRequest request = ServletActionContext.getRequest();

					// �����������������󣬲�����ǰIP����
					IPTimeStamp ip = new IPTimeStamp(request.getRemoteAddr());
					// ����ļ���
					this.fileFileName = ip.getIPTimeStampRand() + "." + hou;

					// �����ϴ��ļ�����������
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
					// ��Ϊ�յ�ʱ��setΪ��ǰͼƬ
					progenitor.setPhoto("upload/"+fileFileName);
					System.out.println("ͼƬ����Ϊ��"+fileFileName);
				} else {
					// Ϊ�յ�ʱ��setΪĬ��ͼƬ
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
