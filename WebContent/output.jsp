<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
</head>
<body>
      <h3>Your First and last name is :  </h3>
      
      <!-- java scriplet -->
      
      <%
      String firstName = (String ) request.getAttribute("firstname");
      String lastName = (String ) request.getAttribute("lastname");
      String passWd  =  (String)  request.getAttribute("passwd");
      out.print(firstName + " " + lastName);
      
      %>

     <table border= 1>
       <tr>
           <td>First Name :</td> <td> <%= firstName %>  </td>
       </tr>
     
       <tr>
           <td>Last Name :  </td> <td> <%= lastName %>  </td>
       </tr>
       
       <tr>
           <td> Password : </td><td> <%= passWd %>  </td>
     
       </tr>
     
     
     
     </table>

</body>
</html>