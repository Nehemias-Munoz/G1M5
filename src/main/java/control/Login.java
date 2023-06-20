package control;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class Login
 */
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String USER = "lala@gmail.com";
	private static final String PASSWORD = "1234";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
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
		String email = request.getParameter("email");
		String pass = request.getParameter("password");

		PrintWriter out = response.getWriter();

		if(!USER.contentEquals(email) || !PASSWORD.contentEquals(pass)) {
			   out.println("<script type=\"text/javascript\">");
			   out.println("alert('Usuario o password incorrecto');");
			   out.println("location='index.jsp';");
			   out.println("</script>");
		}else {
			// creamos la sesion si el usuario existe
//			HttpSession sesionUsuario= request.getSession(true);
//			sesionUsuario.setAttribute("Email", email);
			request.getRequestDispatcher("menu.jsp").forward(request, response); 
		}
	}

}
