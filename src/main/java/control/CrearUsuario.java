package control;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;

import entity.Usuario;

/**
 * Servlet implementation class CrearUsuario
 */
public class CrearUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CrearUsuario() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String nombre = request.getParameter("nombre");
		String primerApellido = request.getParameter("apellido1");
		String segundoApellido = request.getParameter("apellido2");
		LocalDate fechaNacimiento = LocalDate.parse((request.getParameter("fechaNacimiento")));
		String run = request.getParameter("run");

		Usuario nuevoUsuario = new Usuario(nombre, primerApellido, segundoApellido, fechaNacimiento, run);
		request.setAttribute("nombre",nombre);
		request.setAttribute("primerApellido",primerApellido);
		request.setAttribute("segundoApellido",segundoApellido);
		request.setAttribute("fechaNacimiento",fechaNacimiento);
		request.setAttribute("run",run);
		request.getRequestDispatcher("listarUsuario.jsp").forward(request, response);
	}

}
