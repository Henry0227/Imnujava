package cn.book.interceptor;

import java.util.Map;

import cn.book.model.Admin;
import cn.book.model.Users;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class AuthorityInterceptor extends AbstractInterceptor {
	private static final long serialVersionUID = 1L;

	public String intercept(ActionInvocation invocation) throws Exception {
		ActionContext ctx = invocation.getInvocationContext();
		Map session = ctx.getSession();
		Admin admin=(Admin) session.get("ADMIN");
		
		
		
		if (admin != null) {
			return invocation.invoke();
		}
		return Action.LOGIN;
	}
} 
