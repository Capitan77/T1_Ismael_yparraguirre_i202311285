<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Servicios</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h1 class="mb-4">Servicios Disponibles</h1>
        <div class="row">
            <div class="col-md-4">
                <div class="card text-center">
                    <div class="card-body">
                        <h5 class="card-title">Desarrollo Web</h5>
                        <a href="reserva.jsp?servicio=Desarrollo%20Web" class="btn btn-primary">Reservar</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card text-center">
                    <div class="card-body">
                        <h5 class="card-title">Desarrollo Móvil</h5>
                        <a href="reserva.jsp?servicio=Desarrollo%20Móvil" class="btn btn-primary">Reservar</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card text-center">
                    <div class="card-body">
                        <h5 class="card-title">Consultoría Tecnológica</h5>
                        <a href="reserva.jsp?servicio=Consultoría%20Tecnológica" class="btn btn-primary">Reservar</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>