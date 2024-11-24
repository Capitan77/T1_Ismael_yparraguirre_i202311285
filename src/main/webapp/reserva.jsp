<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Reserva</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h1 class="mb-4">Reserva tu cita</h1>

        <!-- Recuperar el servicio seleccionado -->
        <%
            String servicio = request.getParameter("servicio");
        %>
        <p><strong>Servicio Seleccionado:</strong> <%= servicio %></p>

        <!-- Mostrar mensaje de error si existe -->
        <%
            String error = (String) request.getAttribute("error");
            if (error != null) {
        %>
        <div class="alert alert-danger" role="alert">
            <%= error %>
        </div>
        <% } %>

        <form action="ReservaServlet" method="post">
            <input type="hidden" name="servicio" value="<%= servicio %>">
            <div class="mb-3">
                <label for="nombre" class="form-label">Nombre:</label>
                <input type="text" class="form-control" id="nombre" name="nombre" required>
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Email:</label>
                <input type="email" class="form-control" id="email" name="email" required>
            </div>
            <div class="mb-3">
                <label for="fecha" class="form-label">Fecha y Hora:</label>
                <input type="datetime-local" class="form-control" id="fecha" name="fecha" required>
            </div>
            <button type="submit" class="btn btn-primary">Reservar</button>
        </form>
    </div>
</body>
</html>