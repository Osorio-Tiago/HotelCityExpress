package com.examen.ui.hotelcityexpress;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Objects;


@WebServlet(name = "Login", value = "/Login")
public class Login extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nombre;
        String contrasenna;

//         El getParameter va a buscar en el formulario por "name"
// <input type="text" class="form-control" name="nombre" placeholder="Tu nombre" required>

        nombre = request.getParameter("nombreUser");
        contrasenna = request.getParameter("contrasenna");

        if (Objects.equals(nombre, "Admin") && Objects.equals(contrasenna, "123")) {
            request.getRequestDispatcher("mostrarSolicitud.jsp").forward(request, response);
        } else {
            RequestDispatcher rd = getServletContext().getRequestDispatcher(
                    "/login.jsp");
            rd.include(request, response);
        }

    }

}
