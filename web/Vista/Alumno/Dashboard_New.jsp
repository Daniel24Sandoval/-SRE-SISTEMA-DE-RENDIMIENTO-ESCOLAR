<%-- 
    Document   : Dashboard_New
    Created on : nov 25, 2022, 9:37:54 p.m.
    Author     : kimbe
--%>

<%@page import="Modelo.OBSERVACIONES"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.ASISTENCIA"%>
<%@page import="Modelo.NOTAS"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.ASIGNATURA"%>
<%@page import="Modelo.ALUMNO_DAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Panel Estudiantil</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="Shortcut Icon" type="image/x-icon" href="assets/icons/book.ico" />
    
    <link rel="icon" type="image/png/svg" sizes="96x96" href="img/SRE_fontTra.svg">
 <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
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
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

     <!-- Favicon -->
   <link rel="icon" type="image/x-icon" href="../assets/img/favicon/favicon.ico" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
      rel="stylesheet"
    />

    <!-- Icons. Uncomment required icon fonts -->
    <link rel="stylesheet" href="../assets/vendor/fonts/boxicons.css" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/CSS_Dashboard/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/CSS_Dashboard/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/CSS_Dashboard/demo.css" />

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/CSS_Dashboard/perfect-scrollbar.css" />

    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/CSS_Dashboard/apex-charts.css" />

    <!-- Page CSS -->

    <!-- Helpers -->
    <script src="../assets/vendor/js/helpers.js"></script>

    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="${pageContext.request.contextPath}/assets/js/config.js"></script>
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
 <%
                   //array universal
                            ArrayList<ASIGNATURA> ListaASIGNATURA=new ArrayList<>();
                            double SUMANTASPROMEDIO=0;
                        ALUMNO_DAO AsigDao = new ALUMNO_DAO();
                        int idse=Integer.parseInt(request.getParameter("id"));
                        //------------------------------
                        ArrayList<ASIGNATURA> GradoList = AsigDao.getAllCURSOSCODID(idse);
                        Iterator<ASIGNATURA> iterator = GradoList.iterator();
                         ASIGNATURA ASI=new ASIGNATURA();
                        

                        while (iterator.hasNext()) {
                            ASI = iterator.next();
                            ASI.count++;
                            
                            ASI.setNOMBRE_ASIGNATURAA(ASI.getNOMBRE_ASIGNATURAA());
                            //System.out.println(ASI.getNOMBRE_ASIGNATURAA());
                            ListaASIGNATURA.add(ASI);
                            
                            ///ListaASIGNATURA.get(1).getNOMBRE_ASIGNATURAA();
                    
                } ASI.count=0;  
              
               
           
                
                for (int i = 0; i < 5; i++) {
                    
                         String agreg="";
                         ASI.setNOMBRE_ASIGNATURAA(agreg);
                         ListaASIGNATURA.add(ASI);
                    
                        
                    }
                
               
              %>
        <%
                      ArrayList<Double> SUMAPORCXCURSO=new ArrayList<>();
                      ArrayList<String> UltimaEva=new ArrayList<>();
                      ArrayList<Double> OBTENERULTIMANOTA=new ArrayList<>();
              for (int i = 0; i <ListaASIGNATURA.size(); i++) {
                       ALUMNO_DAO AsigDaoo = new ALUMNO_DAO();
                       
                        ArrayList<NOTAS> NOTASList = AsigDaoo.getAllCURSOSSUMATORIO(idse,ListaASIGNATURA.get(i).getNOMBRE_ASIGNATURAA());
                        Iterator<NOTAS> iterator2 = NOTASList.iterator();
                         NOTAS NOT=new NOTAS();
                        
                            double sumatoria=0, ultimon=0;
                            String ultimEVA="";
                        while (iterator2.hasNext()) {
                            NOT = iterator2.next();
                            NOT.count++;
                            ultimEVA="";
                             ultimon=0;
                            sumatoria=sumatoria+Double.parseDouble(NOT.getRESERVA());
                            ultimon=Double.parseDouble(NOT.getNotaN());
                            ultimEVA=NOT.getID_evalucionN();
                            
               
                } 
                        OBTENERULTIMANOTA.add(ultimon);
                   SUMAPORCXCURSO.add(sumatoria);
                   UltimaEva.add(ultimEVA);
              //  JOptionPane.showMessageDialog(null, ultimon);
                  }
                int cont=0;
    for (int i = 0; i < ListaASIGNATURA.size(); i++) {
        
                
             
             if (ListaASIGNATURA.get(i).getNOMBRE_ASIGNATURAA()!="" ) {
                 cont++;
                     SUMANTASPROMEDIO=SUMANTASPROMEDIO+SUMAPORCXCURSO.get(i);
                 }
             
        }
                 //JOptionPane.showMessageDialog(null, SUMANTASPROMEDIO/cont);
               
              %>
              <body   onload="startTime()">
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
                       <li><a href="#"><i class="zmdi zmdi-male-alt zmdi-hc-fw"></i>&nbsp;&nbsp; ESTADO : <br> &nbsp;&nbsp; ACTIVO  </a></li>
                        
					
					
			  
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
			ALUMNO		 
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
		
		
       
		
		
        <section class="full-reset text-center" style="padding: 40px 0;">
 
            <ul class="navbar-nav flex-row align-items-center ms-auto">
                <!-- Place this tag where you want the button to render. -->
          
              </ul>
             

             <!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
              <div class="row">
                <div class="col-lg-16 mb-4 order-0">
                  <div class="card">
                    <div class="d-flex align-items-center row">
                      <div class="col-sm-16">
                          <div style="text-align: center"class="card-body">
                            <h5 style="text-align: center"class="card-title text-primary">Bienvenido  ${NOMBRE} ${APELLIDO} </h5>            
                            <p style="text-align: center center">BIENVENIDO AL PANEL DEL ALUMNO </p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                 
              <!-- RENDIMIENTO ACADEMICO -->
                <div class="col-20 col-lg-8 order-2 order-md-3 order-lg-2 mb-4">
                  <div class="card">
                    <div class="row row-bordered g-0">
                      <div class="col-md-15">
                        <h5 class="card-header m-0 me-2 pb-3">HISTORICO RENDIMIENTO ACADEMICO</h5>
                        <div id="totalRevenueChart" class="px-2"></div>
                      </div>

                    
                    </div>
                  </div> <br><br><br> 
                    <div class="row">
                <!-- TALLLERES -->
                <div class="col-md-10 col-lg-10 col-xl-6 order-0 mb-4">
                  <div class="card h-100">
                    <div class="card-header d-flex align-items-center justify-content-between pb-0">
                      <div class="card-title mb-0">
                          <h5 class="m-0 me-2"style="text-align: center">ASIGNATURAS</h5><br>
                        <small class="text-muted">NOTAS SUBIDAS RECIENTEMENTE</small>
                      </div>
                      <div class="dropdown">
                        <div class="dropdown-menu dropdown-menu-end" aria-labelledby="orederStatistics">
                             
                        </div>
                      </div>
                    </div>
                    <div class="card-body">
                      <div class="d-flex justify-content-between align-items-center mb-3">
                        <div class="d-flex flex-column align-items-center gap-1">
                            <br><br>
                        </div>
                         
                      </div>
                      <ul class="p-0 m-0">
                           <!-- cursos -->
                           <%
                               for (int i = 0; i < ListaASIGNATURA.size(); i++) {
                                       if (UltimaEva.get(i)!="") {
                                           %>
                                           <li class="d-flex mb-4 pb-1">
                          <div class="avatar flex-shrink-0 me-3">
                            <span class="avatar-initial rounded bg-label-primary"
                              ><i class="bx bx-mobile-alt"></i
                            ></span>
                          </div>
                          <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                            <div class="me-2">
                              <h6 class="mb-0"><%=ListaASIGNATURA.get(i).getNOMBRE_ASIGNATURAA()%></h6>
                              <small class="text-muted"><%=UltimaEva.get(i)%></small>
                            </div>
                            <div class="user-progress">
                                <small class="fw-semibold"><%=OBTENERULTIMANOTA.get(i)%></small>
                            </div>
                          </div>
                        </li>
                                             <%  
                                           }
                                   }
                               %>
                        
                        
                         <!-- cnten -->
                         
                      </ul>
                    </div>
                  </div>
                </div>
                <!--/ FINAL TALLER -->

                <!-- ASISTENCIA -->
                <div class="col-md-6 col-lg-6 order-1 mb-4">
                  <div class="card h-100">
                    <div style="text-align: center" class="card-header">
                      <ul class="nav nav-pills" role="tablist">
                        <li class="nav-item">
                         
                        </li>
                        <li  class="nav-item">
                            
                            <h5 class="card-header m-0 me-2 pb-8">ASISTENCIA DEL MES </h5>
                        </li>
                 
                      </ul>
                    </div>
                        <!--/ DIAGRAMAS DE ASISTENCIA -->
                                       <%
                       for (int i = 0; i < ListaASIGNATURA.size(); i++) {
                             if (ListaASIGNATURA.get(i).getNOMBRE_ASIGNATURAA()!="") {
                                 
                        ALUMNO_DAO ALUDAOA = new ALUMNO_DAO();
                        List<ASISTENCIA> ASISTENCIALIST = ALUDAOA.ASISTENCIAALUMNO(idse, ListaASIGNATURA.get(i).getNOMBRE_ASIGNATURAA());
                        Iterator<ASISTENCIA> iterator24 = ASISTENCIALIST.iterator();
                         ASISTENCIA ASIS=new ASISTENCIA();
                         int contadA=0;
                         int contadF=0;
                         int PORCENTJAEINASISTENCIA=0;
                         int PORCENTAJEASISTENCIA=0;
                         while (iterator24.hasNext()) {
                            ASIS = iterator24.next();
                            ASIS.count++;
                            if (ASIS.getAsistenciaA().equalsIgnoreCase("ASISTIO")) {
                                    contadA++;
                                   /// JOptionPane.showMessageDialog(null,"asistio");
                                }if (ASIS.getAsistenciaA().equalsIgnoreCase("FALTO")) {
                                        contadF++;
                                        //JOptionPane.showMessageDialog(null,"falto");
                                    }
                            
                          
                                        }
                          
                             
                            // JOptionPane.showMessageDialog(null,"A: "+(contadA*100)/5+" F"+(contadF*100)/5 );
                            %>
                         
                        <div
                                  id="myChart<%=i%>" style="width:100%; max-width:400px; height:200px;">
                                  </div>
 
                                  <script>
                                  google.charts.load('current', {'packages':['corechart']});
                                  google.charts.setOnLoadCallback(drawChart);

                                  function drawChart() {
                                  var data = google.visualization.arrayToDataTable([
                                    ['ASISTENCIA', 'POR%'],
                                    ['ASISTIO',<%=(contadA*100)/5%>],
                                    ['FALTO',<%=(contadF*100)/5%>] 

                                  ]);

                                  var options = {
                                    title:'ASIGNATURA: <%=ASIS.getEXTRA()%> '
                                  };

                                  var chart = new google.visualization.PieChart(document.getElementById('myChart<%=i%>'));
                                    chart.draw(data, options);
                                  }
                                  </script>    
                                   
  <%   } 
                      } %>
                                  
                  </div>
                            
                            
                         
                                  
                              
                </div>
                <!--/ FIN ASISTENCIA -->
                
               
                <!--/ Transactions -->
              </div>
                  
                </div>
              
                <!--/ BOX CURSO-->
                <div class="col-12 col-md-8 col-lg-4 order-3 order-md-2">
                  <div class="row">
                      
                      <h4>Desempeño Academico</h4>
                      
                      <%
                          for (int i = 0; i < ListaASIGNATURA.size(); i++) {
                               if (ListaASIGNATURA.get(i).getNOMBRE_ASIGNATURAA()!="") {
                                     %>    
                              <div class="col-6 mb-4">
                      <div class="card">
                        <div class="card-body">
                          <div class="card-title d-flex align-items-start justify-content-between">
                            <div class="avatar flex-shrink-0">
                                <img src="${pageContext.request.contextPath}/assets/img/icons/unicons/cc-primary.png" alt="Credit Card" class="rounded" />
                            </div>
                             
                          </div>
                          <span class="fw-semibold d-block mb-1"><%=ListaASIGNATURA.get(i).getNOMBRE_ASIGNATURAA()%> </span>
                          <h3 class="card-title mb-2"><%=Math.round(SUMAPORCXCURSO.get(i))%> / 20</h3>
                          
                          <% if (Math.round(SUMAPORCXCURSO.get(i))<=11) {%>
                               <small class="text-danger fw-semibold"><i class="bx bx-down-arrow-alt"></i> MALO</small>

                            <%  }if (Math.round(SUMAPORCXCURSO.get(i))>=12 && Math.round(SUMAPORCXCURSO.get(i))<=14 ) {%>
                                  <small class="text-warning fw-semibold"><i class="bx bx-up-arrow-alt"></i> REGULAR</small> 
                             <%  }if (Math.round(SUMAPORCXCURSO.get(i))>=15 && Math.round(SUMAPORCXCURSO.get(i))<=16) {%>
                             <small class="text-info fw-semibold"><i class="bx bx-up-arrow-alt"></i> BUENO</small>
                             <%  
                              }
                              if (Math.round(SUMAPORCXCURSO.get(i))>=17) {%>
                               <small class="text-success fw-semibold"><i class="bx bx-down-arrow-alt"></i> EXCELENTE</small>
                                    
                               <%}%>
                        </div>
                               
                              
                      </div>
                                  
                    </div>
                         
                         
                          <%   
                           }
                             
                              }  %>         
                    
                            
                            
                    <!-- </div>
    <div class="row"> -->
                    <div class="col-12 mb-4">
                      <div class="card">
                        <div class="card-body">
                          <div class="d-flex justify-content-between flex-sm-row flex-column gap-3">
                            <div class="d-flex flex-sm-column flex-row align-items-start justify-content-between">
                              <div class="card-title">
                                <h5 class="text-nowrap mb-2">PROMEDIO PONDERADO </h5>
                                <span class="badge bg-label-warning rounded-pill">AÑO 2022</span>
                              </div>
                              <div class="mt-sm-auto">
                                <small class="text-success text-nowrap fw-semibold"
                                       <% if ((Math.round(SUMANTASPROMEDIO/cont))<=12) {%>
                                       
                               <small class="text-danger fw-semibold"><i class="bx bx-down-arrow-alt"></i> BAJO</small>

                            <%  }if (Math.round(SUMANTASPROMEDIO/cont)>12 && (Math.round(SUMANTASPROMEDIO/cont))<=16 ) {%>
                                  <small class="text-info fw-semibold"><i class="bx bx-up-arrow-alt"></i> REGULAR</small> 
                             <%  }if (Math.round(SUMANTASPROMEDIO/cont)>16) {%>
                             <small class="text-success fw-semibold"><i class="bx bx-up-arrow-alt"></i> ALTO</small>
                             <%  
                              }
                              %>
                                    
                                <h3 class="mb-0"><%= Math.round(SUMANTASPROMEDIO/cont)%></h3>
                              </div>
                            </div>
                            <div id="profileReportChart"></div>
                          </div>
                        </div>
                      </div>
                    </div>
                     <!-- CLASES -->
                <div class="col-md-6 col-lg-12 order-2 mb-4">
                     
                  <div class="card h-100">
                    <div class="card-header d-flex align-items-center justify-content-between">
                      <h5 class="card-title m-0 me-2">OBSERVACIONES</h5>
                       
                    </div>
                    <div class="card-body">
                      <ul class="p-0 m-0">
                        <li class="d-flex mb-4 pb-1">
                          
                          <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                            <div class="me-2"><!-- obsr -->
                                
                                 <%

                        ALUMNO_DAO ALUDd = new ALUMNO_DAO();
                       
                        ArrayList<OBSERVACIONES> OBSERLIST = ALUDd.LISTAROBSERVACIONES(idse);
                        Iterator<OBSERVACIONES> iterator25 = OBSERLIST.iterator();
                         OBSERVACIONES OBSE=new OBSERVACIONES();
                        
                            int co=0;
                        while (iterator25.hasNext()) {
                            OBSE = iterator25.next();
                             co++;
                    %> 
                                
                                                            <div class="card">
                                <div class="card-header">
                                  OBSERVACION E INCIDENTE CON FECHA <%=OBSE.getFecha_observacionO()%>
                                  
                                </div>
                                <div class="card-body">
                                  <h5 class="card-title"><%=OBSE.getASUNTOO()%></h5>
                                  <p class="card-text"><%=OBSE.getDESCARGOO()%>.</p>
                                  
                                  <% if (OBSE.getNIVELO().equalsIgnoreCase("Muy Grave")) {%>
                                  <h2> <small   class="text-danger fw-semibold"><i class="bx bx-down-arrow-alt"></i> Muy Grave</small></h2>
                                    
                               <%}else{%>
                               <h2 >  <small   class="text-warning fw-semibold"><i class="bx bx-down-arrow-alt"></i> Grave</small></h2>
<%
}%>
                                </div>
                                              
                                                            </div><br><br>
                                                             <%  } co=0; %>
                                 <!-- obsr -->
                            </div>
                            
                          </div>
                        </li>
                        
                       
                      </ul>
                    </div>
                  </div>
                          <!-- / clases --> 
                </div>
                         
                  </div>
                </div>
                            
              </div>
              
            </div>
            <!-- / Content -->
            
                <!-- Footer -->
                <footer class="content-footer footer bg-footer-theme">
                  <div class="container-xxl d-flex flex-wrap justify-content-between py-2 flex-md-row flex-column">
                    <div class="mb-2 mb-md-0">


                    </div>
                  </div>
                </footer>
                <!-- / Footer -->

                <div class="content-backdrop fade"></div>
              </div>
              <!-- Content wrapper -->
            </div>
            <!-- / Layout page -->
          </div>

      <!-- Overlay -->
      <div class="layout-overlay layout-menu-toggle"></div>
    </div>
    <!-- / Layout wrapper -->


    <!-- Core JS -->
    <!-- build:js assets/vendor/js/core.js -->
    <script src="${pageContext.request.contextPath}/assets/vendor/libs/jquery/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/assets/vendor/libs/popper/popper.js"></script>
    <script src="${pageContext.request.contextPath}/assets/vendor/js/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

    <script src="${pageContext.request.contextPath}/assets/vendor/js/menu.js"></script>
    <!-- endbuild -->

    <!-- Vendors JS -->
    <script src="${pageContext.request.contextPath}/assets/vendor/libs/apex-charts/apexcharts.js"></script>

    <!-- Main JS -->
    <script src="${pageContext.request.contextPath}/assets/js/main.js"></script>

    <!-- Consul -->
   
    
                           <script>
                               
'use strict';

(function () {
  let cardColor, headingColor, axisColor, shadeColor, borderColor;

  cardColor = config.colors.white;
  headingColor = config.colors.headingColor;
  axisColor = config.colors.axisColor;
  borderColor = config.colors.borderColor;

  // Total Revenue Report Chart - Bar Chart
  
   // --------------------------------------------------------------------
  
  
  
  const totalRevenueChartEl = document.querySelector('#totalRevenueChart'),
    totalRevenueChartOptions = {
        
        <% int s=10;%>
      series: [
        {
            ///por mostrar promedio por curso
          name: '2022',
          data: [<%=Math.round(SUMAPORCXCURSO.get(0))%> , 
                 <%=Math.round(SUMAPORCXCURSO.get(1))%>, 
                 <%=Math.round(SUMAPORCXCURSO.get(2))%>,
                 <%=Math.round(SUMAPORCXCURSO.get(3))%>,
                 <%=Math.round(SUMAPORCXCURSO.get(4))%>,
                 <%=Math.round(SUMAPORCXCURSO.get(5))%>,
                 <%=Math.round(SUMAPORCXCURSO.get(6))%>,
                 <%=Math.round(SUMAPORCXCURSO.get(7))%>,
                 <%=Math.round(SUMAPORCXCURSO.get(8))%>]
        },
        
      ],
      chart: {
        height: 300,
        stacked: true,
        type: 'bar',
        toolbar: { show: false }
      },
      plotOptions: {
        bar: {
          horizontal: false,
          columnWidth: '33%',
          borderRadius: 12,
          startingShape: 'rounded',
          endingShape: 'rounded'
        }
      },
      colors: [config.colors.primary, config.colors.info],
      dataLabels: {
        enabled: false
      },
      stroke: {
        curve: 'smooth',
        width: 6,
        lineCap: 'round',
        colors: [cardColor]
      },
      legend: {
        show: true,
        horizontalAlign: 'left',
        position: 'top',
        markers: {
          height: 8,
          width: 8,
          radius: 12,
          offsetX: -3
        },
        labels: {
          colors: axisColor
        },
        itemMargin: {
          horizontal: 10
        }
      },
      grid: {
        borderColor: borderColor,
        padding: {
          top: 0,
          bottom: -8,
          left: 20,
          right: 20
        }
      },
      xaxis: {
      
          
      ///por ahora solo 5 asignaturas mostrar
      
      
        categories: ['<%=ListaASIGNATURA.get(0).getNOMBRE_ASIGNATURAA()%>', 
                    '<%=ListaASIGNATURA.get(1).getNOMBRE_ASIGNATURAA()%>', 
                    '<%=ListaASIGNATURA.get(2).getNOMBRE_ASIGNATURAA()%>', 
                    '<%=ListaASIGNATURA.get(3).getNOMBRE_ASIGNATURAA()%>', 
                    '<%=ListaASIGNATURA.get(4).getNOMBRE_ASIGNATURAA()%>', 
                    '<%=ListaASIGNATURA.get(5).getNOMBRE_ASIGNATURAA()%>', 
                    '<%=ListaASIGNATURA.get(6).getNOMBRE_ASIGNATURAA()%>',
                    '<%=ListaASIGNATURA.get(7).getNOMBRE_ASIGNATURAA()%>'],
        labels: {
          style: {
            fontSize: '13px',
            colors: axisColor
          }
        },
        axisTicks: {
          show: false
        },
        axisBorder: {
          show: false
        }
      },
      yaxis: {
        labels: {
          style: {
            fontSize: '13px',
            colors: axisColor
          }
        }
      },
      responsive: [
        {
          breakpoint: 1700,
          options: {
            plotOptions: {
              bar: {
                borderRadius: 10,
                columnWidth: '32%'
              }
            }
          }
        },
        {
          breakpoint: 1580,
          options: {
            plotOptions: {
              bar: {
                borderRadius: 10,
                columnWidth: '35%'
              }
            }
          }
        },
        {
          breakpoint: 1440,
          options: {
            plotOptions: {
              bar: {
                borderRadius: 10,
                columnWidth: '42%'
              }
            }
          }
        },
        {
          breakpoint: 1300,
          options: {
            plotOptions: {
              bar: {
                borderRadius: 10,
                columnWidth: '48%'
              }
            }
          }
        },
        {
          breakpoint: 1200,
          options: {
            plotOptions: {
              bar: {
                borderRadius: 10,
                columnWidth: '40%'
              }
            }
          }
        },
        {
          breakpoint: 1040,
          options: {
            plotOptions: {
              bar: {
                borderRadius: 11,
                columnWidth: '48%'
              }
            }
          }
        },
        {
          breakpoint: 991,
          options: {
            plotOptions: {
              bar: {
                borderRadius: 10,
                columnWidth: '30%'
              }
            }
          }
        },
        {
          breakpoint: 840,
          options: {
            plotOptions: {
              bar: {
                borderRadius: 10,
                columnWidth: '35%'
              }
            }
          }
        },
        {
          breakpoint: 768,
          options: {
            plotOptions: {
              bar: {
                borderRadius: 10,
                columnWidth: '28%'
              }
            }
          }
        },
        {
          breakpoint: 640,
          options: {
            plotOptions: {
              bar: {
                borderRadius: 10,
                columnWidth: '32%'
              }
            }
          }
        },
        {
          breakpoint: 576,
          options: {
            plotOptions: {
              bar: {
                borderRadius: 10,
                columnWidth: '37%'
              }
            }
          }
        },
        {
          breakpoint: 480,
          options: {
            plotOptions: {
              bar: {
                borderRadius: 10,
                columnWidth: '45%'
              }
            }
          }
        },
        {
          breakpoint: 420,
          options: {
            plotOptions: {
              bar: {
                borderRadius: 10,
                columnWidth: '52%'
              }
            }
          }
        },
        {
          breakpoint: 380,
          options: {
            plotOptions: {
              bar: {
                borderRadius: 10,
                columnWidth: '60%'
              }
            }
          }
        }
      ],
      states: {
        hover: {
          filter: {
            type: 'none'
          }
        },
        active: {
          filter: {
            type: 'none'
          }
        }
      }
    };
  if (typeof totalRevenueChartEl !== undefined && totalRevenueChartEl !== null) {
    const totalRevenueChart = new ApexCharts(totalRevenueChartEl, totalRevenueChartOptions);
    totalRevenueChart.render();
  }

  // Growth Chart - Radial Bar Chart
  // --------------------------------------------------------------------
  const growthChartEl = document.querySelector('#growthChart'),
    growthChartOptions = {
      series:  [90],
      labels: ['Growth'],
      chart: {
        height: 240,
        type: 'radialBar'
      },
      plotOptions: {
        radialBar: {
          size: 150,
          offsetY: 10,
          startAngle: -150,
          endAngle: 150,
          hollow: {
            size: '55%'
          },
          track: {
            background: borderColor,
            strokeWidth: '100%'
          },
          dataLabels: {
            name: {
              offsetY: 15,
              color: headingColor,
              fontSize: '15px',
              fontWeight: '600',
              fontFamily: 'Public Sans'
            },
            value: {
              offsetY: -25,
              color: headingColor,
              fontSize: '22px',
              fontWeight: '500',
              fontFamily: 'Public Sans'
            }
          }
        }
      },
      colors: [config.colors.primary],
      fill: {
        type: 'gradient',
        gradient: {
          shade: 'dark',
          shadeIntensity: 0.5,
          gradientToColors: [config.colors.primary],
          inverseColors: true,
          opacityFrom: 10,
          opacityTo: 0.6,
          stops: [30, 70, 100]
        }
      },
      stroke: {
        dashArray: 5
      },
      grid: {
        padding: {
          top: -35,
          bottom: -10
        }
      },
      states: {
        hover: {
          filter: {
            type: 'none'
          }
        },
        active: {
          filter: {
            type: 'none'
          }
        }
      }
    };
    
     
  if (typeof growthChartEl !== undefined && growthChartEl !== null) {
    const growthChart = new ApexCharts(growthChartEl, growthChartOptions);
    growthChart.render();
  }

  // Profit Report Line Chart
  // --------------------------------------------------------------------
  const profileReportChartEl = document.querySelector('#profileReportChart'),
    profileReportChartConfig = {
      chart: {
        height: 80,
        // width: 175,
        type: 'line',
        toolbar: {
          show: false
        },
        dropShadow: {
          enabled: true,
          top: 10,
          left: 5,
          blur: 3,
          color: config.colors.warning,
          opacity: 0.15
        },
        sparkline: {
          enabled: true
        }
      },
      grid: {
        show: false,
        padding: {
          right: 8
        }
      },
      colors: [config.colors.warning],
      dataLabels: {
        enabled: false
      },
      stroke: {
        width: 5,
        curve: 'smooth'
      },
      series: [
        {
          data: [110, 270, 145, 245, 205, 285]
        }
      ],
      xaxis: {
        show: false,
        lines: {
          show: false
        },
        labels: {
          show: false
        },
        axisBorder: {
          show: false
        }
      },
      yaxis: {
        show: false
      }
    };
  if (typeof profileReportChartEl !== undefined && profileReportChartEl !== null) {
    const profileReportChart = new ApexCharts(profileReportChartEl, profileReportChartConfig);
    profileReportChart.render();
  }

  // Order Statistics Chart
  // --------------------------------------------------------------------
  const chartOrderStatistics = document.querySelector('#orderStatisticsChart'),
    orderChartConfig = {
      chart: {
        height: 165,
        width: 130,
        type: 'donut'
      },
      labels: ['Electronic', 'Sports', 'Decor', 'Fashion'],
      series: [85, 15, 50, 50],
      colors: [config.colors.primary, config.colors.secondary, config.colors.info, config.colors.success],
      stroke: {
        width: 5,
        colors: cardColor
      },
      dataLabels: {
        enabled: false,
        formatter: function (val, opt) {
          return parseInt(val) + '%';
        }
      },
      legend: {
        show: false
      },
      grid: {
        padding: {
          top: 0,
          bottom: 0,
          right: 15
        }
      },
      plotOptions: {
        pie: {
          donut: {
            size: '75%',
            labels: {
              show: true,
              value: {
                fontSize: '1.5rem',
                fontFamily: 'Public Sans',
                color: headingColor,
                offsetY: -15,
                formatter: function (val) {
                  return parseInt(val) + '%';
                }
              },
              name: {
                offsetY: 20,
                fontFamily: 'Public Sans'
              },
              total: {
                show: true,
                fontSize: '0.8125rem',
                color: axisColor,
                label: 'Weekly',
                formatter: function (w) {
                  return '38%';
                }
              }
            }
          }
        }
      }
    };
  if (typeof chartOrderStatistics !== undefined && chartOrderStatistics !== null) {
    const statisticsChart = new ApexCharts(chartOrderStatistics, orderChartConfig);
    statisticsChart.render();
  }

  // Income Chart - Area chart
  // --------------------------------------------------------------------
  const incomeChartEl = document.querySelector('#incomeChart'),
    incomeChartConfig = {
      series: [
        {
          data: [24, 21, 30, 22, 42, 26, 35, 29]
        }
      ],
      chart: {
        height: 215,
        parentHeightOffset: 0,
        parentWidthOffset: 0,
        toolbar: {
          show: false
        },
        type: 'area'
      },
      dataLabels: {
        enabled: false
      },
      stroke: {
        width: 2,
        curve: 'smooth'
      },
      legend: {
        show: false
      },
      markers: {
        size: 6,
        colors: 'transparent',
        strokeColors: 'transparent',
        strokeWidth: 4,
        discrete: [
          {
            fillColor: config.colors.white,
            seriesIndex: 0,
            dataPointIndex: 7,
            strokeColor: config.colors.primary,
            strokeWidth: 2,
            size: 6,
            radius: 8
          }
        ],
        hover: {
          size: 7
        }
      },
      colors: [config.colors.primary],
      fill: {
        type: 'gradient',
        gradient: {
          shade: shadeColor,
          shadeIntensity: 0.6,
          opacityFrom: 0.5,
          opacityTo: 0.25,
          stops: [0, 95, 100]
        }
      },
      grid: {
        borderColor: borderColor,
        strokeDashArray: 3,
        padding: {
          top: -20,
          bottom: -8,
          left: -10,
          right: 8
        }
      },
      xaxis: {
        categories: ['', 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul'],
        axisBorder: {
          show: false
        },
        axisTicks: {
          show: false
        },
        labels: {
          show: true,
          style: {
            fontSize: '13px',
            colors: axisColor
          }
        }
      },
      yaxis: {
        labels: {
          show: false
        },
        min: 10,
        max: 50,
        tickAmount: 4
      }
    };
  if (typeof incomeChartEl !== undefined && incomeChartEl !== null) {
    const incomeChart = new ApexCharts(incomeChartEl, incomeChartConfig);
    incomeChart.render();
  }

  // Expenses Mini Chart - Radial Chart
  // --------------------------------------------------------------------
  const weeklyExpensesEl = document.querySelector('#expensesOfWeek'),
    weeklyExpensesConfig = {
      series: [65],
      chart: {
        width: 60,
        height: 60,
        type: 'radialBar'
      },
      plotOptions: {
        radialBar: {
          startAngle: 0,
          endAngle: 360,
          strokeWidth: '8',
          hollow: {
            margin: 2,
            size: '45%'
          },
          track: {
            strokeWidth: '50%',
            background: borderColor
          },
          dataLabels: {
            show: true,
            name: {
              show: false
            },
            value: {
              formatter: function (val) {
                return '$' + parseInt(val);
              },
              offsetY: 5,
              color: '#697a8d',
              fontSize: '13px',
              show: true
            }
          }
        }
      },
      fill: {
        type: 'solid',
        colors: config.colors.primary
      },
      stroke: {
        lineCap: 'round'
      },
      grid: {
        padding: {
          top: -10,
          bottom: -15,
          left: -10,
          right: -10
        }
      },
      states: {
        hover: {
          filter: {
            type: 'none'
          }
        },
        active: {
          filter: {
            type: 'none'
          }
        }
      }
    };
  if (typeof weeklyExpensesEl !== undefined && weeklyExpensesEl !== null) {
    const weeklyExpenses = new ApexCharts(weeklyExpensesEl, weeklyExpensesConfig);
    weeklyExpenses.render();
  }
})();
 
                        </script>
    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
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
