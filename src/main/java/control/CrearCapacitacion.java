package control;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalTime;
import java.util.ArrayList;

import entity.Capacitacion;

/**
 * Servlet implementation class CrearCapacitacion
 */
public class CrearCapacitacion extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static ArrayList<Capacitacion> capacitaciones = new ArrayList<>();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CrearCapacitacion() {
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
		
		int identificador = 1;
	    String rut = request.getParameter("rut");
	    String dia= request.getParameter("dia");
	    LocalTime hora= LocalTime.parse(request.getParameter("hora"));
	    String lugar= request.getParameter("lugar");
	    LocalTime duracion= LocalTime.parse(request.getParameter("duracion"));
	    int cantidadAsistentes= Integer.parseInt(request.getParameter("cantidadAsistentes"));
		Capacitacion capacitacion = new Capacitacion(identificador,rut,dia,hora,lugar,duracion,cantidadAsistentes);
		request.getRequestDispatcher("listarCapacitacion.jsp").forward(request, response);
	}

}
