<%@page import="java.time.LocalTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

String rut = request.getParameter("rut");
String dia= request.getParameter("dia");
LocalTime hora= LocalTime.parse(request.getParameter("hora"));
String lugar= request.getParameter("lugar");
LocalTime duracion= LocalTime.parse(request.getParameter("duracion"));
int cantidadAsistentes= Integer.parseInt(request.getParameter("cantidadAsistentes"));
%>
<html>
<head>
<meta charset="UTF-8">
<title>Lista capacitacion</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>
<body>
	<main class="container mt-3">
		<section class="card p-3">
			<h2 class="text-center">Lista capacitaciones</h2>
			<ul>
				<li>Rut: <%=rut%></li>
				<li>Dia: <%=dia%></li>
				<li>Hora: <%=hora%></li>
				<li>Lugar: <%=lugar%></li>
				<li>Duracion: <%=duracion%></li>
				<li>Cantidad Asistenes: <%=cantidadAsistentes%></li>
			</ul>
		</section>
	</main>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>