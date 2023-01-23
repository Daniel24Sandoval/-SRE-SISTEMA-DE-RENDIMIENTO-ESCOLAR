<%-- 
    Document   : Opciones
    Created on : nov 16, 2022, 2:38:39 p.m.
    Author     : kimbe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Panel administrativo</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="Shortcut Icon" type="image/x-icon" href="assets/icons/book.ico" />
    
    <link rel="icon" type="image/png/svg" sizes="96x96" href="img/SRE_fontTra.svg">
 <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <script src="js_Dashboard/sweet-alert.min.js"></script>
   <!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/CSS_Dashboard/sweet-alert.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/CSS_Dashboard/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-design-iconic-font.min.css"> 
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/CSS_Dashboard/normalize.css">
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
                    <img src="${pageContext.request.contextPath}/assets/images_Dashboard/user01.png" alt="user-picture" class="img-responsive img-circle center-box">
                </figure>
                <li style="color:#fff; cursor:default;">
                    <span class="all-tittles">
			DOCENTE		 
				</span>
                </li>
                <li  class="tooltips-general exit-system-button" data-href="../cerrar_sesion.php" data-placement="bottom" title="Salir del sistema">
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
              <h1 class="all-tittles">
              	  
					<small>Hola   ${NOMBRE}  </small>
					
					</h1>
					
					<h5>
					<strong>Tu Ultimo  acceso es el dia  <br</strong>
					<div id="date" style="margin-left:168px; margin-top:-15px;"></div>
					 
					</h5>
					
											 
							
				
            </div>
                                        <%
                                            String ID=request.getParameter("idS");
                                            String IDsec=request.getParameter("idseccion");
                                            %>
        </div>
                                        <h1 style="text-align: center">OPCIONES   </h1>  <br>
                                         <br>
		  <section class="full-reset text-center" style="padding: 20px 25px;">
                      <article>
		
       
                          <div style="align-content: center" class="row">
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
                    <h5 class="tile-icon full-reset"><i class="zmdi zmdi-accounts-list"></i></h5>
          <h5 class="card-title">ASIGNACION DE NOTAS</i></h5><br>
        <p class="card-text">Aqui podras Asignar las Notas de los Alumnos</p>
        <a href="${pageContext.request.contextPath}/Vista/Docente/Asignacion_Notas.jsp?idasignatura=<%=ID%>&idsec=<%=IDsec%>" class="btn btn-primary">IR</a>
      </div>
    </div>
  </div>
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
                    <h5 class="tile-icon full-reset"><i class="zmdi zmdi-accounts-list"></i></h5>
          <h5 class="card-title">TOMAR ASISTENCIA</i></h5><br>
        <p class="card-text">Aqui podras Tomar la Asistencia de los Alumnos</p>
        <a href="${pageContext.request.contextPath}/Vista/Docente/Asignacion_Asitencia.jsp?idsec=<%=IDsec%>" class="btn btn-primary">IR</a>
      </div>
    </div>
  </div> 
      
      <div class="col-sm-6 center-box" style="align-content: center"><br><br><br>
    <div class="card">
      <div class="card-body">
                    <h5 class="tile-icon full-reset"><i class="zmdi zmdi-accounts-list"></i></h5>
          <h5 class="card-title">OBSERVACIONES DURANTE LA CLASE</i></h5><br>
        <p class="card-text">Aqui podras Asignar Observacion o Incidentes de los Alumnos</p>
        <a href="${pageContext.request.contextPath}/Vista/Docente/ASIGNACION_OBSERVACION.jsp?idsec=<%=IDsec%>" class="btn btn-primary">IR</a>
      </div>
    </div>
  </div>                 
     
   
</div>
	
        <br><br><br>      
           
       </article>
                       </section>
        <div class="modal fade" tabindex="-1" role="dialog" id="ModalHelp">
          <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title text-center all-tittles">AYUDA DEL SISTEMA</h4>
                </div>
                <div class="modal-body">
                   Si tiene problemas con el Sistema, comuniquese con el Area de Soporte al siguiente numero: 967608502
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="zmdi zmdi-thumb-up"></i> &nbsp; De acuerdo</button>
                </div>
            </div>
          </div>
        </div>
        
    </div>
<script src="${pageContext.request.contextPath}/assets/js_Dashboard/reloj.js"></script> 
	 	<script>
$(window).on('load', function () {
      setTimeout(function () {
    $(".loading").css({visibility:"hidden",opacity:"0"})
  }, 500);
     
});
</script>
</body>
</html>

