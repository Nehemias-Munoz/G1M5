<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

String nombre = request.getParameter("nombre");
String primerApellido = request.getParameter("primerApellido");
String segundoApellido = request.getParameter("segundoApellido");
LocalDate fechaNacimiento = LocalDate.parse((request.getParameter("fechaNacimiento")));
String run = request.getParameter("run");
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<main class="container mt-3">
<section class="card p-3">
	<ul>
	<li><%=nombre%></li>
	<li><%=primerApellido %></li>
	<li><%=segundoApellido %></li>
	<li><%=fechaNacimiento %></li>
	<li><%=run %></li>
	</ul>
</section>
</main>
</body>
</html>