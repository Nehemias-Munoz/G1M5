<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>
<body>
	<main class="container mt-3">
		<section class="card p-3">
		<h2 class="text-center">Login</h2>
		<form action="Login" method="post">
			<div class="mb-3">
		  		<label for="email" class="form-label">Email</label>
		  		<input type="email" class="form-control" id="email" name="email" placeholder="name@example.com">
			</div>
			<div class="mb-3">
		  		<label for="password" class="form-label">Password</label>
		  		<input type="password" class="form-control" id="password" name="password" maxlength="4" min="4">
			</div>
			<div class="d-grid gap-2">
			  <button class="btn btn-success" type="submit">Ingresar</button>
			</div>
		</form>
		</section>
	</main>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>