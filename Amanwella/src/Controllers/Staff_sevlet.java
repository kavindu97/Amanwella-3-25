package Controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;

import dao.StaffDao;
import dao.StaffDaoImpl;
import entity.Staff;

/**
 * Servlet implementation class staff_sevlet
 */
public class Staff_sevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	StaffDao staffDao = null;
	
	public Staff_sevlet() {
		staffDao = new StaffDaoImpl();
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action == null) {
			action="LIST";
		}
		switch(action) {
			case "LIST":
				listStaffs(request, response);
				break;
			
			case "EDIT":
				getSingleStaff(request, response);
				break;
			
			case "DELETE":
				deleteSingleStaff(request, response);
				break;	
				
			default:
				listStaffs(request, response);
				break;
		}
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String first_name = request.getParameter("fname");
		String last_name = request.getParameter("lname");
		String email = request.getParameter("email");                                                    
		String mobile = request.getParameter("mobile");
		String dob = request.getParameter("dob");
		String address = request.getParameter("address");
		String gender = request.getParameter("gender");
		String position = request.getParameter("position");
		String tow = request.getParameter("tow");
		String profile_picture = request.getParameter("profile_picture");
		Staff s = new Staff();
		
		PrintWriter print = response.getWriter();
		print.println(position);
		print.println(gender);
		print.println(address);
		print.println(mobile);

		
		s.setFirst_name(first_name);
		s.setLast_name(last_name);
		s.setEmail(email);
		s.setMobile(mobile);
		s.setDob(dob);
		s.setAddress(address);
		s.setGender(gender);
		s.setPosition(position);
		s.setTow(tow);
		s.setProfile_picture(profile_picture);
		
		
		
		if(id.isEmpty() || id == null) {
			staffDao.save(s);
		} else {
			s.setId(Integer.parseInt(id));
			staffDao.update(s);
		}
		listStaffs(request, response);
	}
	public void listStaffs(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List list = staffDao.get();
		request.setAttribute("list", list);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/staff.jsp");
		dispatcher.forward(request, response);
	}
	private void getSingleStaff(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		Staff staff = staffDao.get(Integer.parseInt(id));
		request.setAttribute("staff", staff);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/registration.jsp");
		dispatcher.forward(request, response);
	}
	private void deleteSingleStaff(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");	
		staffDao.delete(Integer.parseInt(id));
		listStaffs(request, response);
	}
}