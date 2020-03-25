package dao;

import java.util.List;
import entity.Reservation;

public interface ReservationDao {
	List<Reservation> get();
	boolean save(Reservation r);
}
