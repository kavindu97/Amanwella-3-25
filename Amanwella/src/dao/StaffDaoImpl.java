package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;
import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;

import DBConnection.ConnectionUtil;
import entity.Staff;
import entity.Staff;

public class StaffDaoImpl implements StaffDao {

	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
	PreparedStatement preparedStatement = null;
	
	@Override
	public List get() {
		
		List list = null;
		Staff staff = null;
		// TODO Auto-generated method stub
		try {
			list = (List) new ArrayList<Staff>();
			String sql = "SELECT * FROM staff";
			connection = (Connection) ConnectionUtil.openConnection();
			statement = (Statement) connection.createStatement();
			resultSet = statement.executeQuery(sql);

			while (resultSet.next()) {
				staff = new Staff();
				staff.setId(resultSet.getInt("id"));
				staff.setFirst_name(resultSet.getString("first_name"));
				staff.setLast_name(resultSet.getString("last_name"));
				staff.setEmail(resultSet.getString("email"));
				staff.setMobile(resultSet.getString("mobile"));
				staff.setDob(resultSet.getString("dob"));
				staff.setGender(resultSet.getString("gender"));
				staff.setAddress(resultSet.getString("address"));
				staff.setAddress(resultSet.getString("position"));
				staff.setAddress(resultSet.getString("tow"));
				staff.setProfile_picture(resultSet.getString("profile_picture"));
				
				((ArrayList<Staff>) list).add(staff);
			}
		} 
		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	public boolean save(Staff s) {
		boolean flag = false;
		try {
			String sql = "INSERT INTO staff(first_name, last_name, email, mobile, dob, address, gender, position, tow, profile_picture)VALUES('"+s.getFirst_name()+"', '"+s.getLast_name()+"', '"+s.getEmail()+"', '"+s.getMobile()+"', '"+s.getDob()+"', '"+s.getAddress()+"', '"+s.getGender()+"', '"+s.getPosition()+"', '"+s.getTow()+"', '"+s.getProfile_picture()+"')";
			connection = (Connection) ConnectionUtil.openConnection();
			preparedStatement = (PreparedStatement) connection.prepareStatement(sql);
			preparedStatement.executeUpdate();
			flag = true;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}

	public Staff get(int id) {
		Staff staff = null;
		try {
			staff = new Staff();
			String sql = "SELECT * FROM staff WHERE id="+id;
			connection = (Connection) ConnectionUtil.openConnection();
			statement = (Statement) connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while(resultSet.next()) {
				staff.setId(resultSet.getInt("id"));
				staff.setFirst_name(resultSet.getString("first_name"));
				staff.setLast_name(resultSet.getString("last_name"));
				staff.setEmail(resultSet.getString("email"));
				staff.setMobile(resultSet.getString("mobile"));
				staff.setDob(resultSet.getString("dob"));
				staff.setGender(resultSet.getString("gender"));
				staff.setAddress(resultSet.getString("address"));
				staff.setAddress(resultSet.getString("position"));
				staff.setAddress(resultSet.getString("tow"));
				staff.setProfile_picture(resultSet.getString("profile_picture"));			}
		} catch (SQLException ex) {
			ex.printStackTrace();		
		}
		return staff;
	}

	public boolean update(Staff s) {
		boolean flag = false;
		try {
			String sql = "UPDATE staff SET first_name='"+s.getFirst_name()+"', last_name='"+s.getLast_name()+"',email='"+s.getEmail()+"',mobile='"+s.getMobile()+"',dob='"+s.getDob()+"',address='"+s.getAddress()+"',gender='"+s.getGender()+"',position='"+s.getPosition()+"',tow='"+s.getTow()+"',profile_picture='"+s.getProfile_picture()+"' WHERE id="+s.getId();
			connection = (Connection) ConnectionUtil.openConnection();
			preparedStatement = (PreparedStatement) connection.prepareStatement(sql);
			preparedStatement.executeUpdate();
			flag = true;
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return flag;
	}

	public boolean delete(int id) {
		boolean flag = false;
		try {
			String sql = "DELETE FROM staff WHERE id="+id;
			connection = (Connection) ConnectionUtil.openConnection();
			preparedStatement = (PreparedStatement) connection.prepareStatement(sql);
			preparedStatement.executeUpdate();
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return flag;
	}
}