<%-- 
    Document   : procesarSalario
    Created on : Jan 18, 2021, 8:18:05 PM
    Author     : salaz
--%>

<%@page import="clases.Retencion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        Retencion r = new Retencion(request.getParameter("salario"));
        
        %>
        <h1>Nombre: <%=request.getParameter("nombre")%></h1>
        <h2>Salario Bruto: <%= r.getSalario() %> €</h2>
        <h2>Retencion: <%= r.getRetencion() %> €</h2>
        <h2>Salario Neto <%= r.getSalarioNeto() %> €</h2>
    </body>
</html>
