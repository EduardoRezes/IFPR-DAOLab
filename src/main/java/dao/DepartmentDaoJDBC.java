package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import connection.ConnectionFactory;
import exceptions.DatabaseException;
import models.Department;


/*As classes Dao JDBC são responsaveis para fazer as consultas no banco*/
public class DepartmentDaoJDBC implements DepartmentDao {

	//Add Conection
	private Connection connection;
	
	public DepartmentDaoJDBC(Connection connection) {
		this.connection = connection;
	}
	/*
	private Department creatDepartment(ResultSet result) throws SQLException {
		Department department = new Department();
		department.setId(result.getInt("DepartmentId"));
		department.setName(result.getString("DepName"));
		
		return department;
	}
	
	public Department createDepartment(int id, String name) {
		PreparedStatement stm = null;
		ResultSet result = null;
		try {
			String sql = "INSERT INTO departmente(Id, Name)values(?,?)";
			stm = connection.prepareStatement(sql, stm.RETURN_GENERATED_KEYS);
			stm.setInt(1, id);
			stm.setString(2, name);
			
			//result = result.
		} catch (SQLException e) {
			throw new DatabaseException(e.getMessage());
		}finally {
			ConnectionFactory.closeStatement(stm);
		}
		
		return null;
	}*/

	@Override
	public void insert(Department  department) {
		Connection conn = ConnectionFactory.getConnection();		
		try {
		PreparedStatement st = conn.prepareStatement("INSERT INTO department (Name) VALUES(?)", Statement.RETURN_GENERATED_KEYS);	
		st.setString(1, department.getName());		
		int rowsAffected = st.executeUpdate();	
		System.out.println("Rows Affected: " + rowsAffected);

		ResultSet ids = st.getGeneratedKeys();
		
		ids.next();
		}catch(SQLException e1) {
			throw new DatabaseException(e1.getMessage());
		}
	}

	@Override
	public void update(Department  department) {
		Connection conn = ConnectionFactory.getConnection();		
		try {
			conn.setAutoCommit(false);
			PreparedStatement st = conn.prepareStatement( "UPDATE department SET Name = ? WHERE id = ?");			
			st.setString(1, department.getName());
			st.setInt(2, department.getId());
			
			int rowsAffected = st.executeUpdate();
			
			System.out.println("Rows Affected: " + rowsAffected);			
			conn.commit();			
		}catch(SQLException e1) {
			try {
				conn.rollback();
				throw new DatabaseException("Some thing happened.");			
			} catch (SQLException e2) {
				e2.printStackTrace();
			}
		}
	}

	@Override
	public void deleteById(Integer id) {
		Connection conn = ConnectionFactory.getConnection();	
		try {			
			PreparedStatement st = conn.prepareStatement("DELETE FROM department WHERE Id = ?");			
			st.setInt(1, id);			
			st.executeUpdate();	
		} catch (SQLException e) {			
			throw new DatabaseException("O Departamento não pode ser deletado, pois está atrelado a um vendedor. Remova todos os vendedores do departamento primeiro.");			
		}
	}

	@Override
	public Department findById(Integer id) {
		PreparedStatement statement = null;
		ResultSet result = null;
		Department dp = new Department();
		try {
			
			String sql = "SELECT * FROM department WHERE id = ?";
			
			statement = connection.prepareStatement(sql);
			
			statement.setInt(1, id);
			
			result = statement.executeQuery();
			
			if(result.next()){
				dp.setId(result.getInt("Id"));
				dp.setName(result.getString("Name"));
			}
			return dp;
		}catch(SQLException e1) {
			throw new DatabaseException(e1.getMessage());
		}finally {
			ConnectionFactory.closeStatement(statement);
			ConnectionFactory.closeResultSet(result);
		}
	}

	@Override
	public List<Department> findAll() {
		PreparedStatement statement = null;
		ResultSet result = null;
		List<Department> resultado = new ArrayList<Department>();
		try {
			String sql = "SElECT * FROM department";
			
			statement = connection.prepareStatement(sql);
			result = statement.executeQuery();
			
			while(result.next()) {
				Department d = new Department();
				d.setId(result.getInt("Id"));
				d.setName(result.getString("Name"));
				
				resultado.add(d);
			}
			
			return resultado;
			
		}catch(SQLException e1) {
			throw new DatabaseException(e1.getMessage());
		}finally {
			ConnectionFactory.closeStatement(statement);
			ConnectionFactory.closeResultSet(result);
		}
	}
}
