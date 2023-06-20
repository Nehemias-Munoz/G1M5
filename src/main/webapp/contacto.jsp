<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

</head>
<body>
	<main class="container mt-3">
	<section class="card p-3">
        <h3>Consulta</h3>
        <form
          action=""
          method="post"
        >
          <div class="mb-3">
            <label for="nombre" class="form-label">Nombre y apellido:</label>
            <input type="text" class="form-control" id="nombre" name="nombre" required />
          </div>
          <div class="mb-3">
            <label for="rut" class="form-label">Rut: </label>
            <input type="text" class="form-control" id="rut" name="rut" required />
          </div>
          <div class="mb-3">
            <label for="correo" class="form-label">Correo electrónico:</label>
            <input type="email" class="form-control" id="correo" name="email" required />
          </div>
          <div class="mb-3">
            <label for="telefono" class="form-label">Ingrese su número telefónico:</label>
            <input type="number" class="form-control" id="telefono" name="telefono" required />
          </div>
          <div class="mb-3">
            <label for="consulta" class="form-label">Ingrese su consulta:</label>
            <input type="text" class="form-control" id="consulta" name="consulta" required/>
          </div>
          <div>
          <button type="submit" class="btn btn-success">Enviar</button>
          </div>
        </form>
      </section>
	</main>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>