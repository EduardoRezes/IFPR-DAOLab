package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DaoFactory;
import dao.DepartmentDao;
import models.Department;

@WebServlet("/departmentFindAll")
public class DepartFindAllServlet extends HttpServlet{

	DepartmentDao dao = DaoFactory.createDepartmentDao();
	private static final long serialVersionUID = 1L;
	private List<Department> depart = new ArrayList<Department>();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String list = req.getParameter("idFindAll");
		if(list.equals("List-all")) {
			depart = dao.findAll();
			req.setAttribute("listDepartAttr", depart);

			RequestDispatcher disp = req.getRequestDispatcher("listAllDepartments.jsp");
			
			disp.forward(req, resp);
		}		
	}
}
