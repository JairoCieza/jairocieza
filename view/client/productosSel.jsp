<%-- 
    Document   : Listar todas las cuentas existentes en la Base de Datos
    Created on : 15/09/2019, 10:39:06 PM
    Author     : Grupo 5
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Productos</title>
        <%@include file="../../WEB-INF/jspf/zhead.jspf" %>
    </head>
    <body>
        <br>
        <div class="container">
            <div class="table-responsive">
                <h1 class="text-success text-center">LISTA DE PRODUCTOS</h1>
                <table class="table table-hover">
                    <thead class="thead-dark">
                        <tr>
                            <th>PRODUCTO</th>
                            <th>COMENTARIO</th>
                            <th>STOCK</th>
                        </tr>
                    </thead>
                    <tbody>
                        
                        <c:forEach var="f" items="${list}">
                            <tr class="table-light">
                                <th>${f.producto.toUpperCase()}</th>
                                <td>${f.comentario.toUpperCase()}</td>
                                <td>${f.stock}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <c:if test="${message != null}">
                    <div class="alert alert-dismissible alert-warning">
                        <button type="button" class="close" data-dismiss="alert">&times;</button>
                        <strong>¡Oops...!</strong> 
                        <p>${message}</p>
                    </div>
                </c:if>  
            </div>
        </div>

        <p>&nbsp;</p>

        <div style="display: none">
            <div id="dlg_message">
                <p id="message"></p>
            </div>
        </div>
        <%@include file="../../WEB-INF/jspf/zfooter.jspf" %>
    </body>
</html>
