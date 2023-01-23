/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.ALUMNO;
import Modelo.ALUMNO_DAO;
import Modelo.DOCENTE;
import Modelo.DOCENTE_DAO;
import Modelo.USER;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

/**
 *
 * @author DanielSan
 */
@WebServlet(name = "Validar", urlPatterns = {"/Validar"})
public class Validar extends HttpServlet {
    ALUMNO_DAO ALUdao=new ALUMNO_DAO();
    ALUMNO ALU=new ALUMNO();
    DOCENTE DOC=new DOCENTE();
    DOCENTE_DAO DOCDAO=new DOCENTE_DAO();
    USER USU=new USER();
    
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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Validar</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Validar at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
         String accion=request.getParameter("accion");
       switch(accion){
            case "Validar_D":       
                ///capturar datos
                  DOC.setCORREO_DOCEN(request.getParameter("txt_email"));
                  DOC.setCONTRA_DOCEN(request.getParameter("txt_password"));
                  DOCDAO.Validar(DOC);
                if (DOC.getDNI_DOCE()!=null) {
                   
                    JOptionPane.showMessageDialog(null, " S E S I O N   I N I C I A D A  ");
                        ///utilizamos el metodos DOGET, PARA PODER ENVIAR PARAMETROS
                     request.setAttribute("NOMBRE",DOC.getNOMBRE_DOCEN());
                     request.setAttribute("APELLIDO",DOC.getAPELLIDO_DOCEN());
                      request.setAttribute("CORREO",DOC.getCORREO_DOCEN());
                       request.setAttribute("DNI",DOC.getDNI_DOCE());
                       request.setAttribute("ESTADO",DOC.getESTADO_DOCEN());
                     String id=DOC.getID_DOCENT();
                   RequestDispatcher docente=request.getRequestDispatcher("Vista/Docente/Dasboard_Docente.jsp?id="+id);
                   docente.forward(request, response);  
                 
                }else{
                     JOptionPane.showMessageDialog(null, " E R R O R  ! \n Inicie sesion de nuevo  !! ");
                    
                  request.getRequestDispatcher("Vista/Docente/Login_Docente.jsp").forward(request, response);
                  
                } break;
                case "Validar":       
                ///capturar datos --administrador
                  USU.setCorreoU(request.getParameter("txt_email"));
                  USU.setPassU(request.getParameter("txt_password"));
                 ALUdao.Validarad(USU);
                if (USU.getCorreoU()!=null) {
                   
                    JOptionPane.showMessageDialog(null, " S E S I O N   I N I C I A D A  ");
                        ///utilizamos el metodos DOGET, PARA PODER ENVIAR PARAMETROS
                     request.setAttribute("NOMBRE",USU.getPassU());
                      request.setAttribute("CORREO",USU.getCorreoU());
                     request.setAttribute("ROL",USU.getRolU());
                     String id=USU.getPassU();
                   RequestDispatcher docente=request.getRequestDispatcher("Vista/Admin/Dashboard.jsp?id="+id);
                   docente.forward(request, response);  
                 
                }else{
                     JOptionPane.showMessageDialog(null, " E R R O R  ! \n Inicie sesion de nuevo  !! ");
                    
                  request.getRequestDispatcher("Vista/Admin/LOGINJSP.jsp").forward(request, response);
                  
                }break;
                case "Validar_ALU":       
                ///capturar datos --  VALIDAR ALUMNO   
                   ALU.setCorreoA(request.getParameter("txt_email"));
                  ALU.setContraseñaA(request.getParameter("txt_password"));
                  ALUdao.Validar(ALU);
                if (ALU.getIDALUMMNO()!=null) {
                   
                    JOptionPane.showMessageDialog(null, " S E S I O N   I N I C I A D A  ");
                        ///utilizamos el metodos DOGET, PARA PODER ENVIAR PARAMETROS
                         request.setAttribute("NOMBRE",ALU.getNombreA());
                        request.setAttribute("APELLIDO",ALU.getApellidoA()); 
                         request.setAttribute("CORREO",ALU.getCorreoA());
                          request.setAttribute("ESTADO",ALU.getEstadoA());
                          
                     String id=ALU.getIDALUMMNO();
                   RequestDispatcher docente=request.getRequestDispatcher("Vista/Alumno/Dashboard_New.jsp?id="+id);
                   docente.forward(request, response);  
                 
                }else{
                     JOptionPane.showMessageDialog(null, " E R R O R  ! \n Inicie sesion de nuevo  !! ");
                    
                  request.getRequestDispatcher("Vista/Alumno/LOGIN_ALUMNO.jsp").forward(request, response);
                  
                }break;
                
                 
        }
        
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
