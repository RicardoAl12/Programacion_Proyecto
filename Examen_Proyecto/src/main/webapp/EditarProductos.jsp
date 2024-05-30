<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.producto.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<%
		int cod=Integer.parseInt(request.getParameter("editarcod"));
		String nombre=request.getParameter("editardesc");
		float pre=Float.parseFloat(request.getParameter("editarprec"));
		int can =Integer.parseInt(request.getParameter("editarcant"));
		
		Producto mp= new Producto();
		boolean actualizado=mp.ModificarProducto(cod, nombre, pre, can);
		if(actualizado==true){
			
			response.sendRedirect("busqueda.jsp");
		}else{
			out.print("ALGO SALIO MAL");
		}
		
		
	%>
		
</body>
</html>