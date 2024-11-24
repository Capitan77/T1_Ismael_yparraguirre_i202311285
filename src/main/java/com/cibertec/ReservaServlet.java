package com.cibertec;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@WebServlet("/ReservaServlet")
public class ReservaServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Obtener los datos del formulario
        String nombre = req.getParameter("nombre");
        String email = req.getParameter("email");
        String fechaStr = req.getParameter("fecha");
        String servicio = req.getParameter("servicio");

        // Parsear la fecha
        LocalDateTime fechaIngresada;
        try {
            fechaIngresada = LocalDateTime.parse(fechaStr, DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm"));
        } catch (Exception e) {
            req.setAttribute("error", "Formato de fecha inválido.");
            req.getRequestDispatcher("reserva.jsp").forward(req, resp);
            return;
        }

        // Validar si la fecha es mayor a la actual
        LocalDateTime fechaActual = LocalDateTime.now();
        if (fechaIngresada.isBefore(fechaActual)) {
            req.setAttribute("error", "La fecha debe ser mayor a la actual.");
            req.getRequestDispatcher("reserva.jsp").forward(req, resp);
            return;
        }

        // Pasar los datos a la página de detalle
        req.setAttribute("nombre", nombre);
        req.setAttribute("email", email);
        req.setAttribute("fecha", fechaIngresada);
        req.setAttribute("servicio", servicio);

        // Redirigir a detalle.jsp
        req.getRequestDispatcher("Detalle.jsp").forward(req, resp);
    }
}