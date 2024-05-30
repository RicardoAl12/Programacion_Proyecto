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
    // Obtén parámetros del formulario
    String str_id = request.getParameter("id");
    String pregunta1 = request.getParameter("pregunta1");
    String pregunta2 = request.getParameter("pregunta2");
    String pregunta3 = request.getParameter("pregunta3");
    String pregunta4 = request.getParameter("pregunta4");

    // Validación de parámetros
    if (str_id == null || pregunta1 == null || pregunta2 == null || pregunta3 == null || pregunta4 == null ||
        str_id.isEmpty() || pregunta1.isEmpty() || pregunta2.isEmpty() || pregunta3.isEmpty() || pregunta4.isEmpty()) {
        out.print("Error: Todos los campos son obligatorios.");
        return;
    }

    try {
        // Convertir parámetros a tipos adecuados
        int id = Integer.parseInt(str_id);
        
        // Instancia de la clase que maneja las preguntas
    	Producto pr = new Producto();

        // Inserción de las preguntas en la base de datos
        String resultado = pr.ingresarPregunta(id, pregunta1, pregunta2, pregunta3, pregunta4);

        // Mostrar el resultado de la inserción
        out.print(resultado);
    } catch (NumberFormatException e) {
        out.print("Error: Formato incorrecto en el campo de ID.");
    }
%>

</body>
</html>