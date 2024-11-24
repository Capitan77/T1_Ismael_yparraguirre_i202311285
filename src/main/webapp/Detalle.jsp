<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Detalles de la Reserva</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h1 class="mb-4">Detalles de tu Reserva</h1>
        <ul class="list-group">
            <li class="list-group-item"><strong>Nombre:</strong> <%= request.getAttribute("nombre") %></li>
            <li class="list-group-item"><strong>Email:</strong> <%= request.getAttribute("email") %></li>
            <li class="list-group-item"><strong>Fecha:</strong> <%= request.getAttribute("fecha") %></li>
            <li class="list-group-item"><strong>Servicio:</strong> <%= request.getAttribute("servicio") %></li>
        </ul>
        <a href="index.jsp" class="btn btn-secondary mt-3">Volver al Inicio</a>
    </div>
</body>
</html>