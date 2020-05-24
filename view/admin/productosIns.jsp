<%@page import="web.validator.ProductosValidator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../../WEB-INF/jspf/zhead.jspf" %>        
    </head>
    <body>
        <br>
        <div class=" bg-light container border rounded">
            <form action="../../Productos" method="post" style="margin: auto; display: table"> 
                <input type="hidden" name="accion" value="INS"/>
                <fieldset>
                    <legend class="text-success text-center"> REGISTRAR NUEVO PRODUCTO</legend>
                    <c:if test="${message != null}">
                        <div class="alert alert-dismissible alert-danger">
                            <button type="button" class="close" data-dismiss="alert">&times;</button>
                            <strong>Verificar Datos!</strong> 
                            <p>${message}</p>
                        </div>
                    </c:if> 
                    <br/> 


                    <div class="form-group row">
                        <label class="col-md-4 col-form-label text-md-right">PRODUCTO</label>
                        <div class="col-md-8">
                            <input type="text" class="form-control" name="producto" style="width: 400px"
                                   placeholder="Ingrese el nombre del producto" value="${productos.producto}"/>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-md-4 col-form-label text-md-right">COMENTARIO</label>
                        <div class="col-md-8">
                            <input type="text" class="form-control" name="comentario" style="width: 400px"
                                   placeholder="Ingrese un comentario" value="${productos.comentario}"/>
                        </div>
                    </div>

                    <p class="text-right">
                        <button type="submit" class="btn btn-primary btn-lg"><i class="far fa-save"></i></span> &nbsp; GUARDAR </button> &nbsp;
                        <a class="btn btn-danger btn-lg" href="productos.jsp"><i class="far fa-window-close"></i> &nbsp; CANCELAR </a>
                    </p> 
                </fieldset>
            </form>
            <div style="display: none">
                <div id="dlg_message">
                    <p id="message"></p>
                </div>
            </div>          
        </div>
        <%@include file="../../WEB-INF/jspf/zfooter.jspf" %>
    </body>
</html>