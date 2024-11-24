<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Bienvenido al Sistema</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <!-- Barra de Navegación -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="home">Sistema de Reservas</a>
        <ul class="navbar-nav">
            <li class="nav-item"><a class="nav-link" href="servicios">Servicios</a></li>
        </ul>
    </nav>

    <!-- Contenido Principal -->
    <div class="container mt-5">
        <!-- Banner -->
        <div class="">
            <h1 class="display-4 fw-semibold">Bienvenido al Sistema de Reservas</h1>
            <p class="lead fw-medium">Seleccione un servicio y reserve su cita en segundos</p>
            <a href="servicios" class="btn btn-primary btn-lg btn">Ver Servicios</a>
        </div>

    </div>
</body>
</html>