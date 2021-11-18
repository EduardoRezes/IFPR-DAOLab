package dao;

import java.util.List;

import models.Department;

public interface DepartmentDao {
	
	public void insert(Department department);
	
	public void update(Department department);
	
	public void deleteById(Department id);
	
	public Department findById(Department id);
	
	public List<Department> findAll();
	
}
