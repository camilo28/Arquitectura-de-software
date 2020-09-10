<%-- 
    Document   : editar
    Created on : 1/09/2020, 01:24:00 PM
    Author     : Camilo Barbosa
--%>

<%@page import="Modelo.CompaneroxEquipo"%>
<%@page import="ModeloDAO.CompaneroxEquipoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
             CompaneroxEquipoDAO dao=new CompaneroxEquipoDAO();
              int id=Integer.parseInt((String)request.getAttribute("idcomxequi"));
              CompaneroxEquipo p=(CompaneroxEquipo)dao.list(id);
          %>
            <h1>Modificar Compañero por Equipo</h1>
            <form action="Controlador">
                Id Companero: <br>
                <input class="form-control" type="text" name="txtCom" value="<%= p.getCompanero()%>"><br>
                Id Equipo: <br>
                <input class="form-control" type="text" name="txtEqui" value="<%= p.getEquipo()%>"><br>
                <input type="hidden" name="txtid" value="<%= p.getId()%>">
                <input class="btn btn-primary" type="submit" name="accion" value="ActualizarCompaneroxEquipo"> 
                <a href="Controlador?accion=listar">Regresar</a>
            </form>
    </body>
</html>
