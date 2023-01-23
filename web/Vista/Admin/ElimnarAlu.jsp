<%-- 
    Document   : ElimnarAlu
    Created on : oct 23, 2022, 7:44:03 p.m.
    Author     : kimbe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <script type="text/javascript">
                         function mostrar(){
                
                
                        swal({
                            title: "¿Deseas eliminar al Alumno?",
                            text: "No se podra deshacer este paso",
                            type: "warning",
                            showCancelButton: true,
                            confirmButtonColor: "#DD6B55",
                            confirmButtonText: "¡SI!",
                            cancelButtonText: "Volver",
                            closeOnConfirm: false,
                            closeOnCancel: false },

                            function(isConfirm){
                            if (isConfirm) {
                            swal("¡Hecho!",

                            "Has Eliminado al Alumno, Pipipipi",
                            "success");
                            window.location = ""
                            } else {
                            swal("¡OK!",
                            "Sigan Viendo",
                            "error");
                            }
                            });}
                
                </script>
    </body>
</html>
