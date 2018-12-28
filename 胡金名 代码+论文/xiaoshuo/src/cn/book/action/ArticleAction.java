package cn.book.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import cn.book.model.Article;
import cn.book.model.Book;
import cn.book.model.Users;
import cn.book.service.ArticleService;
import cn.book.service.BookService;
import cn.book.util.IPTimeStamp;

import com.opensymphony.xwork2.ActionSupport;

public class ArticleAction extends ActionSupport {
	private Article article;
	private Book book;
	private ArticleService articleService;
	private BookService bookService;
	private List<Article> articlelist = new ArrayList<Article>();
	private int pageSize;
	private int pageNum;
	private int bookid;
	private String bookname;
	private String booksayshow;
	private List readlist=new ArrayList();
	private int tag;
	private File file;
	private String fileFileName;
	
	/*
	 * 添加章节内容，并上传txt文本文件
	 */
	public String addArticle()throws Exception{
		String hou = "";
		// 从项目根路径里取得upload文件夹的全路径
		String root = ServletActionContext.getRequest().getRealPath("/articleFile");

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
			// 设置路径
			article.setUrl("articleFile/"+fileFileName);
		} 
		article.setBook(bookService.findBookById(bookid));
		article.setIscross(1);
		article.setProgenitor(1);
		article.setVip(1);
		this.articleService.saveOne(article);
		this.tag=4;
		
		return "doresult";
	}
	
	
	public String cross()throws Exception{
		System.out.println("ID是："+article.getId());
		this.articleService.updateCross(article.getId());
		articlelist = this.articleService.findArticleById(bookid, 10,
				1);
		return "show";
	}
	
	public String valiUser()throws Exception{
		article=this.articleService.findOne(article.getId());
		Users user=(Users) ServletActionContext.getRequest().getSession().getAttribute("USER");
		if(null==user){
			this.tag=1;
			return "doresult";
		}
		if(user.getVip()==0){
			if(article.getVip()==1){
				this.tag=3;
				return "doresult";
			}			
		}
		return "read";
	}




	

	@Override
	public String execute() throws Exception {
		articlelist = this.articleService.findArticleById(bookid, pageSize,
				pageNum);
		book=this.bookService.findBookById(bookid);
		return SUCCESS;
	}
	
	public String beforeList() throws Exception {
		articlelist = this.articleService.findArticleById(bookid, pageSize,
				pageNum);
		return "before";
	}
	
	public String findAllByBookId() throws Exception {
		articlelist = this.articleService.findArticleById2(bookid, pageSize, pageNum);
		return "show";
	}
	
	

	public int getTag() {
		return tag;
	}

	public void setTag(int tag) {
		this.tag = tag;
	}

	public Article getArticle() {
		return article;
	}

	public void setArticle(Article article) {
		this.article = article;
	}

	public ArticleService getArticleService() {
		return articleService;
	}

	public void setArticleService(ArticleService articleService) {
		this.articleService = articleService;
	}

	public List<Article> getArticlelist() {
		return articlelist;
	}

	public void setArticlelist(List<Article> articlelist) {
		this.articlelist = articlelist;
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

	public int getBookid() {
		return bookid;
	}

	public void setBookid(int bookid) {
		this.bookid = bookid;
	}

	public String getBookname() {
		try {
			bookname=new String(bookname.getBytes("ISO-8859-1"));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return bookname;
	}

	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	
	public String getBooksayshow() {
		return booksayshow;
	}

	public void setBooksayshow(String booksayshow) {
		this.booksayshow = booksayshow;
	}
	
	public List getReadlist() {
		return readlist;
	}



	public void setReadlist(List readlist) {
		this.readlist = readlist;
	}

	public BookService getBookService() {
		return bookService;
	}

	public void setBookService(BookService bookService) {
		this.bookService = bookService;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
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
	
	
	

}
