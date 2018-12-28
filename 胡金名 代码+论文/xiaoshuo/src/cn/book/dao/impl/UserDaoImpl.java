package cn.book.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.book.dao.UserDao;
import cn.book.model.Book;
import cn.book.model.Bookmark;
import cn.book.model.Discuss;
import cn.book.model.Progenitor;
import cn.book.model.Users;

public class UserDaoImpl extends HibernateDaoSupport implements UserDao {

	public Users login(Users user) {
		String hql="from Users user where user.username='"+user.getUsername()+"' and user.password='"+user.getPassword()+"'";
		List<Users> list=super.getHibernateTemplate().find(hql);
		Users loginUser=null;
		if(list.size()>0){
			loginUser=list.get(0);
		}
		return loginUser;
	}

	public void register(Users user) {
		super.getHibernateTemplate().save(user);
	}

	public Users upateUser(Users user) {
		super.getHibernateTemplate().update(user);
		user=super.getHibernateTemplate().get(Users.class, user.getId());
		return user;
		
		
	}

	public void devVIp(Users user) {
		super.getHibernateTemplate().update(user);
		
	}

	public List<Users> findAll(final String condition, final int pageSize, final int pageNum,final String type) {
			class find implements HibernateCallback{

				public Object doInHibernate(Session session)
						throws HibernateException, SQLException {
					List<Discuss> list=new ArrayList<Discuss> ();
					int size=pageSize*(pageNum-1);
					session.beginTransaction();
					StringBuffer sb=new StringBuffer();
					sb.append("from Users user where 1=1 ");
					if("vip".equals(type)){
						sb.append("and user.vip=1 ");
					}
					if("pro".equals(type)){
						sb.append(" and user.progenitor=1");
					}
					
					if(null!=condition&&"".equals(condition)){
						sb.append(" and user.username like :username ");
						
					}
					
					Query query=session.createQuery(sb.toString());
					if(null!=condition&&"".equals(condition)){
						
						query.setString("username", "%"+condition+"%");
					}
					
					query.setFirstResult(size);
					query.setMaxResults(pageSize);
					list=query.list();
					session.getTransaction().commit();
					
				
					return list;
				}
				
			}
			return super.getHibernateTemplate().executeFind(new find());
	}

	public int getCount(String condition,String type) {
		StringBuffer sb=new StringBuffer();
		sb.append("from Users user where 1=1 ");
		
		if("vip".equals(type)){
			sb.append("and user.vip=1 ");
		}
		if("pro".equals(type)){
			sb.append(" and user.progenitor=1");
		}
		if(null!=condition){
			sb.append(" and user.username like '%"+condition+"%'");
			
		}
	
		return super.getHibernateTemplate().find(sb.toString()).size();
	}

	public void deleteUser(Users user) {
		List<Book> booklist=super.getHibernateTemplate().find("from Book book where book.users.id="+user.getId());
		if(booklist.size()>0){
			Book book=booklist.get(0);
			book.setUsers(null);
			super.getHibernateTemplate().update(book);
		}
		List<Discuss> discusslist=super.getHibernateTemplate().find("from Discuss discuss where discuss.userid="+user.getId());
		if(discusslist.size()>0){
			super.getHibernateTemplate().deleteAll(discusslist);
		}
		List<Bookmark> bklist=super.getHibernateTemplate().find("from Bookmark bk where bk.users.id="+user.getId());
		if(bklist.size()>0){
			super.getHibernateTemplate().deleteAll(bklist);
		}
		List<Progenitor> prlist=super.getHibernateTemplate().find("from Progenitor pro where pro.users.id="+user.getId());
		if(prlist.size()>0){
			super.getHibernateTemplate().delete((Progenitor)prlist.get(0));
		}
		
		user=super.getHibernateTemplate().get(Users.class, user.getId());
		super.getHibernateTemplate().delete(user);
	}

	public void update(Users user) {
		super.getHibernateTemplate().update(user);
		
	}

	public Users findOne(Users user) {
		return super.getHibernateTemplate().get(Users.class, user.getId());
	}

	public boolean valiUserByName(String username) {
		System.out.println(username);
		List<Users> list=super.getHibernateTemplate().find("from Users user where user.username='"+username+"'");
		if(list.size()>0){
			return false;
		}
		return true;
	}

}
