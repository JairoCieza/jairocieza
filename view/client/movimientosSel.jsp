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
        <title>Movimientos</title>
        <%@include file="../../WEB-INF/jspf/zhead.jspf" %>
    </head>
    <body>
        
        <div class="container mt-3">
            <div class="table-responsive">
                <h1 class="text-success text-center">LISTA DE MOVIMIENTOS</h1>
                <table class="table table-hover">
                    <thead class="thead-dark">
                        <tr>
                            <th>FECHA</th>
                            <th>TIPO</th>
                            <th>PRODUCTO</th>
                            <th>CANTIDAD</th>
                        </tr>
                    </thead>
                    <tbody>

                        <c:forEach var="f" items="${list}">
                            <tr class="table-light">
                                <th>${f[1]}</th>
                                <td>${f[3]}</td>
                                <td>${f[4]}</td>
                                <th class="text-center">
                                    <c:choose>
                                        <c:when test="${f[3]=='compra'}">
                                            <p class="text-success"> + ${f[2]}</p>
                                        </c:when>
                                        <c:otherwise>
                                            <p  class="text-danger"> - ${f[2]}</p>
                                        </c:otherwise>
                                    </c:choose>
                                </th>

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
        <%@include file="../../WEB-INF/jspf/zfooter.jspf" %>
    </body>
</html>
