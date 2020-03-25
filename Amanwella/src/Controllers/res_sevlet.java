package Controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.ReservationDao;
import dao.ReservationDaoImpl;
import entity.Reservation;

public class res_sevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	ReservationDao reservationDao = null;
	
	public res_sevlet() {
		reservationDao = new ReservationDaoImpl();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String reservation_type = request.getParameter("reservation_type");
		String check_in = request.getParameter("check_in");
		String check_out = request.getParameter("check_out");
		String adults = request.getParameter("adults");
		String children = request.getParameter("children");
		String room_count = request.getParameter("room_count");
		
		int room_count_int = Integer.parseInt(room_count);
		int children_int = Integer.parseInt(children);
		int adults_int = Integer.parseInt(adults);
		
		if(4*room_count_int < children_int+adults_int) {
			response.sendRedirect("user-reservation.jsp?status=false");
		}
		else {
			Reservation r = new Reservation();
			
			r.setReservation_type(reservation_type);
			r.setCheck_in(check_in);
			r.setCheck_out(check_out);
			r.setAdults(adults);
			r.setChildren(children);
			r.setRoom_count(room_count);
					
			reservationDao.save(r);
		}
				
	}
}
