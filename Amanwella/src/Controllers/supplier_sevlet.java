package Controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.SupplierDao;
import dao.SupplierDaoImpl;
import entity.Supplier;

/**
 * Servlet implementation class supplier_sevlet
 */
public class supplier_sevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	SupplierDao supplierDao = null;
	
	public supplier_sevlet() {
		supplierDao = new SupplierDaoImpl();
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action == null) {
			action="LIST";
		}
		switch(action) {
			case "LIST":
				listSuppliers(request, response);
				break;
			
			case "EDIT":
				getSingleSupplier(request, response);
				break;
			
			case "DELETE":
				deleteSingleSupplier(request, response);
				break;	
				
			default:
				listSuppliers(request, response);
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
		String profile_picture = request.getParameter("profile_picture");
		Supplier s = new Supplier();
		
		s.setFirst_name(first_name);
		s.setLast_name(last_name);
		s.setEmail(email);
		s.setMobile(mobile);
		s.setDob(dob);
		s.setAddress(address);
		s.setGender(gender);
		s.setProfile_picture(profile_picture);
		
		if(id.isEmpty() || id == null) {
			supplierDao.save(s);
		} else {
			s.setId(Integer.parseInt(id));
			supplierDao.update(s);
		}
		listSuppliers(request, response);
	}
	public void listSuppliers(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Supplier> list = supplierDao.get();
		request.setAttribute("list", list);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/supplier-list.jsp");
		dispatcher.forward(request, response);
	}
	private void getSingleSupplier(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		Supplier supplier = supplierDao.get(Integer.parseInt(id));
		request.setAttribute("supplier", supplier);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/supplier.jsp");
		dispatcher.forward(request, response);
	}
	private void deleteSingleSupplier(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");	
		supplierDao.delete(Integer.parseInt(id));
		listSuppliers(request, response);
	}
}
