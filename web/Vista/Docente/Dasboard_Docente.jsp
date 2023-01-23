<%-- 
    Document   : Dasboard_Docente
    Created on : nov 12, 2022, 8:13:20 p.m.
    Author     : kimbe
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Modelo.SECCION"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.DOCENTE_DAO"%>
<%@page import="Modelo.DOCENTE"%>
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
   
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
   
    <script src="js_Dashboard/sweet-alert.min.js"></script>
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
                <ul class="list-unstyled">
                    			 <li><a href="#"><i class="zmdi zmdi-male-alt zmdi-hc-fw"></i>&nbsp;&nbsp; NOMBRES : <br> &nbsp;&nbsp; ${NOMBRE} ${APELLIDO}</a></li>
                      <li><a href="#"><i class="zmdi zmdi-male-alt zmdi-hc-fw"></i>&nbsp;&nbsp; CORREO : <br>  &nbsp;&nbsp;${CORREO}  </a></li>
                       <li><a href="#"><i class="zmdi zmdi-male-alt zmdi-hc-fw"></i>&nbsp;&nbsp; ESTADO : <br> &nbsp;&nbsp; ${ESTADO}  </a></li>
                  <li><a href="#"><i class="zmdi zmdi-male-alt zmdi-hc-fw"></i>&nbsp;&nbsp; DNI : <br> &nbsp;&nbsp;  ${DNI} </a></li>
  
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
        </div>
                                        <h1 style="text-align: center">LISTADO DE SECCIONES   </h1>  
		  <section class="full-reset text-center" style="padding: 40px 0;">
		 <%
  int idd=Integer.valueOf(request.getParameter("id"));
 
                        DOCENTE_DAO AsigDao = new DOCENTE_DAO();
                       
                        ArrayList<SECCION> SECList = AsigDao.getAllSeccionid(idd);
                        Iterator<SECCION> iterator = SECList.iterator();
                         SECCION SEC=new SECCION();
                        

                        while (iterator.hasNext()) {
                            SEC = iterator.next();
                            SEC.count++;
                    %> 
		
       
            <a href="${pageContext.request.contextPath}/Vista/Docente/Opciones.jsp?idS=<%=SEC.getID_Grado()%>&idseccion=<%= SEC.getID_Seccion_AulaS()%>">
                <article class="tile"><br>
                                          <div class="tile-icon full-reset"><i class="zmdi zmdi-accounts-list"><br><br><br><br></i></div><br><br>
                    <div class="tile-name all-tittles"><%=SEC.getID_ASIGNATURAS()%><br>------------<br> <%=SEC.getGrado_S()%></div>

                       <div class="tile-num full-reset"> </div></a>  
                       
                       
                       
                       
                </article>
           
           
       
                      <%  } SEC.count=0;%>
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

