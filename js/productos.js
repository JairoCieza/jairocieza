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
        message("Advertencia", "Seleccione fila a Modificar");
    } else {
        window.location = "Productos?accion=GET&codigo=" + id;
    }
}