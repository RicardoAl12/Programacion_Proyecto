<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.producto.seguridad.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Menu</title>
</head>
<body>

<%
	String usuario;
	HttpSession sesion = request.getSession();
	if (sesion.getAttribute("usuario") == null) //Se verifica si existe la variable
	{
		System.out.println("noUser");
	%>
	<jsp:forward page="administrador.jsp">
		<jsp:param name="error" value="Debe registrarse en el sistema." />
	</jsp:forward>
	<%
	} else {
	usuario = (String) sesion.getAttribute("usuario"); //Se devuelve los valores de atributos
	int perfil = (Integer) sesion.getAttribute("perfil");
	%>
	<div class="privado"><h2>Sitio Privado</h2></div>
	
	<h4>Bienvenido
		<%
	out.println(usuario);
	%>
	</h4>
	<%
	Pagina pag = new Pagina();
	String menu = pag.mostrarMenu(perfil);
	out.print(menu);
	}
	%>

</body>
</html>