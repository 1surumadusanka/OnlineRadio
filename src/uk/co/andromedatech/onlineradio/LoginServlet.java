package uk.co.andromedatech.onlineradio;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import uk.co.andromedatech.onlineradio.model.User;
import uk.co.andromedatech.onlineradio.model.UserDAO;

public class LoginServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		//Try
		
		try{
			User user = new User();
			user.setUsername(req.getParameter("username"));
			user.setPassword(req.getParameter("password"));
			UserDAO.login(user);
			
			if(user.isValid()){
				HttpSession session = req.getSession(true);
				session.setAttribute("currentSessionUser", user);
				resp.sendRedirect("index.jsp");
			}else{
				resp.sendRedirect("LoginPage.jsp?error=Error has occured! Sign in error!");
			}
		}catch(Exception e){
			System.out.println(e);
		}
	}

}
