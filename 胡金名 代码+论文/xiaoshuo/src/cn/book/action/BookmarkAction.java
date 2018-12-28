package cn.book.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import cn.book.model.Bookmark;
import cn.book.model.Users;
import cn.book.service.BookmarkService;

import com.opensymphony.xwork2.ActionSupport;

public class BookmarkAction extends ActionSupport implements SessionAware {
	private Bookmark bookmark;
	private BookmarkService bookmarkService;
	private List<Bookmark> marklist = new ArrayList<Bookmark>();
	private Map<String, Object> session;
	private int bookid;
	private int tag;
	
	
	
	

	@Override
	public String execute() throws Exception {
		Users user=(Users) session.get("USER");
		if(user==null){
			this.tag=1;
			return "doresult";
		}
		marklist=this.bookmarkService.findMark(user.getId());
		return "show";
	}
	
	public String addmark() throws Exception{
		Users user=(Users) session.get("USER");
		bookmark.setUsers(user);
		bookmark.setBook(this.bookmarkService.findBook(bookid));
		this.bookmarkService.addMark(bookmark);
		this.tag=0;
		return "doresult";
	}
	
	public String deleteOne() throws Exception{
		this.bookmarkService.deleteOne(bookmark.getId());
		this.tag=2;
		return "doresult";
	}
	

	public Bookmark getBookmark() {
		return bookmark;
	}

	public void setBookmark(Bookmark bookmark) {
		this.bookmark = bookmark;
	}

	public BookmarkService getBookmarkService() {
		return bookmarkService;
	}

	public void setBookmarkService(BookmarkService bookmarkService) {
		this.bookmarkService = bookmarkService;
	}

	public List<Bookmark> getMarklist() {
		return marklist;
	}

	public void setMarklist(List<Bookmark> marklist) {
		this.marklist = marklist;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;

	}
	
	public int getBookid() {
		return bookid;
	}

	public void setBookid(int bookid) {
		this.bookid = bookid;
	}
	
	public int getTag() {
		return tag;
	}

	public void setTag(int tag) {
		this.tag = tag;
	}


}
