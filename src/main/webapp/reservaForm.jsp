<%@ page contentType="text/html;charset=UTF-8"  %>
<html lang="en">
<head>
    <title>Reserva</title>

    <!-- GOOGLE FONT-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Mono&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="css/reservaStyle.css">

</head>

<body>
<section>
<div align="right">
    <form id ="formLogout" name = "formLogout" method="get" action = "Logout">
        <label>Bienvenido ${sessionScope.usuario}</label><br>
        <input type="button" value="logout" name="logout" class="btn btn-primary width-100">
    </form>
</div>

</section>
<section >
    <div >
        <div >
            <div >
                <h1 >Formulario de reserva de habitación</h1>
                <p>Ingresa la siguiente información para realizar la reserva.</p>
                <form id="formulario" name="formulario" onsubmit="return validarFormulario()" method="post" action="Reserva" >
                    <div >
                        <!-- Nombre -->
                        <div >
                            <label for="nombre">Nombre</label>
                            <label>
                                <input type="text" id = "nombre" name="nombre" placeholder="Ej: Santiago" required>
                            </label>
                        </div>
                    </div>

                    <!-- Correo -->
                    <div >
                        <label>Correo electrónico</label>
                        <label for="correo">
                            <input type = "email" id="correo" name="correo" placeholder="Ej: example@example.com" required >
                        </label>
                    </div>

                    <!-- Teléfono -->

                    <div>
                        <label for = "telefono">Teléfono</label>
                        <input type="number" class="form-control" placeholder="(xxx) xxxx-xxxx"  maxlength="11"   name="telefono" id = "telefono"  oninput="if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);">
                    </div>

                    <!-- Fechas -->

                    <div>
                        <label>Ingresa tu fecha de ingreso</label>
                        <label>
                            <input type="date" id = "fechaIngreso" name="fechaIngreso">
                        </label>
                    </div>

                    <div>
                        <label>Ingresa tu fecha de salida</label>
                        <label>
                            <input type="date" id = "fechaSalida" name="fechaSalida" min = "fechaIngreso">
                        </label>
                    </div>

                    <!-- Cantidad de adultos -->

                    <div >
                        <label >Cantidad de adultos</label>
                           <input type="number" placeholder="Ej: 1,2,3..." id="cantidadAdultos" name="cantidadAdultos">
                    </div>

                    <!-- Cantidad de niños -->

                    <div >
                        <label >Cantidad de niños</label>
                            <input type="number" placeholder="Ej: 1,2,3..." id="cantidadNinnos" name="cantidadNinnos">
                    </div>

                    <!-- complementos -->

                    <fieldset>
                        <div>
                            <label>
                                Seleccione los complementos que desea recibir en su estadía:</label>
                            <label for="radioDesayuno">
                                <input type="checkbox" id="radioDesayuno" name=desayuno> Desayuno incluído
                            </label>
                            <label for="radioParqueo">
                                <input type="checkbox" id="radioParqueo" name=parqueo > Parqueo
                            </label>
                            <label for="radioWifi">
                                <input type="checkbox" id="radioWifi" name=wifi > Wifi
                            </label>
                        </div>
                    </fieldset>

                    <!-- Botones -->

                    <fieldset class="botones">
                        <input type="submit" value="Confirmar reserva" name="btnEnviar" class="btn btn-primary width-100">
                        <input type="reset" value="Limpiar"  class="btn btn-secondary" name="btnLimpiar">
                    </fieldset>
                </form>
            </div>
        </div>
    </div>
</section>
</body>
</html>
