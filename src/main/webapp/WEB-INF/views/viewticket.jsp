<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>The Tickets Are: </h1>
<table border="1">
<tr>
<th>Ticket_Id</th>
<th>Mobile</th>
<th>Movie_Name</th>
<th>No. of Tickets</th>
<th>Booking_Date</th>
<th>Show_Date</th>
<th>show_time</th>
<th>Ticket_Type</th>
<th>Total_Amount</th>
<th>update</th>
<th>delete</th>
</tr>
<c:forEach items ="${ticket}" var= "t1">
<tr>
<td>
<c:out value="${t1.ticketid}"></c:out>
</td>
<td>
<c:out value ="${t1.mobile}"></c:out>
</td>
<td>
<c:out value ="${t1.moviename}"></c:out>
</td><td>
<c:out value ="${t1.nooftickets}"></c:out>
</td><td>
<c:out value ="${t1.bookingDate}"></c:out>
</td><td>
<c:out value ="${t1.showdate}"></c:out>
</td><td>
<c:out value ="${t1.showtime}"></c:out>
</td><td>
<c:out value ="${t1.tickettype}"></c:out>
</td><td>
<c:out value ="${t1.totalamount}"></c:out>
</td>
<td><a href="updateticket?id=${t1.ticketid}">update</a></td>
<td><a href="deleteticket?id=${t1.ticketid}">delete</a></td>
</tr>
</c:forEach>
</table>
</body>
</html>