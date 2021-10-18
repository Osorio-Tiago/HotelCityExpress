<%@ page contentType="text/html;charset=UTF-8"  %>
<html lang="en">
<head>
    <title>Reserva</title>

    <!-- GOOGLE FONT-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Mono&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="css/reservaStyle.css">


    <script>

        function calcularDias()
        {
            var fechaInicial=document.getElementById("fecha1").value;
            var fechaFinal=document.getElementById("fecha2").value;
            var resultado="";
            var inicial;
            var final;


                inicial = fechaInicial.split("-");
                final = fechaFinal.split("-");
                // obtenemos las fechas en milisegundos
                var dateStart = new Date(inicial[0], (inicial[1] - 1), inicial[2]);
                var dateEnd = new Date(final[0], (final[1] - 1), final[2]);

                if (dateStart < dateEnd) {
                    // la diferencia entre las dos fechas, la dividimos entre 86400 segundos
                    // que tiene un dia, y posteriormente entre 1000 ya que estamos
                    // trabajando con milisegundos.
                    var diasDif = dateEnd.getTime() - dateStart.getTime();
                    resultado = "Dias trancurridos: " + (diasDif / 86400000) + " ";

                } else {
                    alert("La fecha inicial es posterior a la fecha final");

                }

            document.getElementById("resultado").innerHTML=resultado;

        }
    </script>

</head>

<body>
<section>


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
                    <!--
                    <div>
                        <label>Teléfono</label>
                        <label>
                            <input type="number" placeholder="123 4567 8910"  maxlength="11" name="telefono" oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);">
                        </label>
                    </div>
                        -->
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

<script src="js/javascrypt.js"></script>


</html>
