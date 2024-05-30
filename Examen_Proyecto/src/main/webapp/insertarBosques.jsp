<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.producto.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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

      
		

    <div class="container">
        <div class="form-container1">
            <form action="registroBosque.jsp" method="post">
                <div class="form-group">
                    <label for="id">ID:</label>
                    <input type="text" id="id" name="id" required>
                </div>
                <div class="form-group">
                    <label for="categoria">Categoría:</label>
                        <%
						Categoria cat = new Categoria();
						out.print(cat.mostrarCategoria());
					%>
					</div>
					 <div class="form-group">
                </div>
                <div class="form-group">
                    <label for="nombre">Nombre:</label>
                    <input type="text" id="nombre" name="nombre" required>
                </div>
               
                <div class="form-group">
                    <label for="nombre">Cantidad</label>
                    <input type="text"  name="cantidad" required>
                </div>
                <div class="form-group">
                    <label for="nombre">Precio:</label>
                    <input type="text" name="precio" required>
                </div>
                 <div class="form-group">
                    <button type="submit">Ingresar</button>
                </div>
            </form>
        </div>
    </div>
    
</body>
</html>