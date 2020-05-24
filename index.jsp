<%-- 
    Document   : login
    Created on : 21/11/2019, 08:17:25 PM
    Author     : Administrador
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="WEB-INF/jspf/browser.jspf" %>
<%    session.invalidate();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <%@include file="WEB-INF/jspf/zhead.jspf" %>
        <link rel="shortcut icon" href="ico/ico.png">
        <link href="css/menu.css" rel="stylesheet" type="text/css"/>
    </head>

    <body>
        <form action="Login" method="post" style="margin: auto;display: table;margin-top: 50px">
            <input type="hidden" name="accion" value="LOGIN"/>
            <div class="wrapper fadeInDown">
                <div id="formContent">
                    <!-- Tabs Titles -->

                    <!-- Icon -->
                    <div class="fadeIn first">
                        <img src="https://image.flaticon.com/icons/svg/1000/1000946.svg" id="icon" alt="User Icon" />

                    </div>
                    <input type="text"  maxlength="50" id="login" class="fadeIn second" name="usuario" placeholder="usuario">
                    <input type="password" id="password" class="fadeIn third" name="clave" placeholder="contraseña">

                    <%-- para errores --%>
                    <c:if test="${msg.size() > 0}">
                        <%-- para errores --%>
                        <c:if test="${msg.size() > 0}">
                            <ul>
                                <c:forEach var="m" items="${msg}">
                                    <h6 style="color: red">${m}</h6>
                                </c:forEach>
                            </ul>
                        </c:if>
                    </c:if>

                    <input type="submit" class="fadeIn fourth" value="ACCEDER">
                    <!-- Remind Passowrd -->
                    <div id="formFooter">
                        <a class="underlineHover" href="#">¿Olvidó contraseña?</a>
                    </div>
                </div>
            </div>  
        </form>
        <%@include file="../../WEB-INF/jspf/zfooter.jspf" %>
    </body>
</html>
