/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.ASISTENCIA;
import Modelo.DOCENTE_DAO;
import Modelo.NOTAS;
import Modelo.OBSERVACIONES;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

/**
 *
 * @author kimbe
 */
@WebServlet(name = "ControladorD", urlPatterns = {"/ControladorD"})
public class ControladorD extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        DOCENTE_DAO daao=new DOCENTE_DAO();
         String accion=request.getParameter("accion");
         switch(accion){
             case "Principal":
                
                 request.getRequestDispatcher("Vista/Admin/Dashboard.jsp").forward(request, response);
                 break;
             case "CREARDOCENTE":
  
                 request.getRequestDispatcher("Vista/Admin/Dashboard.jsp").forward(request, response);
                  JOptionPane.showMessageDialog(null, "!!Docente Creado correctamente!!");
                 break;
             case "Borrar":
                   
                   int id=Integer.valueOf(request.getParameter("id"));
             
              
                   int resp = JOptionPane.showConfirmDialog(null, "¿Esta seguro que desea eliminar Docente?", "Alerta!", JOptionPane.YES_NO_OPTION, JOptionPane.ERROR_MESSAGE);
        
        if (resp==0) {
          
             int resl=daao.Borrar(id);
             request.getRequestDispatcher("Vista/Admin/Mostrar_Docentes.jsp").forward(request, response);
             JOptionPane.showMessageDialog(null, "Operación realizada correctamente");
        }else{
             request.getRequestDispatcher("Vista/Admin/Mostrar_Docentes.jsp").forward(request, response);
             JOptionPane.showMessageDialog(null, "No se borro ningun Docenge");
        }
      
                 break;
                 
             case "CambiarEstadoDOCA":     
                 //capturar datos
                  int idEstadoA=Integer.valueOf(request.getParameter("idd"));
                   request.getRequestDispatcher("Vista/Admin/Mostrar_Docentes.jsp").forward(request, response);
                    int resl=daao.UpdateEstadoA(idEstadoA);

                  break;
                  
                  case "CambiarEstadoDOCI":     
                 //capturar datos
                  int idEstadoI=Integer.valueOf(request.getParameter("idd"));
                   
                   int resli=daao.UpdateEstadoI(idEstadoI);
                    request.getRequestDispatcher("Vista/Admin/Mostrar_Docentes.jsp").forward(request, response);
                    break;
                    
                  case "cambiarpassword":
                       request.getRequestDispatcher("Vista/Admin/Mostrar_Docentes.jsp").forward(request, response);
                      break;
                  case "ASIGNARNOTA":
                      NOTAS NOT=new NOTAS();
                      String idEVAA=request.getParameter("idEva");
                      String idSECC=request.getParameter("idsec");
                       NOT.setID_Seccion_AulaN(request.getParameter("idsec"));
                       NOT.setID_ALUMNON(request.getParameter("idA"));
                       NOT.setID_evalucionN(request.getParameter("idEva"));  
                       NOT.setNotaN(request.getParameter("txtNota"));
                        daao.CrearNota(NOT);
                 JOptionPane.showMessageDialog(null, " NOTA ASIGNADA !   ");
                       request.getRequestDispatcher("Vista/Docente/Asignacion_Notas.jsp").forward(request, response);
                      break;
                       case "ASIGNARASISTENCIA":
                           String idseccioo=request.getParameter("idsec");
                           int contador=Integer.parseInt(request.getParameter("cont"));
                           //JOptionPane.showMessageDialog(null, contador);
                           for (int i = 1; i <= contador; i++) {
                                String ASISTENCIAA="";                             
                               ASISTENCIAA=request.getParameter("Asistencia"+i)+"A";
                              /// System.out.println(ASISTENCIAA);
                                 if (ASISTENCIAA.equals("ASISTIOA")) {//NO ESTA FALTO
                                     
                    //JOptionPane.showMessageDialog(null, "ASISTIO "+request.getParameter("IDALUMNO"+i));
 
                   DOCENTE_DAO DAO=new DOCENTE_DAO();
                 ASISTENCIA ASIS=new ASISTENCIA();
                 ASIS.setID_Seccion_AulaA(idseccioo);
                 ASIS.setID_ALUMNOA(request.getParameter("IDALUMNO"+i));
                 ASIS.setAsistenciaA("ASISTIO");
                 DAO.CrearASISTENCIA(ASIS); 
                               }else{
                   //JOptionPane.showMessageDialog(null, "FALTO"+request.getParameter("IDALUMNO"+i));
                   DOCENTE_DAO DAO=new DOCENTE_DAO();
                   ASISTENCIA ASIS=new ASISTENCIA();
                   ASIS.setID_Seccion_AulaA(idseccioo);
                   ASIS.setID_ALUMNOA(request.getParameter("IDALUMNO"+i));
                   ASIS.setAsistenciaA("FALTO");
                   DAO.CrearASISTENCIA(ASIS); 
                                  
                                        
                                }
                           }
                            JOptionPane.showMessageDialog(null, "ASISTENCIA GUARDADA CON EXITO");
                           
                        request.getRequestDispatcher("Vista/Docente/Asignacion_Asitencia.jsp").forward(request, response);
                       break;
                       
                       case "ASIGNAROBSER":
                           DOCENTE_DAO DAO=new DOCENTE_DAO();
                           OBSERVACIONES OBSER=new OBSERVACIONES();
                           String nivel=request.getParameter("check")+"A";
                           if (nivel.equalsIgnoreCase("Muy GraveA")) {
                               OBSER.setNIVELO(request.getParameter("check"));
                           }else{
                               OBSER.setNIVELO("Grave");
                           }
                            
                           OBSER.setID_Seccion_AulaO(request.getParameter("idseccio"));
                           OBSER.setID_ALUMNOO(request.getParameter("idalu"));
                           OBSER.setASUNTOO(request.getParameter("asunto"));
                           OBSER.setDESCARGOO(request.getParameter("descargo"));
                           DAO.CrearOBSERVACION(OBSER);
                           
                           
                           JOptionPane.showMessageDialog(null, " OBSERVACION ASIGNADA !   ");
                           request.getRequestDispatcher("Vista/Docente/ASIGNACION_OBSERVACION.jsp").forward(request, response); 
                           
                       break;
             default:
                     throw new AssertionError();
         } 
       
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
