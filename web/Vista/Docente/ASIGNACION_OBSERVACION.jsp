<%-- 
    Document   : ASIGNACION_OBSERVACION
    Created on : nov 30, 2022, 6:58:52 p.m.
    Author     : kimbe
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.ASISTENCIA"%>
<%@page import="Modelo.DOCENTE_DAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Panel administrativo</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="icon" type="image/png" sizes="96x96" href="../assets/images/icono.svg">
  <script src="../../assets/js_Dashboard/sweet-alert.min.js"></script>
    <script src="js_Dashboard/sweet-alert.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/CSS_Dashboard/sweet-alert.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/CSS_Dashboard/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-design-iconic-font.min.css"> 
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
      <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/CSS_Dashboard/normalize.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/CSS_Dashboard/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/CSS_Dashboard/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/CSS_Dashboard/style.css">
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js_Dashboard/modernizr.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js_Dashboard/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js_Dashboard/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js_Dashboard/main.js"></script>
    <link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">
<script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>
			<style>
	 .loading  {
		 position: fixed;
		 left: 0px;
		 top: 0px;
		 width: 100%;
		 height: 100%;
		 z-index: 9999;
		 background: url('${pageContext.request.contextPath}/assets/img/Loading_2.gif') 50% 50% no-repeat rgb(249,249,249);
		opacity: .8; }
	</style>
         
</head>
<body onload="startTime()">
<div class="loading"></div>

<%
    int idseccion=Integer.parseInt(request.getParameter("idsec"));
    DOCENTE_DAO ALUDAO = new DOCENTE_DAO();
                       
                        ArrayList<ASISTENCIA> ALUMNOList = ALUDAO.getAllALUMNOSI(idseccion);
                        Iterator<ASISTENCIA> iterator = ALUMNOList.iterator();
                        
                         ASISTENCIA ALU=new ASISTENCIA();
                         
                         
               
    %>
		
    <div class="navbar-lateral full-reset">
        <div class="visible-xs font-movile-menu mobile-menu-button"></div>
        <div class="full-reset container-menu-movile nav-lateral-scroll">
            <div class="logo full-reset all-tittles">
                <i class="visible-xs zmdi zmdi-close pull-left mobile-menu-button" style="line-height: 55px; cursor: pointer; padding: 0 10px; margin-left: 7px;"></i> 
                SRE
            </div>
            <div class="nav-lateral-divider full-reset"></div>
            <div class="full-reset" style="padding: 10px 0; color:#fff;">
                <figure>
                    <img src="${pageContext.request.contextPath}/assets/img/SREtraspa_1.png" alt="Biblioteca" class="img-responsive center-box" style="width:55%;">
                </figure>
                <p class="text-center" style="padding-top: 15px;">SISTEMA DE RENDIMIENTO<br> ESCOLAR</p>
            </div>
            <div class="nav-lateral-divider full-reset"></div>
                        <div class="full-reset nav-lateral-list-menu">
               <ul class="list-unstyled"><br><br>
                    <li  accesskey=""><a href="#"><i class="zmdi zmdi-male-alt zmdi-hc-fw"></i>&nbsp;&nbsp; INSTITUCION : <br>
                  COLEGIO PRIVADA DEL NORTE PERUANO<br>
                              ----------------------------------------------------------------<br>
                              PRIVATE SCHOOL OF THE NORTH PERUVIAN</a></li>
                      
                </ul>
            </div>
        </div>
    </div>
    <div class="content-page-container full-reset custom-scroll-containers">
        <nav class="navbar-user-top full-reset">
            <ul class="list-unstyled full-reset">
                <figure>
                    <img src="../../assets/images_Dashboard/user01.png" alt="user-picture" class="img-responsive img-circle center-box">
                </figure>
                <li style="color:#fff; cursor:default;">
                    <span class="all-tittles">Administrador</span>
                </li>
                <li  class="tooltips-general exit-system-button" data-href="../vista/cerrar_sesion.php" data-placement="bottom" title="Salir del sistema">
                    <i class="zmdi zmdi-power"></i>
                </li>
                
                <li class="mobile-menu-button visible-xs" style="float: left !important;">
                    <i class="zmdi zmdi-menu"></i>
                </li>
                <li class="desktop-menu-button hidden-xs" style="float: left !important;">
                    <i class="zmdi zmdi-swap"></i>
                </li>
            </ul>
        </nav>
		
		 <div class="container">
            <div class="page-header">
            
					
											 
							
				
            </div>
        </div>
		
		<div class="container-fluid">
            <ul class="nav nav-tabs nav-justified"  style="font-size: 17px;">
              
              <li role="presentation" class="active"><a href="#">Alumnos</a></li>
			  
          
            </ul>
        </div>
		
		 <div class="container-fluid"  style="margin: 50px 0;">
            <div class="row">
                <div class="col-xs-12 col-sm-4 col-md-3">
                    <img src="../../assets/images_Dashboard/user03.png" alt="user" class="img-responsive center-box" style="max-width: 110px;">
                </div>
                <div class="col-xs-12 col-sm-8 col-md-8 text-justify lead">
                    Bienvenido a la sección para registrar Observacion e Incidentes Ocurridos en Clase, Selecione al Alumno para asi Redactar el Informe.
                </div>
            </div>
        </div>
       
	
	<div class="container-fluid">
		<div class="row">
			<div class="col-xs-12 lead">
				<ol class="breadcrumb">
				  <li class="active">Listado de Alumnos</li>&nbsp;&nbsp;
				 
 				 
				 
				</ol>
			</div>
		</div>
	</div>
	
	 
			
			
		 
		<div class="alert alert-info text-center" style="margin-top:20px;">
			 
		</div>
		 
  <form class="container-md3" action="${pageContext.request.contextPath}/ControladorD" method="post">

	<div class="container-fluid">
            <h2 class="text-center all-tittles">Listado de Alumnos</h2>
			
			
			<div class="input-group mb-25" style="margin-right: -10em; min-width: 1000px;">
		  <div class="input-group-prepend">
			<span class="input-group-text" id="basic-addon1"></span>
		  </div>
		  <input id="FiltrarContenido" type="text" class="form-control" placeholder="Buscar alumnos..." aria-label="Alumnos" aria-describedby="basic-addon1"> 
                        </div>

            <div class="div-table">
             <table class="table table-striped">
                        <thead>
                          <tr>
                                                        <th>N*</th>
                                                        
							<th>ID SECCION</th>
                                                         <th>ID ALUMNO</th>
                                                           <th>NOMBRES</th> 
                                                           <th>CURSO</th>
                                                            <th>ASIGNAR OBSERVACION</th>
                                                             

                   
                          </tr>
                        </thead>
                        

                            
                        <tbody class="BusquedaRapida">
                           <%
                               

                        ALU.count=0;
                        
                         
                        while (iterator.hasNext()) {
                            ALU = iterator.next();
                            ALU.count++;
                    %> 
                    
                         <tr>
                               <th scope="row"><%= ALU.count%></th>
                              <td> <%=ALU.getID_Seccion_AulaA()%></td>
                                                      
                                 <td><%=ALU.getID_ALUMNOA()%> </td>	
                                 <td><%=ALU.getEXTRA()%> </td>
                                 <td><%=ALU.getID_asistenciaA()%></td>
                             <td> <a href="COLOCAR_OBSERVACION.jsp?idseci=<%=ALU.getID_Seccion_AulaA()%>&IDALU=<%=ALU.getID_ALUMNOA()%>" title="OBSEVACIONES" data-backdrop="false" class="btn btn-primary btn-sm" data-toggle="modal"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a></td>


                              </tr>
                         
                               <%  } ALU.count=0;%>
                                  
                        </tbody>
				 		
						
                      </table>     
                
              
                
            </div>
        </div>
	
          <br><br>
                                     </form>
		
        <div class="modal fade" tabindex="-1" role="dialog" id="ModalHelp">
          <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title text-center all-tittles">ayuda del sistema</h4>
                </div>
                <div class="modal-body">
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore dignissimos qui molestias ipsum officiis unde aliquid consequatur, accusamus delectus asperiores sunt. Quibusdam veniam ipsa accusamus error. Animi mollitia corporis iusto.
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="zmdi zmdi-thumb-up"></i> &nbsp; De acuerdo</button>
                </div>
            </div>
          </div>
        </div>
        
    </div>
                                 
                                 
                                 
                                 
                                    
                                 
                                 
                                 <script src="../../assets/js_Dashboard/reloj.js"></script> 
	 <!-- <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>-->
	 
	<script type="text/javascript">
$(document).ready(function () {
   (function($) {
       $('#FiltrarContenido').keyup(function () {
            var ValorBusqueda = new RegExp($(this).val(), 'i');
            $('.BusquedaRapida tr').hide();
             $('.BusquedaRapida tr').filter(function () {
                return ValorBusqueda.test($(this).text());
              }).show();
                })
      }(jQuery));
});
</script> 

 
  
   
	 
<!--- -----------------------------------------------------------------------------------------------------> 

	 	 	<script>
$(window).on('load', function () {
      setTimeout(function () {
    $(".loading").css({visibility:"hidden",opacity:"0"})
  }, 500);
     
});
</script>
	 <!--- -----------------------------------------------------------------------------------------------------> 
</body>
</html>
