package com.examen.ui.hotelcityexpress;
import com.examen.ui.reservacion.Reserva;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
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
        int telefono;
        int numeroDias;
        int cantidadAdultos;
        int cantidadNinnos;
        boolean desayuno;
        boolean wifi;
        boolean parqueo;


        nombre = request.getParameter("nombre");
        correo = request.getParameter("correo");
        telefono = Integer.parseInt(request.getParameter("telefono"));
        //numeroDias = Integer.parseInt(request.getParameter("numeroDias"));
        cantidadAdultos = Integer.parseInt(request.getParameter("cantidadAdultos"));
        cantidadNinnos = Integer.parseInt(request.getParameter("cantidadNinnos"));
        desayuno = Boolean.parseBoolean(request.getParameter("desayuno"));
        wifi = Boolean.parseBoolean(request.getParameter("wifi"));
        parqueo = Boolean.parseBoolean(request.getParameter("parqueo"));


        Reserva obj1 = new Reserva(nombre, correo, telefono, 3,
                cantidadAdultos, cantidadNinnos, desayuno, wifi, parqueo);

        obj1.setPrecioFinal();
    }

}
