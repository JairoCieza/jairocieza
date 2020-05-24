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
            <form action="Movimientos" method="post" style="margin: auto; display: table"> 
                <input type="hidden" name="accion" value="INS2"/>
                <fieldset>
                    <input type="hidden" name="tipo" style="width: 400px;"
                           value="venta" readonly="readonly"/>

                    <legend class="text-success text-center"> REGISTRAR NUEVA VENTA</legend>
                    <c:if test="${message != null}">
                        <div class="alert alert-dismissible alert-danger">
                            <button type="button" class="close" data-dismiss="alert">&times;</button>
                            <strong>Verificar Datos!</strong> 
                            <p>${message}</p>
                        </div>
                    </c:if> 
                    <br/> 


                    <div class="form-group row">
                        <label class="col-md-4 col-form-label text-md-right">PRODUCTO BTN</label>
                        <div class="col-md-8">
                            <select class="custom-select" name="idproducto" id="recargar" style="width: 400px" onclick="recargaar();">
                                <c:forEach var="i" items="${productos}">
                                    <option value="${i[0]}" >${i[1]} ${i[2]} ${i[3]} </option>
                                </c:forEach>
                            </select>
                        </div>
                    </div> 

                    <div class="form-group row">
                        <label class="col-md-4 col-form-label text-md-right">Cantidad</label>
                        <div class="col-md-8">
                            <input type="number" class="form-control" name="cantidad" style="width: 400px" step="1"
                                   placeholder="Ingrese cantidad del producto" value="${movimientos.cantidad}"/>
                        </div>
                    </div>

                    <p class="text-right">
                        <button type="submit" class="btn btn-primary btn-lg"><i class="far fa-save"></i></span> &nbsp; VENDER </button> &nbsp;
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
        <script type="text/javascript">
            function recargaar() {
                var campo = $('#recargar').val();
                if (campo === null) {
                    window.location = "Movimientos?accion=CBO&target=view/admin/ventas";
                }
            }
        </script>
        <%@include file="../../WEB-INF/jspf/zfooter.jspf" %>
    </body>
</html>