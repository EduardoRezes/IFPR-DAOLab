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
@WebServlet("/departmentUpdate")
public class DepartUpdateServlet extends HttpServlet {

	DepartmentDao dao = DaoFactory.createDepartmentDao();
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Integer idUpdateParam = Integer.parseInt(req.getParameter("IdUpdate"));
		String nameUpdateParam = req.getParameter("nameUpdate");
		
		Department d1 = new Department();
		d1.setId(idUpdateParam);
		d1.setName(nameUpdateParam);
		dao.update(d1);

		RequestDispatcher disp = req.getRequestDispatcher("department.jsp");
		
		disp.forward(req, resp);
	}
}			