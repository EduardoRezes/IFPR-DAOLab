package controller;

import java.io.IOException;
import java.sql.Date;

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

@WebServlet("/sellerUpdate")
public class SellerUpdateServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;
	SellerDao dao = DaoFactory.createSellerDao();
	DepartmentDao dao1 = DaoFactory.createDepartmentDao();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Integer idParam = Integer.parseInt(req.getParameter("idUpdate"));
		String nameParam = req.getParameter("nameUpdate");
		String emailParam = req.getParameter("emailUpdate");
		String dateParam = req.getParameter("dataUpdate");
		Double baseSalaryParam = Double.parseDouble(req.getParameter("SalaryUpdate"));
		Integer departIdParam = Integer.parseInt(req.getParameter("DepartmentIdUpdate"));
		
		Department d1 = new Department();
		d1.setId(departIdParam);
		
		Seller s3 = new Seller();
		
		s3.setName(nameParam);
		s3.setEmail(emailParam);
		s3.setBirthdate(Date.valueOf(dateParam));
		s3.setBaseSalary(baseSalaryParam);
		s3.setDepartment(d1);
		s3.setId(idParam);
		
		dao.update(s3);
		
		String msg = "Successfully Update.";		
		req.setAttribute("msgUpdateSellertAttr",msg);
			
		RequestDispatcher disp = req.getRequestDispatcher("seller.jsp");
			
		disp.forward(req, resp);		
	}
}
