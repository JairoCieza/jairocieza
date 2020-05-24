<%-- 
    Document   : Listar todas las productos existentes en la Base de Datos
    Created on : 15/09/2019, 10:39:06 PM
    Author     : Grupo 5
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>    
        <%@include file="../../WEB-INF/jspf/zhead.jspf" %>
    </head>
    <body>
        <br>
        <div class="container h-95">
            <div class="table-responsive">
                <div class="container mt-3 text-center">
                    <h1>LISTA DE PRODUCTO</h1>
                </div>
                <br/>
                <table class="table table-hover">
                    <thead class="thead-dark">
                        <tr>
                            <th>
                                <a href="#" onclick="productosIns();"><i class="fab fa-searchengin"></i></a>
                            </th>
                            <th>ID</th>
                            <th>PRODUCTO</th>
                            <th>COMENTARIO</th>
                            <th>STOCK</th>
                            <th>
                                <a href="#" onclick="productosIns();"><i class="fas fa-plus-circle"></i></a>
                            </th>
                            <th>
                                <a href="#" onclick="productosDel();"><i class="far fa-trash-alt"></i></a>
                            </th>
                            <th>
                                <a href="#" onclick="productosUpd();"><i class="far fa-edit"></i></a>
                            </th>
                        </tr>
                    </thead>

                    <tbody>
                        <c:forEach var="f" items="${list}">
                            <tr class="table-light">
                                <th colspan="2">${f.idproductos}</th>
                                <th>${f.producto.toUpperCase()}</th>
                                <td>${f.comentario.toUpperCase()}</td>
                                <td colspan="2">${f.stock}</td>
                                <th>
                                    <input type="checkbox" name="idproducto_del" 
                                           value="${f.idproductos}"/>
                                </th>
                                <th>
                                    <input type="radio" name="idproducto_upd"
                                           value="${f.idproductos}"/>
                                </th>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>

                <p>&nbsp;</p>
                <c:if test="${message != null}">
                    <div class="ui-state-error ui-corner-all" 
                         style="margin: auto;display: table;padding: 10px 20px">
                        ${message}
                    </div>
                </c:if>

                <div style="display: none">
                    <div id="dlg_message">
                        <p id="message"></p>
                    </div>
                </div>
            </div>
        </div>


        <p>&nbsp;</p>
        <c:if test="${message != null}">
            <div class="ui-state-error ui-corner-all" 
                 style="margin: auto;display: table;padding: 10px 20px">
                ${message}
            </div>
        </c:if>

        <div style="display: none">
            <div id="dlg_message">
                <p id="message"></p>
            </div>
        </div>

        <script type="text/javascript">
            function productosIns() {
                window.location = "view/admin/productosIns.jsp";
            }


            function productosDel() {
                var ids = [];

                $("input[name='idproducto_del']:checked").each(function () {
                    ids.push($(this).val());
                });
                if (ids.length === 0) {
                    message("Advertencia", "Seleccione fila(s) a Retirar");
                } else {
                    var exito = confirm('¿Seguro que deseas borrar el registro?');
                    if (exito) {
                        window.location = "Productos?accion=DEL&ids=" + ids.toString();
                    } else {
                        alert("Operación cancelada");
                    }
                }
            }

            function productosUpd() {
                var id = $("input[name='idproducto_upd']:checked").val();

                if (isNaN(id)) {

                } else {
                    window.location = "Productos?accion=GET&codigo=" + id;
                }
            }
        </script>
        <%@include file="../../WEB-INF/jspf/zfooter.jspf" %>
    </body>
</html>