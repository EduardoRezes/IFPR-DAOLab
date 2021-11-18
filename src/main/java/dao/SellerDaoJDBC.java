package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import connection.ConnectionFactory;
import exceptions.DatabaseException;
import models.Department;
import models.Seller;


/*As classes Dao JDC são responsaveis para fazer as consultas no banco*/
public class SellerDaoJDBC implements SellerDao {

	private Connection connection;
	
	public SellerDaoJDBC(Connection connection) {
		this.connection = connection;
	}
	
	@Override
	public void insert(Seller seller) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Seller seller) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteById(Integer id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Seller findById(Integer id) {
		//Prepara a consulta
		PreparedStatement statement = null;
		//Recebe tudo que vem da consulta
		ResultSet result = null;
		
		try {
			String sql = "SELECT seller.*,department.Name as DepName FROM seller INNER JOIN department ON seller.DepartmentId = department.Id WHERE seller.Id = ?";
			
			statement = connection.prepareStatement(sql);
			//Statement passando na query o id onde tem o ?
			statement.setInt(1, id);
			
			//Executando a consulta
			result = statement.executeQuery();
			
			//Percorre a tabela para popular os valores 
			while(result.next()) {
				
			}
			
		} catch (SQLException e) {
			throw new DatabaseException(e.getMessage());
		}finally {
			ConnectionFactory.closeStatement(statement);
		}
		
		return null;
	}

	@Override
	public Seller findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Seller> findByDeparment(Department dep) {
			PreparedStatement statement = null;
			ResultSet result = null;
			List<Seller> sellers = new ArrayList<>();
			
		try {
			String sql = "SELECT seller.*,department.Name as DepName FROM seller "
					+ "INNER JOIN department ON seller.DepartmentId department.Id WHERE DepartmentId = ? ORDER BY Name";
			
			statement = connection.prepareStatement(sql);
			
			statement.setInt(1, dep.getId());
			
			result = statement.executeQuery(sql);
			
			Map<Integer, Department> map = new HashMap<Integer, Department>();
			
			while(result.next()) {
				Department department = map.get(result.getInt("DepartmentId"));
				
				if(department == null) {
					department = creatDepartment(result);
					map.put(result.getInt("DepartmentId"), department);
				}	
					
					Seller seller = creatSeller(result, department);
					
					sellers.add(seller);
				}
		}catch(SQLException e){
			throw new DatabaseException(e.getMessage());
		}
		
		return null;
	}
	
	private Department creatDepartment(ResultSet result) throws SQLException {
		Department department = new Department();
		department.setId(result.getInt("DepartmentId"));
		department.setName(result.getString("DepName"));
		
		return department;
	}
	
	private Seller creatSeller(ResultSet result, Department department) throws SQLException {
		Seller seller = new Seller();
		
		//seller vai setar o id que veio do banco que é o result que está pegando ele pelo getInt passando o nome da tabela
		seller.setId(result.getInt("Id"));
		seller.setName(result.getString("Name"));
		seller.setEmail(result.getString("Email"));
		seller.setBirthdate(result.getDate("Birthdate"));
		seller.setBaseSalary(result.getDouble("BaseSalary"));
		
		seller.setDepartment(department);
		
		return seller;
	}
	
}
