<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.producto.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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

	
	<article>
	<% 
		int cod=Integer.parseInt(request.getParameter("cod"));
		Producto mp=new Producto();
		mp.CosulEditarProductos(cod);
	%>
	<br>
	<br>
	<form action="editarBosque.jsp" method="post">
	Codigo Producto: <input type="text" name="editarcod" value="<%=cod%>"/>
	<br>
	Categoria: <output><%=mp.getId_cat()%></output>
	<br>
	Nombre: <input type="text" name="editardesc" value="<%= mp.getNombre()%>"/>
	<br>
	Precio: <input type="text" name="editarprec" value="<%= mp.getPrecio()%>"/>
	<br>
	Cantidad: <input type="text" name="editarcant" value="<%= mp.getCantidad()%>"/>
	<br>
	<button type="submit" name="Actualizar">ACTUALIZAR</button>
	</form>
	
		
	</article>

</body>
</html>