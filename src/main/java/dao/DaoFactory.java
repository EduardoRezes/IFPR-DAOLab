package dao;

import connection.ConnectionFactory;

public class DaoFactory {
	public static SellerDao createSellerDAO() {
		SellerDao dao = new SellerDaoJDBC(ConnectionFactory.getConnection());
		return dao;
	}
}
