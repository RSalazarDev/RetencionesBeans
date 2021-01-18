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
        <% Double miSalario = Double.parseDouble(request.getParameter("salario"));%>
        <jsp:useBean id="ret" class="clases.Retencion"/>
        <jsp:setProperty name="ret" property="salario" value="<%=miSalario%>"/>
        <h1>Nombre: <%=request.getParameter("nombre")%></h1>
        <h2>Salario Bruto: <jsp:getProperty name="ret" property="salario"/> €</h2>
        <h2>Retencion: <jsp:getProperty name="ret" property="retencion"/> €</h2>
        <h2>Salario Neto <jsp:getProperty name="ret" property="salarioNeto"/> €</h2>
    </body>
</html>
