package com.examen.ui.hotelcityexpress;
import com.examen.ui.reservacion.Reserva;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.util.Date;
import java.util.Objects;

@WebServlet(name = "Reserva", value = "/Reserva")
public class ReservaServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String nombre;
        String correo;
        double telefono;
        int numeroDias;
        String fechaIngreso;
        String fechaSalida;
        int cantidadAdultos;
        int cantidadNinnos;
        boolean desayuno;
        boolean wifi;
        boolean parqueo;


        nombre = request.getParameter("nombre");
        correo = request.getParameter("correo");
        telefono = Double.parseDouble(request.getParameter("telefono"));
        fechaIngreso = request.getParameter("fechaIngreso");
        fechaSalida = request.getParameter("fechaSalida");
        cantidadAdultos = Integer.parseInt(request.getParameter("cantidadAdultos"));
        cantidadNinnos = Integer.parseInt(request.getParameter("cantidadNinnos"));
        desayuno = Boolean.parseBoolean(request.getParameter("desayuno"));
        wifi = Boolean.parseBoolean(request.getParameter("wifi"));
        parqueo = Boolean.parseBoolean(request.getParameter("parqueo"));


        Reserva reserva = new Reserva(nombre, correo, telefono, fechaIngreso, fechaSalida, cantidadAdultos, cantidadNinnos,
            desayuno, wifi, parqueo);

        reserva.setPrecioFinal();
        reserva.setCantidadDiasNoches();

        request.setAttribute("Reserva", reserva);
        request.getRequestDispatcher("mostrarReserva.jsp").forward(request, response);
    }
}
