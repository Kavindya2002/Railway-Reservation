<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Railway Management System</title>
    <link rel="stylesheet" href="css/railwayStyle.css">

</head>
<body>

	<c:forEach var="cus" items="${cusdetails}">
		<c:set var="id" value="${cus.id}"/>
		<c:set var="fname" value="${cus.fname}"/>
		<c:set var="lname" value="${cus.lname}"/>
		<c:set var="username" value="${cus.username}"/>
		<c:set var="email" value="${cus.email}"/>
		<c:set var="address" value="${cus.address}"/>
		<c:set var="phone" value="${cus.mnumber}"/>
		<c:set var="password" value="${cus.password}"/>
	</c:forEach>
	
    <header>
        <div class="nav">
            <div class="logo"><h1>Rail<b>Track</b></h1></div>
            <ul>
                <li><a class="active" href="#">Home</a></li>
                <li><a href="TimeTable.jsp">Timetable</a></li>
                
                <c:url value="userProfile.jsp" var="userprofile">
					<c:param name="id" value="${id}"/>
					<c:param name="fname" value="${fname}"/>
					<c:param name="lname" value="${lname}"/>
					<c:param name="phone" value="${phone}"/>
					<c:param name="username" value="${username}"/>
					<c:param name="email" value="${email}"/>
					<c:param name="address" value="${address}"/>
					<c:param name="password" value="${password}"/>
				</c:url>
                
                <li><a href="${userprofile}">Profile</a></li>
                <li><a href="contactUs.html">Contact Us</a></li>
            </ul>
        </div>
    </header>
 <section class="welcome">
    <div class="content">
       <div class="content-left">
         <div class="info">
            <h2>Plan Your <br> Journey Now</h2>
            <p>Welcome to RailTrack! Explore train schedules, book tickets, and manage your travel efficiently.</p>
            <a href="TimeTable.jsp"><button>View Timetable</button></a>
         </div>
       </div>
       <div class="content-right">
        <img src="css/train.png" alt="Train Image">
    </div>
    </div>
 </section>   
</body>
</html>