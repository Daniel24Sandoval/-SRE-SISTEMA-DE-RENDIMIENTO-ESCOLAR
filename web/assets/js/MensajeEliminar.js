/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

  function mostrar(){
                
                
                        swal({
                            title: "¿Deseas Eliminar este Alumno?",
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
                            window.location = "${pageContext.request.contextPath}/Controlador?accion=Borrar&id=<%=ALU.getIDALUMMNO()%>"
                            } else {
                            swal("¡OK!",
                            "Sigan Viendo",
                            "error");
                            }
                            });
                
                
                 
                 
            }