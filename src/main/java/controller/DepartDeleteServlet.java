package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DaoFactory;
import dao.DepartmentDao;

@WebServlet("/departmentDelete")
public class DepartDeleteServlet extends HttpServlet{
	
	DepartmentDao dao = DaoFactory.createDepartmentDao();
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Integer id = Integer.parseInt(req.getParameter("IdDelete"));
		dao.deleteById(id);
	
		RequestDispatcher disp = req.getRequestDispatcher("department.jsp");
			
		disp.forward(req, resp);			
	}
}
