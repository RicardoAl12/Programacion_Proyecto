<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Administrador</title>

<link rel="stylesheet" type="text/css" href="styles.css">

</head>
<body style="background-color: #2CE631">

	        
 <!--Encabezado-->
     <header>
        <div class="header-container">
          <div class="logo">
            <img src="https://png.pngtree.com/png-clipart/20240126/original/pngtree-green-forest-world-earth-day-png-image_14160235.png" alt="Logo de la empresa">
          </div>
          <nav>
            <ul>
              <li><a href="index.jsp">Inicio</a></li>
              <li><a href="administrador.jsp">Login</a></li>
              <li><a href="bosques.jsp">Bosques y Parques</a></li>
              <li><a href="categoriaBosque.jsp">Categorias</a></li>
              <li><a href="contactos.jsp">Contactos</a></li>
              <li><a href="busquedaBosques.jsp">Busqueda</a></li>
            </ul>
          </nav>
        </div>
      </header>



<!--  MEtodo del login -->
      
	<div class="login-container">
        <div class="login-box">
            <h2>Login</h2>
            <form action="respuesta_login.jsp" method="post">
                <div class="input-group">
                    <input type="text" id="username" name="username" required>
                    <label for="username">Username</label>
                </div>
                <div class="input-group">
                    <input type="password" id="password" name="password" required>
                    <label for="password">Password</label>
                </div>
                <div class="options">
                    <label><input type="checkbox" name="remember"> Remember me</label>
                    <a href="#">Forgot password?</a>
                </div>
                <button type="submit">Login</button>
            </form>
            <p>No tienes cuenta? <a href="#">Registrate</a></p>
        </div>
    </div>
    
    
</body>
</html>