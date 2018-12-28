package cn.book.util;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import org.hibernate.Query;
import org.hibernate.Session;



import cn.book.model.Users;

public class Login{
	public Users login(String username,String password){
		HibernateSessionFactory hsf=new HibernateSessionFactory();
		System.out.println("username:"+username);
		Users user=null;
			Session session=hsf.getSession();
			session.beginTransaction();
			String hql="from Users user where user.username='"+username+"' and user.password='"+password+"'";
			Query query=session.createQuery(hql);
			
			List<Users> list=query.list();
			session.getTransaction().commit();
			if(list.size()>0){
				
				user=list.get(0);
				ServletActionContext.getRequest().getSession().setAttribute("USER", user);
			}
			
		
		return user;
	}
	
	public Users valiLogin(int i){
		Users user=null;
		
		if(i==0){
			user=(Users) ServletActionContext.getRequest().getSession().getAttribute("USER");
		}
		return user;
		
	}




}
