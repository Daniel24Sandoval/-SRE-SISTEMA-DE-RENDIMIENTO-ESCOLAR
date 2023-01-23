<%-- 
    Document   : Mostrar_Grado
    Created on : nov 1, 2022, 4:55:38 p.m.
    Author     : kimbe
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Modelo.GRADO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.ASIGNACION_DAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Panel administrativo</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="Shortcut Icon" type="image/x-icon" href="assets/icons/book.ico" />
    
    <link rel="icon" type="image/png/svg" sizes="96x96" href="img/SRE_fontTra.svg">
 
    <script src="js_Dashboard/sweet-alert.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/CSS_Dashboard/sweet-alert.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/CSS_Dashboard/material-design-iconic-font.min.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-design-iconic-font.min.css"> 
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"> <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/CSS_Dashboard/normalize.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/CSS_Dashboard/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/CSS_Dashboard/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/CSS_Dashboard/style.css">
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    
    <script src="${pageContext.request.contextPath}/assets/js_Dashboard/modernizr.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js_Dashboard/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js_Dashboard/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js_Dashboard/main.js"></script>
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
                <ul class="list-unstyled">
                    <li><a href="${pageContext.request.contextPath}/Vista/Admin/Dashboard.jsp"><i class="zmdi zmdi-view-dashboard zmdi-hc-fw"></i>&nbsp;&nbsp; Tablero</a></li>
                      <li><a href="${pageContext.request.contextPath}/Vista/Admin/Mostrar_Alumno.jsp"><i class="zmdi zmdi-face zmdi-hc-fw"></i>&nbsp;&nbsp; Alumnos</a></li>
                
			 <li><a href="${pageContext.request.contextPath}/Vista/Admin/Mostrar_Docentes.jsp"><i class="zmdi zmdi-male-alt zmdi-hc-fw"></i>&nbsp;&nbsp; Docentes</a></li>
					
					
			 <li><a href="${pageContext.request.contextPath}/Vista/Admin/Mostrar_Grado.jsp"><i class="zmdi zmdi-wrench zmdi-hc-fw"></i>&nbsp;&nbsp; Academico</a></li>
					
			 <li><a href="${pageContext.request.contextPath}/Vista/Admin/Mostrar_Seccion.jsp"><i class="zmdi zmdi-dns zmdi-hc-fw"></i>&nbsp;&nbsp; Asignaciones</a></li>
					
			 
                </ul>
            </div>
        </div>
    </div>
    <div class="content-page-container full-reset custom-scroll-containers">
        <nav class="navbar-user-top full-reset">
            <ul class="list-unstyled full-reset">
                <figure>
                    <img src="${pageContext.request.contextPath}/assets/images_Dashboard/user01.png" alt="user-picture" class="img-responsive img-circle center-box">
                </figure>
                <li style="color:#fff; cursor:default;">
                    <span class="all-tittles">
			ADMINISTRADOR		 
				</span>
                </li>
                <li  class="tooltips-general exit-system-button" data-href="../cerrar_sesion.php" data-placement="bottom" title="Salir del sistema">
                    <i class="zmdi zmdi-power"></i>
                </li>
                <li  class="tooltips-general search-book-button" data-href="searchbook.html" data-placement="bottom" title="Buscar libro">
                    <i class="zmdi zmdi-search"></i>
                </li>
				
				
	
				
				
                <li  class="tooltips-general btn-help" data-placement="bottom" title="Ayuda">
                    <i class="zmdi zmdi-help-outline zmdi-hc-fw"></i>
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
              <li role="presentation" class="active"><a href="#">Grado</a></li>
              <li role="presentation"><a href="${pageContext.request.contextPath}/Vista/Admin/Mostrar_Asignaturas.jsp">Asignatura</a></li>
              <li role="presentation"><a href="${pageContext.request.contextPath}/Vista/Admin/Mostrar_Evaluaciones.jsp">Evaluaciones</a></li>
 
            </ul>
        </div>
		
		 <div class="container-fluid"  style="margin: 50px 0;">
            <div class="row">
                <div class="col-xs-12 col-sm-4 col-md-3">
                    <img src="../../assets/images_Dashboard/lapices.png" alt="user" class="img-responsive center-box" style="max-width: 110px;">
                </div>
                <div class="col-xs-12 col-sm-8 col-md-8 text-justify lead">
                    Bienvenido a la seccion para registrar un nuevo grado, debes de llenar todos los campos del siguiente formulario para poder registrarlo.
                </div>
            </div>
        </div>
       
	
	<div class="container-fluid">
		<div class="row">
			<div class="col-xs-12 lead">
				<ol class="breadcrumb">
				  <li class="active">Listado de Grados</li>
				  <li><a href="${pageContext.request.contextPath}/Vista/Admin/Agregar_Grado.jsp">Nuevo grado</a></li>
				</ol>
			</div>
		</div>
	</div>
	
	
	
	 
	
	 
		<div class="alert alert-info text-center" style="margin-top:20px;">
			 <h3 class="text-center all-tittles">Listado de Grados</h3>
		</div>
		 

	<div class="container-fluid">
           
			
			
			<div class="input-group mb-5" style="margin-right: -10em; min-width: 1000px;">
		  <div class="input-group-prepend">
			<span class="input-group-text" id="basic-addon1">Buscar</span>
		  </div>
		  <input id="FiltrarContenido" type="text" class="form-control" placeholder="Buscar grado" aria-label="Grado" aria-describedby="basic-addon1">
		</div>


            <div class="div-table">
             <table class="table table-striped">
                        <thead>
                          <tr>
                              <th>N*</th>
                            <th>ID</th>
                            <th>Nivel Grado</th>
                            <th>Grado Academico</th>
                            <th>Acciones</th>
                            
                          
                          </tr> 
                        </thead>
                        <tbody class="BusquedaRapida">
                            <br>
                           <%

                        ASIGNACION_DAO AsigDao = new ASIGNACION_DAO();
                       
                        ArrayList<GRADO> GradoList = AsigDao.getAllGrado();
                        Iterator<GRADO> iterator = GradoList.iterator();
                         GRADO GRA=new GRADO();
                        

                        while (iterator.hasNext()) {
                            GRA = iterator.next();
                            GRA.count++;
                    %> 
                           <tr>
                               <td><%=GRA.count%> </td>
                              <td> <%= GRA.getID_gradoG()%></td>
                              <td><%=GRA.getNivel_GradoG()%> </td>
                              <td><%=GRA.getGrado_AcademicoG() %></td>
                              
                              



								<td>
                 <a  href="${pageContext.request.contextPath}/ControladorG?accion=Borrar&id=<%= GRA.getID_gradoG()%>"  title="Eliminar" data-backdrop="false" class="btn btn-danger btn-sm" data-toggle="modal"><span class="glyphicon glyphicon-trash"></span></a>

							</td>
							
                              </tr>
                               <%  } GRA.count=0;%>
                        </tbody>
                      </table>     
                
              
                
            </div>
			
        </div>
	
	
		
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
	 <script src="../assets/js/reloj.js"></script> 
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
		<script>
$(window).on('load', function () {
      setTimeout(function () {
    $(".loading").css({visibility:"hidden",opacity:"0"})
  }, 500);
     
});
	</script> 
	 
</body>
</html>