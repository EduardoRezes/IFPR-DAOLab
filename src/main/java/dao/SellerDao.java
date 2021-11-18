package dao;

import java.util.List;

import models.Department;
import models.Seller;

public interface SellerDao {
	
	public void insert(Seller seller);
	
	public void update(Seller seller);
	
	public void deleteById(Integer id);
	
	public Seller findById(Integer id);
	
	public Seller findAll();
	
	public List<Seller> findByDeparment(Department dep);
	
}
