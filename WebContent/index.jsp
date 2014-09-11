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
      <!-- comments: action will send data to our servletexample to act accordingly -->
     <form action="servletexample" method="post">
     <table border="0">
     <tr>
     <td>First Name: </td> <td> <input type="text" name="firstname" /></td>
     </tr>
     <tr>
    <td> Last Name :</td> <td> <input type="text" name="lastname" /></td>
     </tr>
     <tr>
     <td> Your Password :</td> <td> <input type="text" name="passwd" /></td>
     </tr>
     <tr>
     <td>Click to Submit :</td> <td> <input type="submit" value="Submit" /></td>
     </tr>
    </table>
     </form>
</body>
</html>