package controller;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DaoFactory;
import dao.DepartmentDao;
import dao.SellerDao;
import models.Department;
import models.Seller;

@WebServlet("/sellerInsert")
public class SellerInsertServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	SellerDao dao = DaoFactory.createSellerDao();
	SimpleDateFormat dateformat = new SimpleDateFormat("dd/MM/yyyy");
	DepartmentDao dao1 = DaoFactory.createDepartmentDao();
		
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		String nameParam = req.getParameter("nameInsert");
		String emailParam = req.getParameter("emailInsert");
		String dateParam = req.getParameter("dateInsert");
		Double baseSalaryParam = Double.parseDouble(req.getParameter("SalaryInsert"));
		Integer departIdParam = Integer.parseInt(req.getParameter("DepartmentId"));
		
		Department d = new Department();
		d = dao1.findById(departIdParam);
		
		System.out.println(d.getId());
		
		Seller s = new Seller();
		s.setName(nameParam);
		s.setEmail(emailParam);
		s.setBirthdate(Date.valueOf(dateParam));
		s.setBaseSalary(baseSalaryParam);
		s.setDepartment(d);
		
		try {
			dao.insert(s);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		String msg = "Successfully Registration.";		
		req.setAttribute("msgInserSellertAttr",msg);
			
		RequestDispatcher disp = req.getRequestDispatcher("seller.jsp");
			
		disp.forward(req, resp);		
	}
}
