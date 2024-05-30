<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Entrevista</title>
<link rel="stylesheet" href="styles.css">
</head>
<body>

           
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
      
      <div class="texto2">
     	 <h2>Por favor responda las siguientes preguntas</h2>
      </div>
      

	 <div class="form-container">
        <form action="respuestaEntrevista.jsp" method="post">
            <div class="form-group">
                <label for="pregunta1">¿Cuál es su relación con los bosques y parques? ¿Han visitado algún parque o bosque en particular?</label>
                <input type="text" id="pregunta1" name="pregunta1" required>
            </div>
            <div class="form-group">
                <label for="pregunta2">¿Qué les gusta hacer en los bosques o parques? (p. ej., caminar, correr, hacer senderismo, etc.)</label>
                <input type="text" id="pregunta2" name="pregunta2" required>
            </div>
            <div class="form-group">
                <label for="pregunta3">¿Qué les gusta más sobre nuestra página web sobre bosques y parques? ¿Qué les parece interesante o útil?</label>
                <input type="text" id="pregunta3" name="pregunta3" required>
            </div>
            <div class="form-group">
                <label for="pregunta4">¿Qué les gustaría ver o aprender sobre bosques y parques en nuestra página web?</label>
                <input type="text" id="pregunta4" name="pregunta4" required>
            </div>
            <div class="form-group">
                <button type="submit" style="display: block; margin: 0 auto;">Enviar</button>
            </div>
        </form>
    </div>
    

</body>
</html>