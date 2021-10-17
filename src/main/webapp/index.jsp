<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="css/style.css">
</head>

<body>
<div class = "contenedor">
    <form id="loginForm" name="login" method="post" action="Login" >
        <div class="elemento">
            <label><b>Nombre de Usuario</b></label><br>
            <label>
                <input type="text" placeholder="Ingresar Usuario" name="nombreUser" required>
            </label><br>
            <label><b>Contraseña</b></label><br>
            <label>
                <input type="password" placeholder="Ingresar Contraseña" name="contrasenna" required>
            </label><br>
            <button type="submit">Entrar</button>
        </div>
    </form>
</div>

</body>
</html>