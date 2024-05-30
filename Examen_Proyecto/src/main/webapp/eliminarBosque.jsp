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
	int cod=Integer.parseInt(request.getParameter("cod"));
	Producto cp =new Producto();
	boolean f=cp.EliminarProducto(cod);
	if(f==true){
		response.sendRedirect("categoriaBosque.jsp");
	}
	%>
</body>
</html>