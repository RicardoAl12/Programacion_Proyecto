<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.producto.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Categorias</title>
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
		<h1 style="color: green;">Buscar Bosques Y Parques</h1>
	</div>
	
 <div class="form-container">
        <form action="categoriaBosque.jsp" method="post">
            <label for="cmbCategoria">Seleccione una Categoría:</label>
            <%
                Categoria cat = new Categoria();
                out.print(cat.mostrarCategoria());
            %>
            <input type="submit" value="Buscar">
        </form>
    </div>
    
      <%
        // Capturar el ID de categoría de la solicitud
        String categoriaStr = request.getParameter("cmbCategoria");
        if (categoriaStr != null && !categoriaStr.isEmpty()) {
            try {
                int categoriaId = Integer.parseInt(categoriaStr);
                
                // Instanciar el objeto de la clase PRODUCTO
                Producto producto = new Producto();
                
                // Llamar al método buscarProductoCategoria
                
                String resultado = producto.consultarcategoria(categoriaId);
                
                // Mostrar el resultado en la página JSP
                out.print(resultado);
            } catch (NumberFormatException e) {
                out.print("<p>Error: El ID de categoría debe ser un número.</p>");
            }
        }
    %>
	


    
</body>
</html>