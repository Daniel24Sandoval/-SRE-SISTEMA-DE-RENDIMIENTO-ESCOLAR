/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.ALUMNO_DAO;
import Modelo.ASIGNACION_DAO;
import Modelo.ASIGNATURA;
import Modelo.EVALUACION;
import Modelo.GRADO;
import Modelo.INSCRIPCION;
import Modelo.SECCION;
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
@WebServlet(name = "ControladorG", urlPatterns = {"/ControladorG"})
public class ControladorG extends HttpServlet {
//// creando objetos
     GRADO GRA=new GRADO();
     ASIGNATURA ASIG=new ASIGNATURA();
     EVALUACION EVAL=new EVALUACION();
     SECCION SEC=new SECCION();
     INSCRIPCION INS=new INSCRIPCION();
     ASIGNACION_DAO daoo=new ASIGNACION_DAO();
    
    ///
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
        ASIGNACION_DAO daao=new ASIGNACION_DAO();
         String accion=request.getParameter("accion");
         switch(accion){
             case "AgregarGrado":
                //capturar datos
                
                 ASIGNACION_DAO daoo=new ASIGNACION_DAO();
                  GRA.setNivel_GradoG(request.getParameter("txtNivel"));
                 GRA.setGrado_AcademicoG(request.getParameter("txtGrado"));
                 
                 daao.CrearGrado(GRA);
                request.getRequestDispatcher("Vista/Admin/Dashboard.jsp").forward(request, response);

                  JOptionPane.showMessageDialog(null, " Grado Creado!!   ");
                 break;
             case "AsignarGrado":
                int idal=Integer.valueOf(request.getParameter("id"));
                int idgrado=Integer.valueOf(request.getParameter("cbogrado"));
                  int resli =daao.UpdateGrado(idal, idgrado);
                 request.getRequestDispatcher("Vista/Admin/Dashboard.jsp").forward(request, response);
                
                 JOptionPane.showMessageDialog(null, " Grado Asignado con Exito!   ");
                 break;
             case "CrearAsignatura":
                 ///capturar datos
                 ASIG.setNOMBRE_ASIGNATURAA(request.getParameter("txtasignatura"));
                  ASIG.setID_gradoA(request.getParameter("cbogrado"));
                 
                 daao.CrearAsignatura(ASIG);
                  request.getRequestDispatcher("Vista/Admin/Dashboard.jsp").forward(request, response);
                   JOptionPane.showMessageDialog(null, " Grado Creado con Exito!   ");
                   
                 break;
              
             case "CrearEvaluacion":
                  ///capturar datos
                 EVAL.setID_ASIGNATURAE(request.getParameter("id"));
                 EVAL.setNombre_EvaluacionE(request.getParameter("txtEvaluacion"));
                    EVAL.setPorcentajeE(request.getParameter("cboPorcentaje"));
    
                  
                  ///===============================================
                 if (EVAL.getPorcentajeE()!=null) {
                       daao.CrearEvaluacion(EVAL);
                  JOptionPane.showMessageDialog(null, " Evaluacion Creada!   ");
                  request.getRequestDispatcher("Vista/Admin/Crear_Evaluacion.jsp").forward(request, response);
                  
                 }else{
                      request.getRequestDispatcher("Vista/Admin/Dashboard.jsp").forward(request, response);
                   JOptionPane.showMessageDialog(null, " ERROR!   ");
                 }
               
                 
                 break;
             case "Borrar":
                  int idagrado=Integer.valueOf(request.getParameter("id"));
                 daao.DeleteGrado(idagrado);
                  JOptionPane.showMessageDialog(null, " Grado Borrado con Exito!   ");
                    request.getRequestDispatcher("Vista/Admin/Dashboard.jsp").forward(request, response);
                 break;
                 
                 
             case "EliminarEvaluacion":
                  int idEva=Integer.valueOf(request.getParameter("idE"));
                 daao.DeleteEvaluacion(idEva);
                  JOptionPane.showMessageDialog(null, " Evaluacion Eliminada!   ");
                  request.getRequestDispatcher("Vista/Admin/Crear_Evaluacion.jsp").forward(request, response);
                 break;
                 
                 
             case "CrearSeccion":
                 
                  ///capturar datos
                 SEC.setID_ASIGNATURAS(request.getParameter("cboAsig"));
                 SEC.setID_DOCENTES(request.getParameter("cboDocente"));
                daao.CrearSeccion(SEC);
                 JOptionPane.showMessageDialog(null, " Seccion Creada !   ");
                  request.getRequestDispatcher("Vista/Admin/Mostrar_Seccion.jsp").forward(request, response);
                 break;
             case "AsignarAlu":
                 INS.setID_ALUMNOI(request.getParameter("idALU"));
                 INS.setID_Seccion_AulaI(request.getParameter("idseccion"));
                 daao.CrearINSCRIPCION(INS);
                   JOptionPane.showMessageDialog(null, " Alumno Asociado !   ");
                  request.getRequestDispatcher("Vista/Admin/Mostrar_Seccion.jsp").forward(request, response);
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
