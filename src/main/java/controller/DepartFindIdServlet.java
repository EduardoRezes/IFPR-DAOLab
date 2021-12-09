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
import models.Department;

@WebServlet("/departmentFindById")
public class DepartFindIdServlet extends HttpServlet{

	DepartmentDao dao = DaoFactory.createDepartmentDao();
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String id = req.getParameter("idFind");
		Department d3 = new Department();
		d3 = dao.findById(Integer.parseInt(id));

		req.setAttribute("departAttr", d3);
		
		RequestDispatcher disp = req.getRequestDispatcher("departmentFindById.jsp");
		
		disp.forward(req, resp);
	}
}
