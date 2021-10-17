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

        PrintWriter out=response.getWriter();


        String nombre;
        String contrasenna;

        nombre = request.getParameter("nombreUser");
        contrasenna = request.getParameter("contrasenna");


        if (Objects.equals(nombre, "Admin") && Objects.equals(contrasenna, "123")) {
            out.print("Bienvenido, "+nombre);
            HttpSession session=request.getSession();
            session.setAttribute("name",nombre);
            request.getRequestDispatcher("reservaForm.jsp").forward(request, response);
        } else {
            out.print("Error, nombre de usuario o contraseña incorrectos!");
            RequestDispatcher rd = getServletContext().getRequestDispatcher("index.jsp");
            rd.include(request, response);
        }
        out.close();
    }
}