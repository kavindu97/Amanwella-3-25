package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;
import DBConnection.ConnectionUtil;
import entity.Reservation;

public class ReservationDaoImpl implements ReservationDao{

	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
	PreparedStatement preparedStatement = null;
	@Override
	public List<Reservation> get() {
		List<Reservation> list = null;
		Reservation reservation = null;
		// TODO Auto-generated method stub
		try {
			list = new ArrayList<Reservation>();
			String sql = "SELECT * FROM reservation";
			connection = (Connection) ConnectionUtil.openConnection();
			statement = (Statement) connection.createStatement();
			resultSet = statement.executeQuery(sql);

			while (resultSet.next()) {
				reservation = new Reservation();
				reservation.setRes_id(resultSet.getInt("res_id"));
				reservation.setReservation_type(resultSet.getString("reservation_type"));
				reservation.setCheck_in(resultSet.getString("check_in"));
				reservation.setCheck_out(resultSet.getString("check_out"));
				reservation.setAdults(resultSet.getString("adults"));
				reservation.setChildren(resultSet.getString("children"));
				reservation.setRoom_count(resultSet.getString("room_count"));

				list.add(reservation);
			}
		} 
		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	@Override
	public boolean save(Reservation r) {
		boolean flag = false;
		try {
			String sql = "INSERT INTO reservation(reservation_type, check_in, check_out, adults, children, room_count)VALUES('"+r.getReservation_type()+"', '"+r.getCheck_in()+"', '"+r.getCheck_out()+"', '"+r.getAdults()+"', '"+r.getChildren()+"', '"+r.getRoom_count()+"')";
			connection = (Connection) ConnectionUtil.openConnection();
			preparedStatement = (PreparedStatement) connection.prepareStatement(sql);
			preparedStatement.executeUpdate();
			flag = true;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}
}
