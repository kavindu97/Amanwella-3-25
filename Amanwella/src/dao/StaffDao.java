package dao;

import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;

import entity.Staff;

public interface StaffDao {

	List get();
	boolean save(Staff s);
	Staff get(int id);
	boolean update(Staff s);
	boolean delete(int id);
	
}
