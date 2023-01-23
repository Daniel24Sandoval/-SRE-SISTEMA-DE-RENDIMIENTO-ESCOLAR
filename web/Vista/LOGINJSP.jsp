<%-- 
    Document   : LOGINJSP
    Created on : oct 10, 2022, 11:50:30 p.m.
    Author     : kimbe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/assets/images_Dashboard//icono.svg" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css" integrity="sha512-1PKOgIY59xJ8Co8+NE6FZ+LOAZKjy+KY8iq0G4B3CyeY6wYHN3yt9PW0XpSriVlkMXe40PTKnXrLnZ9+fkDaog==" crossorigin="anonymous" />
<link rel="stylesheet" type="text/css "href="${pageContext.request.contextPath}/assets/CSS/estilos.css">
<link rel="stylesheet" type="text/css "href="${pageContext.request.contextPath}/assets/CSS/select.css">
 <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
 <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/CSS/loader.css"> 
<title>Acceso al sistema</title>
</head>
<body>
 
<canvas id="svgBlob"></canvas>

<div class="position">



    
    <form class="form-sign" action="${pageContext.request.contextPath}/Validar?accion=Validar" method="post">
    <div class="centering-wrapper">
      <div class="section1 text-center">
          <div class="primary-header">SISTEMA DE RENDIMIENTO<br> ESCOLAR</div>
		<div class="col-lg-10">	
	</div>
         <div class="input-position">
             
             
	 <div class="form-group">
            <h5 class="input-placeholder" id="email-txt">Correo<span class="error-message" id="email-error"></span></h5>
	    <input type="email" required="true" name="txt_email" class="form-style" id="logemail" autocomplete="off" style="margin-bottom: 20px;">
	    <i class="input-icon uil uil-at"></i>
	  </div>
            
            <%--  <input type="text"   name="txt_email" class="form-style" style="margin-bottom: 20px;"> --%>  
                
              <div class="form-group">
            <h5 class="input-placeholder" id="pword-txt">Contraseña<span class="error-message" id="password-error"></span></h5>
	    <input type="password" required="true" name="txt_password" class="form-style"  autocomplete="on">
	    <i class="input-icon uil uil-lock-alt"></i>
		</div>
		
		<%--     <input type="text" name="txtcontra" class="form-style"  autocomplete="on">--%>  
		
		
		
		
        </div>
		
        <div class="password-container"><a href="#" class="link">¿Ólvidaste tu contraseña?</a></div>
		
          <div class="btn-position">
         <!-- <a href="#" class="btn">Acceder</a>BOTON ACCERDER --> 
		  
		  <input type="submit" name="accion"  value="Ingresar" class="btn btn-success btn-block">  
        </div>
		
		
		
      </div>
      <div class="horizontalSeparator"></div>
      <div class="qr-login">
        <div class="qr-container">
       
            <img class="logo" src="${pageContext.request.contextPath}/assets/img/SRE_LOGO.svg"/>
          <canvas id="qr-code"></canvas>
        </div>
     
       
      </div>
    </div>
  </form>
  
  
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/qrious/4.0.2/qrious.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/login.js"></script>
<script>
$(document).ready(function () {
  $('#mostrar_contrasena').click(function () {
    if ($('#mostrar_contrasena').is(':checked')) {
      $('#contrasena').attr('type', 'text');
    } else {
      $('#contrasena').attr('type', 'txtcontra');
    }
  });
});
</script> 

<script>
$(window).on('load', function () {
      setTimeout(function () {
    $(".loader-page").css({visibility:"hidden",opacity:"0"})
  }, 200);
     
});
</script>
</body>
</html>


