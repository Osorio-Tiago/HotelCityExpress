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


</section>
<section >
    <div >
        <div >
            <div >
                <h1 >Formulario de reserva de habitación</h1>
                <p>Ingresa la siguiente información para realizar la reserva.</p>
                <form id="formulario" name="formulario" onsubmit="validarTodo()" method="post" action="Reserva" >
                    <div >

                        <!-- Nombre -->
                        <div >
                            <label >Nombre</label>
                            <label>
                                <input type="text" name="nombre" placeholder="Ej: Santiago" required>
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
                        <label>Teléfono</label>
                        <label>
                            <input type="number" class="form-control" placeholder="123 4567 8910"  maxlength="11"   name="telefono"  oninput="if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);">
                        </label>
                    </div>

                    <!-- Fechas -->

                    <div>
                        <label>Ingresa tu fecha de ingreso</label>
                        <label>
                            <input type="date" id = "fecha1" name="fecha1">
                        </label>
                    </div>

                    <div>
                        <label>Ingresa tu fecha de salida</label>
                        <label>
                            <input type="date" id = "fecha2" name="fecha2" min = "fecha1">
                        </label>
                    </div>

                    <!-- Cantidad de adultos -->

                    <div >
                        <label >Cantidad de adultos</label>
                       <label>
                           <input type="number" placeholder="Ej: 1,2,3..." id="cantAdultos" name="cantidad">
                       </label>
                    </div>

                    <!-- Cantidad de niños -->

                    <div >
                        <label >Cantidad de niños</label>
                        <label>
                            <input type="number" placeholder="Ej: 1,2,3..." id="cantNinnos" name="cantidad">
                        </label>
                    </div>

                    <!-- complementos -->

                    <fieldset>
                        <div>
                            <label>
                                Seleccione los complementos que desea recibir en su estadía:</label>
                            <label for="radioDesayuno">
                                <input type="checkbox" id="radioDesayuno" name=radioDesayuno> Desayuno incluído
                            </label>
                            <label for="radioParqueo">
                                <input type="checkbox" id="radioParqueo" name=radioParqueo > Parqueo
                            </label>
                            <label for="radioWifi">
                                <input type="checkbox" id="radioWifi" name=radioWifi > Wifi
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
