<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@include file="../../WEB-INF/jspf/aaclient.jspf" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cliente</title>
        <%@include file="../../WEB-INF/jspf/zhead.jspf" %>
    </head>
    <body>
        <div>
            <%@include file="../../WEB-INF/jspf/menuclient.jspf" %>
        </div>

        <div class="container mt-5 text-center">
            <div class="embed-responsive embed-responsive-16by9">
                <iframe class="embed-responsive-item" name="cargar" src="ver.jsp" allowfullscreen>
                    
                </iframe>
            </div>
        </div>
        <%@include file="../../WEB-INF/jspf/zfooter.jspf" %>
    </body>
</html>
