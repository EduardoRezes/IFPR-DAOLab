package testes;

import java.util.List;

import dao.DaoFactory;
import dao.SellerDao;
import models.Department;
import models.Seller;

public class TestesConexaoDao {

	public static void main(String[] args) {
		System.out.println("=============== Teste 1 ==================");
		SellerDao dao = DaoFactory.createSellerDAO();
		Seller seller = dao.findById(1);
		
		System.out.println(seller);
		
		System.out.println("=============== Teste 2 ==================");
		List<Seller> sellers = dao.findByDeparment(new Department(1 , null));
		for (Seller s : sellers) {
			System.out.println(s);
		}
	}
}
