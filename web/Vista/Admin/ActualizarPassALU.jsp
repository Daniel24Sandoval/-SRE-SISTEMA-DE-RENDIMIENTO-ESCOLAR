<%-- 
    Document   : UpdatePassALU
    Created on : oct 26, 2022, 10:24:08 p.m.
    Author     : kimbe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="shortcut icon" type="image/x-icon" href="../../assets/images/icono.svg" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css" integrity="sha512-1PKOgIY59xJ8Co8+NE6FZ+LOAZKjy+KY8iq0G4B3CyeY6wYHN3yt9PW0XpSriVlkMXe40PTKnXrLnZ9+fkDaog==" crossorigin="anonymous" />
<link rel="stylesheet" type="text/css "href="${pageContext.request.contextPath}/assets/CSS/estilos.css">
 <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"> 
<title>Acceso al sistema</title>
</head>
<body>

	
	
<canvas id="svgBlob"></canvas>


			
		
			


<div class="position">

    <% 
//capturar datos 
                  int IDPASS=Integer.parseInt(request.getParameter("idpass"));
                  String correopass=request.getParameter("correo");
                  
        %>


    <form class="container" action="${pageContext.request.contextPath}/UpdatePassALU?id=<%=IDPASS%>" method="post">
    <div class="centering-wrapper">
      <div class="section1 text-center">
	  
        <div class="primary-header">Cambio de Contraseña de Alumno </div>
  
        <div class="input-position">
		
		  <div class="form-group">
                                          <h5 class="input-placeholder" id="email-txt">ID Alumno<span class="error-message" id="email-error"></span></h5>
                                          <input type="text"   name="txt_ID"  placeholder="<%=IDPASS%>" class="form-style"  disabled="disabled" style="margin-bottom: 20px;">
                                             <i class="input-icon uil uil-at"></i>
                                            </div>
	  
	 
                          <div class="form-group">
                                          <h5 class="input-placeholder" id="email-txt">Correo<span class="error-message" id="email-error"></span></h5>
                                          <input type="email"   name="txt_email"  placeholder="<%=correopass%>" class="form-style"   disabled="disabled" style="margin-bottom: 20px;">
                                             <i class="input-icon uil uil-at"></i>
                                            </div>
               <div class="form-group">
            <h5 class="input-placeholder" id="pword-txt">Contraseña<span class="error-message" id="password-error"></span></h5>
	    <input type="password" required="true" name="txt_Newpassword"  placeholder="Cambia Contraseña" maxlength="8"  class="form-style"  autocomplete="on">
	    <i class="input-icon uil uil-lock-alt"></i>
		</div>

             
		
		<div class="row form-group" style="display:none;">
						<div class="col col-md-3"><label for="select" class=" form-control-label">Estado</label></div>
						<div class="col-12 col-md-9">
							<select name="txt_role"  class="form-control">
							
								<option value="admin">admin</option>
								
							</select>
						</div>
		</div>
	</div>
		
        <div class="password-container"></div>
		
          <div class="btn-position">
         <!--  <a href="#" class="btn">Acceder</a> -->
         
         
         
		 <input type="submit" onclick="mostrar()" name="accion" class="btn btn-primary btn-block" value="Actualizar Password">
                 
                  

        <script type="text/javascript">
            
            function mostrar(){
                swal("Alumno Registrado","Iniciar Sesion",'success');
         
                
            }
        </script>
        </div>
      </div>
	  
      <div class="horizontalSeparator"></div>
	  
      <div class="qr-login">
        <div class="qr-container">
         <!-- <img class="logo" src="https://cdn.discordapp.com/attachments/742854174324031528/771346778356318248/ChallengerCarl_2.png"/> --> 
         <img class="logo" src="${pageContext.request.contextPath}/assets/img/SRE_LOGO.svg"/>
          <canvas id="qr-code"></canvas>
        </div>
       
		
       
      </div>
	  
	  
    </div>
  </form>
  </div>
  
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/qrious/4.0.2/qrious.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/login.js"></script>
<script>
$(document).ready(function () {
  $('#mostrar_contrasena').click(function () {
    if ($('#mostrar_contrasena').is(':checked')) {
      $('#contrasena').attr('type', 'text');
    } else {
      $('#contrasena').attr('type', 'password');
    }
  });
});
</script> 
</body>
</html>