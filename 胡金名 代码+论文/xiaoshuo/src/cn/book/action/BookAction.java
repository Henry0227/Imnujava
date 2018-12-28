package cn.book.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import cn.book.model.Book;
import cn.book.model.Users;
import cn.book.service.BookService;
import cn.book.service.LiteratureService;

import cn.book.util.IPTimeStamp;
import com.opensymphony.xwork2.ActionSupport;

public class BookAction extends ActionSupport implements SessionAware {
	private Book book;
	private BookService bookService;
	private LiteratureService literatureService;
	private List<Book> booklist = new ArrayList<Book>();
	private List<Book> bookShige = new ArrayList<Book>();
	private List<Book> bookSanwen = new ArrayList<Book>();
	private List<Book> bookXiaoshuo = new ArrayList<Book>();
	private List<Book> bookXiju = new ArrayList<Book>();
	private List<Book> bookQita = new ArrayList<Book>();
	private int tag;
	private Map<String, Object> session;
	private int pageSize;
	private int pageNum;
	private int allpage;
	private String condition;
	private int userid;
	private int literatureid;
	private File file; // File对象
	private String fileFileName; // 获取上传文件名

	public String addBook() throws Exception {
		System.out.println("类型："+literatureid);
		Users user = (Users) session.get("USER");
		book.setUsers(user);
		book.setAuthor(user.getUsername());
		book.setLiterature(literatureService.findOne(literatureid));
		book.setType(literatureService.findOne(literatureid).getLiterature());
		book.setVip(0);
		book.setProgenitor(1);
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String maketime = sdf.format(date);
		book.setMaketime(maketime);
		
		System.out.println("FIle值为：" + this.file);
		// 取得后缀名
		String hou = "";
		// 从项目根路径里取得upload文件夹的全路径
		String root = ServletActionContext.getRequest().getRealPath("/upload");

		// 判断file不为空的时候执行文件的上传
		if (this.file != null && this.fileFileName != "") {

			// 当文件名不为空时取得后缀
			if (this.fileFileName != null
					|| this.fileFileName.indexOf(".") != -1) {
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
			book.setPicture("upload/"+fileFileName);
		} 
		this.bookService.saveBook(book);
		this.tag=10;

		return "doresult";
	}
	
	public String addBook_0() throws Exception {
		System.out.println("类型："+literatureid);
		Users user = (Users) session.get("USER");
		book.setUsers(user);
		book.setAuthor(user.getUsername());
		book.setLiterature(literatureService.findOne(literatureid));
		book.setType(literatureService.findOne(literatureid).getLiterature());
		book.setVip(0);
		book.setProgenitor(1);
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String maketime = sdf.format(date);
		book.setMaketime(maketime);
		
		System.out.println("FIle值为：" + this.file);
		// 取得后缀名
		String hou = "";
		// 从项目根路径里取得upload文件夹的全路径
		String root = ServletActionContext.getRequest().getRealPath("/upload");

		// 判断file不为空的时候执行文件的上传
		if (this.file != null && this.fileFileName != "") {

			// 当文件名不为空时取得后缀
			if (this.fileFileName != null
					|| this.fileFileName.indexOf(".") != -1) {
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
			book.setPicture("upload/"+fileFileName);
		} 
		this.bookService.saveBook(book);
		this.tag=10;

		return "doresult";
	}
	
	/*
	 * 我的书籍
	 */
	public String mybook2()throws Exception{
		Users user=(Users)session.get("USER");
		System.out.println("用户ID："+user.getId());
		booklist=this.bookService.myBook(user.getId());
		ServletActionContext.getRequest().setAttribute("booklist", booklist);
		return "mybook2";
	}

	public String search() throws Exception {
		booklist = this.bookService.searchBook(condition);
		return "search";
	}

	public String beforSearch() throws Exception {
		System.out.println("条件是：" + condition);
		booklist = this.bookService.searchBook(condition);
		return "beforsearch";
	}

	public String myBook() throws Exception {
		booklist = this.bookService.myBook(userid);
		return "mybook";
	}

	@Override
	public String execute() throws Exception {
		booklist = this.bookService.findBookAll(4, 1);
		ServletActionContext.getRequest().setAttribute("booklist", booklist);
		return SUCCESS;
	}

	public String findAll() throws Exception {
		booklist = this.bookService.findBookAll(pageSize, pageNum);
		return "show";
	}

	/*
	 * 前台上一页
	 */
	public String findUp2() throws Exception {
		if (pageNum < 1) {
			pageNum = 1;
		} else {
			pageNum--;
		}
		booklist = this.bookService.findBookAll(pageSize, pageNum);
		return "beforeshow";
	}

	/*
	 * 前台下一页
	 */
	public String findDown2() throws Exception {
		if (this.bookService.findBookAll(pageSize, pageNum).size() < pageSize) {
			pageNum = pageNum;
		} else {
			pageNum++;
		}
		booklist = this.bookService.findBookAll(pageSize, pageNum);
		return "beforeshow";
	}

	/*
	 * 后台上一页
	 */
	public String findUp() throws Exception {
		if (pageNum < 1) {
			pageNum = 1;
		} else {
			pageNum--;
		}
		booklist = this.bookService.findBookAll(pageSize, pageNum);
		return "show";
	}

	/*
	 * 后台下一页
	 */
	public String findDown() throws Exception {
		if (this.bookService.findBookAll(pageSize, pageNum).size() < pageSize) {
			pageNum = pageNum;
		} else {
			pageNum++;
		}
		booklist = this.bookService.findBookAll(pageSize, pageNum);
		return "show";
	}
	
	public String deleteBook()throws Exception{
		this.bookService.deleteBook(book);
		this.tag=11;
		return "doresult";
	}
	
	/*
	 * 查找vip书籍
	 */
	public String showVipBook() throws Exception {
		booklist = this.bookService.findVipBookAll(pageSize, pageNum, 1);
		return "showvip";
	}
	
	/*
	 * 前台VIP上一页
	 */
	public String findVipUp2() throws Exception {
		if (pageNum < 1) {
			pageNum = 1;
		} else {
			pageNum--;
		}
		booklist = this.bookService.findVipBookAll(pageSize, pageNum, 1);
		return "showvip";
	}

	/*
	 * 前台VIP下一页
	 */
	public String findVipDown2() throws Exception {
		if (this.bookService.findVipBookAll(pageSize, pageNum, 1).size() < pageSize) {
			pageNum = pageNum;
		} else {
			pageNum++;
		}
		booklist = this.bookService.findVipBookAll(pageSize, pageNum, 1);
		return "showvip";
	}
	
	/*
	 * 查找vip书籍
	 */
	public String showProBook() throws Exception {
		booklist = this.bookService.findProBookAll(pageSize, pageNum, 1);
		return "showpro";
	}
	
	/*
	 * 前台VIP上一页
	 */
	public String findProUp2() throws Exception {
		if (pageNum < 1) {
			pageNum = 1;
		} else {
			pageNum--;
		}
		booklist = this.bookService.findProBookAll(pageSize, pageNum, 1);
		return "showpro";
	}

	/*
	 * 前台VIP下一页
	 */
	public String findProDown2() throws Exception {
		if (this.bookService.findProBookAll(pageSize, pageNum, 1).size() < pageSize) {
			pageNum = pageNum;
		} else {
			pageNum++;
		}
		booklist = this.bookService.findProBookAll(pageSize, pageNum, 1);
		return "showpro";
	}
	
	/*
	 * 热门分类
	 */
	public String typeShige() throws Exception {
		bookShige = this.bookService.findLitBookAll(3, 1, 0);
		ServletActionContext.getRequest().setAttribute("bookShige", bookShige);
		return SUCCESS;
	}
	
	public String typeSanwen() throws Exception {
		bookSanwen = this.bookService.findLitBookAll(3, 1, 1);
		ServletActionContext.getRequest().setAttribute("bookSanwen", bookSanwen);
		return SUCCESS;
	}
	
	public String typeXiaoshuo() throws Exception {
		bookXiaoshuo = this.bookService.findLitBookAll(3, 1, 2);
		ServletActionContext.getRequest().setAttribute("bookXiaoshuo", bookXiaoshuo);
		return SUCCESS;
	}
	
	public String typeXiju() throws Exception {
		bookXiju = this.bookService.findLitBookAll(3, 1, 3);
		ServletActionContext.getRequest().setAttribute("bookXiju", bookXiju);
		return SUCCESS;
	}
	
	public String typeQita() throws Exception {
		bookQita = this.bookService.findLitBookAll(3, 1, 4);
		ServletActionContext.getRequest().setAttribute("bookQita", bookQita);
		return SUCCESS;
	}
	

	/*
	 * 所有页数
	 */
	public int getAllpage() {
		return this.bookService.allNum() / pageSize == 0 ? 1 : this.bookService
				.allNum()
				/ pageSize + 1;
	}
    
	public int getLiteratureid() {
		return literatureid;
	}

	public void setLiteratureid(int literatureid) {
		this.literatureid = literatureid;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	public BookService getBookService() {
		return bookService;
	}

	public void setBookService(BookService bookService) {
		this.bookService = bookService;
	}

	public List<Book> getBooklist() {
		return booklist;
	}

	public void setBooklist(List<Book> booklist) {
		this.booklist = booklist;
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

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getPageNum() {
		return pageNum;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
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

	public LiteratureService getLiteratureService() {
		return literatureService;
	}

	public void setLiteratureService(LiteratureService literatureService) {
		this.literatureService = literatureService;
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

	public List<Book> getBookShige() {
		return bookShige;
	}

	public void setBookShige(List<Book> bookShige) {
		this.bookShige = bookShige;
	}

	public List<Book> getBookSanwen() {
		return bookSanwen;
	}

	public void setBookSanwen(List<Book> bookSanwen) {
		this.bookSanwen = bookSanwen;
	}

	public List<Book> getBookXiaoshuo() {
		return bookXiaoshuo;
	}

	public void setBookXiaoshuo(List<Book> bookXiaoshuo) {
		this.bookXiaoshuo = bookXiaoshuo;
	}

	public List<Book> getBookXiju() {
		return bookXiju;
	}

	public void setBookXiju(List<Book> bookXiju) {
		this.bookXiju = bookXiju;
	}

	public List<Book> getBookQita() {
		return bookQita;
	}

	public void setBookQita(List<Book> bookQita) {
		this.bookQita = bookQita;
	}
	

}
