<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="Reserva" scope="request" class="com.examen.ui.reservacion.Reserva"/>

<html >
<head>
    <meta charset=com.examen.ui.reservacion.Reserva"UTF-8">
    <title>Reserva</title>


    <link rel="stylesheet" href="css/tabla.css">
</head>

<body>

<div align="right">
    <form id ="formLogout" name = "formLogout" method="post" action = "Logout">
        <label>Bienvenido ${sessionScope.usuario}</label><br>
        <input type="button" value="logout" name="logout" class="btn btn-primary width-100">
    </form>
</div>
<div class="container">
    <table>
        <thead>
        <tr>
            <th>Nombre</th>
            <th>Numero de reservación</th>
            <th>Cantidad de adultos</th>
            <th>Cantidad de niños</th>
            <th>Fecha Ingreso</th>
            <th>Fecha Salida</th>
            <th>Cantidad de días</th>
            <th>Cantidad de noches</th>
            <th>Correo</th>
            <th>Teléfono</th>
            <th>Total</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td><%=Reserva.getNombre()%></td>
            <td><%=Reserva.getNumeroReserva()%></td>
            <td><%=Reserva.getCantidadAdultos()%></td>
            <td><%=Reserva.getCantidadNinnos()%></td>
            <td><%=Reserva.getFechaIngreso()%></td>
            <td><%=Reserva.getFechaSalida()%></td>
            <td><%=Reserva.getCantidadDias()%></td>
            <td><%=Reserva.getCantidadNoches()%></td>
            <td><%=Reserva.getCorreo()%></td>
            <td><%=Reserva.getTelefono()%></td>
            <td><%=Reserva.getPrecioFinal()%></td>


            <%--            <td>Cell 2</td>--%>
            <%--            <td>Cell 3</td>--%>
            <%--            <td>Cell 4</td>--%>
            <%--            <td>Cell 5</td>--%>
        </tr>
        <tr>

            <%--            <td>Cell 2</td>--%>
            <%--            <td>Cell 3</td>--%>
            <%--            <td>Cell 4</td>--%>
            <%--            <td>Cell 5</td>--%>
        </tr>
        <tr>

            <%--            <td>Cell 2</td>--%>
            <%--            <td>Cell 3</td>--%>
            <%--            <td>Cell 4</td>--%>
            <%--            <td>Cell 5</td>--%>
        </tr>
        <tr>

            <%--            <td>Cell 2</td>--%>
            <%--            <td>Cell 3</td>--%>
            <%--            <td>Cell 4</td>--%>
            <%--            <td>Cell 5</td>--%>
        </tr>
        <tr>

            <%--            <td>Cell 2</td>--%>
            <%--            <td>Cell 3</td>--%>
            <%--            <td>Cell 4</td>--%>
            <%--            <td>Cell 5</td>--%>
        </tr>

        <%--            <td>Cell 2</td>--%>
        <%--            <td>Cell 3</td>--%>
        <%--            <td>Cell 4</td>--%>
        <%--            <td>Cell 5</td>--%>
        </tr>


        <%--            <td>Cell 2</td>--%>
        <%--            <td>Cell 3</td>--%>
        <%--            <td>Cell 4</td>--%>
        <%--            <td>Cell 5</td>--%>
        </tr>

        <%--            <td>Cell 2</td>--%>
        <%--            <td>Cell 3</td>--%>
        <%--            <td>Cell 4</td>--%>
        <%--            <td>Cell 5</td>--%>
        </tr>

        <%--            <td>Cell 2</td>--%>
        <%--            <td>Cell 3</td>--%>
        <%--            <td>Cell 4</td>--%>
        <%--            <td>Cell 5</td>--%>
        </tr>

        </tr>

        <%--            <td>Cell 2</td>--%>
        <%--            <td>Cell 3</td>--%>
        <%--            <td>Cell 4</td>--%>
        <%--            <td>Cell 5</td>--%>
        </tr>

        <%--            <td>Cell 2</td>--%>
        <%--            <td>Cell 3</td>--%>
        <%--            <td>Cell 4</td>--%>
        <%--            <td>Cell 5</td>--%>
        </tr>

        <%--            <td>Cell 2</td>--%>
        <%--            <td>Cell 3</td>--%>
        <%--            <td>Cell 4</td>--%>
        <%--            <td>Cell 5</td>--%>
        </tr>



        </tbody>



    </table>
</div>
<fieldset>
    <input align = "right" type= "button" value="Cerrar sesion" onclick="location.href='index.jsp';" name="btnFinalizar" class="btn btn-primary width-100">
</fieldset>

</body>
</html>