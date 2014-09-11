package com.example.tutorial1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletExample
 */
@WebServlet("/servletexample")
public class ServletExample extends HttpServlet {
	    private static final long serialVersionUID = 1L;

	    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();     
		
		//forward to the index.jsp page first if parameters !=null
		if (request.getParameter("firstname") == null || request.getParameter("lastname") == null) {
		getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
		return;
		}
		
		
		String firstName = (String) request.getParameter("firstname"); // from index.jsp
		String lastName = (String) request.getParameter("lastname");
		String passWd =  (String) request.getParameter("passwd");
		
		 //set attributes
	     request.setAttribute("firstname", firstName);
	     request.setAttribute("lastname",lastName);
	     request.setAttribute("passwd", passWd);
	     
		// forward it( request , response) to output.jsp
		 getServletContext().getRequestDispatcher("/output.jsp").forward(request,response);
		
		
		
		
		
		
		//=========================================Different aspect===================================//
		
		// now, we will get data from index.jsp and assign it to variables and do something with it 
		// maybe something like the following...
		
		/*String clientFirstName = "Hani";
		String clientLastName = "Aboudeshisha";
		String clientPassWd ="123hani";
		
		String firstName = (String) request.getParameter("firstname"); // from index.jsp
		String lastName = (String) request.getParameter("lastname");
		String passWd =  (String) request.getParameter("passwd");
		
		
		out.println(firstName);
		out.println(lastName);
		out.println(passWd);
		
		if( (firstName == clientFirstName  ) && (lastName == clientLastName) && (passWd == clientPassWd)){
			
			out.println("Hello Hani !");
			
		}else{
		// hmmm , needs debug!!!!
		
		out.println("please call your admin, bye!");
		}*/
	}
}

