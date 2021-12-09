package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DaoFactory;
import dao.SellerDao;
import models.Seller;

@WebServlet("/sellerFindById")
public class SellerFindByIdServlet extends HttpServlet{
	SellerDao dao = DaoFactory.createSellerDao();
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Integer id = Integer.parseInt(req.getParameter("idFindSeller"));
		Seller seller = dao.findById(id);
		
		req.setAttribute("sellertAttr", seller);

		RequestDispatcher disp = req.getRequestDispatcher("sellerFindById.jsp");
		
		disp.forward(req, resp);
	}
}