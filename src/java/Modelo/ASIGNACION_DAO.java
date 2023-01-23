/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Config.CONEXION;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author kimbe
 */
public class ASIGNACION_DAO {
     CONEXION cn=new CONEXION();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
        //----------------------------------------DAO GENERAL----------------------------------------------------
     public USER Validar(USER US){
        
      String ESTUDIANTE="SELECT Correo_Alumno , Contrasena_Alu, ID_Rol FROM alumnos WHERE Correo_Alumno=? and Contrasena_Alu=?;"; ///nunca, pero nunca coloquen ' ' en los paramentros , pipipipipi

        try {
            con=CONEXION.abrir();
            ps=con.prepareStatement(ESTUDIANTE);
            ps.setString(1, US.getCorreoU());
            ps.setString(2, US.getPassU());
            rs=ps.executeQuery();
           if (rs.next()==true) {
              while(rs.next()){
                US.setCorreoU(rs.getString("Correo_Alumno"));
                US.setPassU(rs.getString("Contrasena_Alu"));
                US.setRolU(rs.getString("ID_Rol"));
              
           }
           }else{
                    String DOCENTE="SELECT Correo_Docente , Contrasena_Doc , ID_Rol FROM docente   WHERE Correo_Docente=? and Contrasena_Doc=?;"; 
                 con=CONEXION.abrir();
                 ps=con.prepareStatement(DOCENTE);
                 ps.setString(1, US.getCorreoU());
                 ps.setString(2, US.getPassU());
                 rs=ps.executeQuery();     
                 while(rs.next()){
                US.setCorreoU(rs.getString("Correo_Docente"));
                US.setPassU(rs.getString("Contrasena_Doc"));
                US.setRolU(rs.getString("ID_Rol"));
                   }   
         }
 
        } catch (Exception e) {
        }
       return US;
    }

     //------------------------------------DAO GRADO-------------------------------------------------------     
    public ArrayList getAllGrado() {
 
        ArrayList<GRADO> GRADOList = new ArrayList<>();
        try {
            String ConsultGradoList="SELECT * FROM `asignaciongrade`;";
            con=CONEXION.abrir();
            ps=con.prepareStatement(ConsultGradoList);
            rs=ps.executeQuery();
 

            while (rs.next()) {
                GRADO GRA=new GRADO();
                GRA.setID_gradoG(rs.getString("ID_grado"));
                GRA.setNivel_GradoG(rs.getString("Nivel_Grado"));
                GRA.setGrado_AcademicoG(rs.getString("Grado_Academico"));
                
                GRADOList.add(GRA);
                 
                 
            }
        } catch (SQLException ex) {
            Logger.getLogger(ALUMNO_DAO.class.getName()).log(Level.SEVERE, null, ex);
            System.err.print("error" + ex);
        }

        return GRADOList;

    }
    //------------------------------------------------------------------------------------------- 
     public int UpdateGrado(int idalumno,int idGrado){
       int resultado=0;
       
           String sqlUpdateGrado="UPDATE `alumnos` SET `ID_grado` = '"+idGrado+"' WHERE `alumnos`.`ID_ALUMNO` = "+idalumno+";";
           
       try {
           
            
           con=CONEXION.abrir();
            ps=con.prepareStatement(sqlUpdateGrado);
            resultado=ps.executeUpdate();
           
    
            
       } catch (Exception e) {
       }
        return resultado;
   }
    
        //------------------------------------------------------------------------------------------- 
  public GRADO CrearGrado(GRADO GRA){
      
    
       
           String sqlcreargrado="INSERT INTO `asignaciongrade`( `Nivel_Grado`, `Grado_Academico`) VALUES (?,?)";
           
       try {
           
           con=CONEXION.abrir();
            ps=con.prepareStatement(sqlcreargrado);
            
            ps.setString(1, GRA.getNivel_GradoG());
            ps.setString(2, GRA.getGrado_AcademicoG());
             
            ps.executeUpdate();
           
    
            
       } catch (Exception e) {
       }
        return GRA;
   }
        //------------------------------------------------------------------------------------------- 
 public int DeleteGrado(int idgrado){
       int resultado=0;
       
           String sqlElimnarGrado=" DELETE FROM `asignaciongrade` WHERE `asignaciongrade`.`ID_grado` = "+idgrado+";";
          
       try {
           
            
           con=CONEXION.abrir();
            ps=con.prepareStatement(sqlElimnarGrado);
            resultado=ps.executeUpdate();
           
    
            
       } catch (Exception e) {
       }
        return resultado;
   }
        //------------------------------------------------------------------------------------------- 
 
 
    //--------------------------------------DAO ASIGNATURA----------------------------------------------------- 
 
 
    public ASIGNATURA CrearAsignatura(ASIGNATURA ASIG){
  // variables de fecha
           Date fechaactual=new Date();
         SimpleDateFormat fechax=new SimpleDateFormat("YYYY-MM-dd");    
          String Fecha=fechax.format(fechaactual);
 
 
 String sqlcreargrado="INSERT INTO `asignatura`( `NOMBRE_ASIGNATURA`, `ID_grado`, `Fecha_Creacion_Asignatura`, `Estado_Asig`) VALUES (?,?,?,?);";
 
 try {
 
 con=CONEXION.abrir();
 ps=con.prepareStatement(sqlcreargrado);
 
 ps.setString(1, ASIG.getNOMBRE_ASIGNATURAA());
 ps.setString(2, ASIG.getID_gradoA());
  ps.setString(3, Fecha);
 ps.setString(4, "ACTIVO");
 
 ps.executeUpdate();
 
 
 
 } catch (Exception e) {
 }
 return ASIG;
 } 
    
       //------------------------------------------------------------------------------------------- 
 
    public ArrayList getAllAsignaturas() {
 
        ArrayList<ASIGNATURA> ASIGList = new ArrayList<>();
        try {
            String ConsultASIGList="SELECT a.ID_ASIGNATURA, a.NOMBRE_ASIGNATURA,CONCAT(g.Grado_Academico,' ', g.Nivel_Grado)Nivel_Grado, a.Fecha_Creacion_Asignatura, a.Estado_Asig FROM asignatura a INNER JOIN asignaciongrade g on a.ID_grado=g.ID_grado;";
            con=CONEXION.abrir();
            ps=con.prepareStatement(ConsultASIGList);
            rs=ps.executeQuery();
 

            while (rs.next()) {
                ASIGNATURA ASIG=new ASIGNATURA();
                ASIG.setID_ASIGNATURAA(rs.getString("ID_ASIGNATURA"));
                ASIG.setNOMBRE_ASIGNATURAA(rs.getString("NOMBRE_ASIGNATURA"));
                ASIG.setID_gradoA(rs.getString("Nivel_Grado"));
                ASIG.setFecha_Creacion_AsignaturaA(rs.getString("Fecha_Creacion_Asignatura"));
                ASIG.setEstado_AsigA(rs.getString("Estado_Asig"));
                
                ASIGList.add(ASIG);
                 
                 
            }
        } catch (SQLException ex) {
            Logger.getLogger(ALUMNO_DAO.class.getName()).log(Level.SEVERE, null, ex);
            System.err.print("error" + ex);
        }

        return ASIGList;

    }
    
    
    //--------------------------------------DAO EVALUACIONES----------------------------------------------------- 
    
     public EVALUACION CrearEvaluacion(EVALUACION EVAL){
   
 
                String sqlcrearEvalu="INSERT INTO `evaluaciones`( `ID_ASIGNATURA`, `Nombre_Evaluacion`, `Porcentaje`) VALUES (?,?,?);";
 
                try {
 
                con=CONEXION.abrir();
                ps=con.prepareStatement(sqlcrearEvalu);
 
                ps.setString(1, EVAL.getID_ASIGNATURAE());
                ps.setString(2, EVAL.getNombre_EvaluacionE());
                ps.setString(3, EVAL.getPorcentajeE());
 
                ps.executeUpdate();
 
 
 
                    } catch (Exception e) {
                }
                return EVAL;
                } 
    ///=---------------------------------------------------------------
     
     
      public ArrayList getAllEvaluaciones(int id) {
  
   
        ArrayList<EVALUACION> EVALList = new ArrayList<>();
        try {
            String ConsultEVALList="SELECT E.ID_evalucion, A.NOMBRE_ASIGNATURA, E.Nombre_Evaluacion, E.Porcentaje FROM evaluaciones E INNER JOIN asignatura A on A.ID_ASIGNATURA=E.ID_ASIGNATURA WHERE A.ID_ASIGNATURA="+id+";";
            con=CONEXION.abrir();
            ps=con.prepareStatement(ConsultEVALList);
            rs=ps.executeQuery();

 
         

            while (rs.next()) {
               EVALUACION EVAL=new EVALUACION();
                EVAL.setID_evalucionE(rs.getString("ID_evalucion"));
                EVAL.setID_ASIGNATURAE(rs.getString("NOMBRE_ASIGNATURA"));
                EVAL.setNombre_EvaluacionE(rs.getString("Nombre_Evaluacion"));
                EVAL.setPorcentajeE(rs.getString("Porcentaje"));
                
                EVALList.add(EVAL);
                 
                 
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(ALUMNO_DAO.class.getName()).log(Level.SEVERE, null, ex);
            System.err.print("error" + ex);
        }
 CONEXION.cerrar();
        return EVALList;

    }
              //------------------------------------------------------------------------------------------- 
 public int DeleteEvaluacion(int idEval){
       int resultado=0;
       
           String sqlElimnarEvaluacion=" DELETE FROM `evaluaciones` WHERE `ID_evalucion` = "+idEval+";";
          
       try {
           
            
           con=CONEXION.abrir();
            ps=con.prepareStatement(sqlElimnarEvaluacion);
            resultado=ps.executeUpdate();
           
    
            
       } catch (Exception e) {
       }
        return resultado;
   }
 
      //------------------------------------DAO SECCION-------------------------------------------------------  
 
      public SECCION CrearSeccion(SECCION SEC){
   
 
                String sqlcrearSec="INSERT INTO `seccion_aula`( `ID_DOCENTE`, `ID_ASIGNATURA`, `Fecha_Creacion_seccion`, `Estado_seccion`) VALUES (?,?,?,?);";  
 // variables de fecha
           Date fechaactual=new Date();
         SimpleDateFormat fechax=new SimpleDateFormat("YYYY-MM-dd");    
          String Fecha=fechax.format(fechaactual);
                try {
 
                con=CONEXION.abrir();
                ps=con.prepareStatement(sqlcrearSec);
 
                ps.setString(1, SEC.getID_DOCENTES());
                ps.setString(2, SEC.getID_ASIGNATURAS());
                ps.setString(3, Fecha);
                ps.setString(4, "ACTIVO");

                ps.executeUpdate(); 
 
 
 
                    } catch (Exception e) {
                }
                return SEC  ;
                } 
 
      
      //------------------------------------------------------------------------------------------- 
      
 public ArrayList getAllSeccion() {
 
        ArrayList<SECCION> SECList = new ArrayList<>();
        try {
            String ConsultASIGList="SELECT s.ID_Seccion_Aula, d.Nombre_Docente, a.NOMBRE_ASIGNATURA, CONCAT(G.Grado_Academico,' ', g.Nivel_Grado) Grado, s.Fecha_Creacion_seccion, s.Estado_seccion ,g.ID_grado FROM seccion_aula s INNER JOIN docente d on s.ID_DOCENTE=d.ID_DOCENTE INNER JOIN asignatura a on s.ID_ASIGNATURA=a.ID_ASIGNATURA INNER JOIN asignaciongrade g on g.ID_grado=a.ID_grado;";
            con=CONEXION.abrir();
            ps=con.prepareStatement(ConsultASIGList);
            rs=ps.executeQuery();
 

            while (rs.next()) {
                SECCION SEC=new SECCION();
                SEC.setID_Seccion_AulaS(rs.getString("ID_Seccion_Aula"));
                SEC.setID_DOCENTES(rs.getString("Nombre_Docente"));
                SEC.setID_ASIGNATURAS(rs.getString("NOMBRE_ASIGNATURA"));
                SEC.setGrado_S(rs.getString("Grado"));
                SEC.setFecha_Creacion_seccionS(rs.getString("Fecha_Creacion_seccion"));
                SEC.setEstado_seccionS(rs.getString("Estado_seccion"));
                 SEC.setID_Grado(rs.getString("ID_grado"));  
                SECList.add(SEC);
                 
                 
            }
        } catch (SQLException ex) {
            Logger.getLogger(ALUMNO_DAO.class.getName()).log(Level.SEVERE, null, ex);
            System.err.print("error" + ex);
        }

        return SECList;

    }
          //------------------------------------DAO INSCRIPCION CURSO-------------------------------------------------------  
      
      
   public ArrayList getAllAlumnoCond(int idGrado) {
 
        ArrayList<ALUMNO> ALUMNOList = new ArrayList<>();
        try {
            String ConsultAlumnList="SELECT a.ID_ALUMNO, a.ID_DNI, r.Nombre_rol , CONCAT(g.Grado_Academico,' ', g.Nivel_Grado)Nivel_Grado, a.Nombre_Alumno, a.Apellido_Alumno, a.Correo_Alumno, a.Contrasena_Alu, a.Fecha_Creacion_alunmo, a.Estado_Alu, g.ID_grado FROM alumnos a INNER JOIN rol r on a.ID_Rol=r.ID_Rol INNER JOIN asignaciongrade g on g.ID_grado=a.ID_grado WHERE a.ID_grado="+idGrado+" ORDER by Fecha_Creacion_alunmo DESC ;";
            con=CONEXION.abrir();
            ps=con.prepareStatement(ConsultAlumnList);
            rs=ps.executeQuery();
 

            while (rs.next()) {
                ALUMNO ALU = new ALUMNO();
                ALU.setIDALUMMNO(rs.getString("ID_ALUMNO"));
                ALU.setDNI(rs.getString("ID_DNI"));
                ALU.setID_RolA(rs.getString("Nombre_rol"));
                ALU.setID_grado(rs.getString("Nivel_Grado"));
                ALU.setNombreA(rs.getString("Nombre_Alumno"));
                ALU.setApellidoA(rs.getString("Apellido_Alumno"));
                ALU.setCorreoA(rs.getString("Correo_Alumno"));
                ALU.setContraseñaA(rs.getString("Contrasena_Alu"));
                ALU.setFCreateA(rs.getString("Fecha_Creacion_alunmo"));
                ALU.setEstadoA(rs.getString("Estado_Alu"));
                ALU.setID_gradoN(rs.getString("ID_grado"));
                ALUMNOList.add(ALU);
                 
                 
            }
        } catch (SQLException ex) {
            Logger.getLogger(ALUMNO_DAO.class.getName()).log(Level.SEVERE, null, ex);
            System.err.print("error" + ex);
        }

        return ALUMNOList;

    }
    //-------------------------------------------------------------------------------------------
    public INSCRIPCION CrearINSCRIPCION(INSCRIPCION INS){
   
 
                String sqlcrearSec="INSERT INTO `inscripcion_curso`(`ID_ALUMNO`, `ID_Seccion_Aula`, `Fecha_Creacion_inscripcion`, `Estado_inscripcion`) VALUES (?,?,?,?);";  
 // variables de fecha
           Date fechaactual=new Date();
         SimpleDateFormat fechax=new SimpleDateFormat("YYYY-MM-dd");    
          String Fecha=fechax.format(fechaactual);
                try {
 
                con=CONEXION.abrir();
                ps=con.prepareStatement(sqlcrearSec);
 
                ps.setString(1, INS.getID_ALUMNOI());
                ps.setString(2, INS.getID_Seccion_AulaI());
                ps.setString(3, Fecha);
                ps.setString(4, "ACTIVO");

                ps.executeUpdate(); 
 
 
 
                    } catch (Exception e) {
                }
                return INS  ;
                } 
 
      
      //------------------------------------------------------------------------------------------- 
    
       public ArrayList getAllIntegrantesSeccion(int idseccion) {
 
        ArrayList<SECCION> SECCIONList = new ArrayList<>();
        try {
            String ConsultSeccionList="SELECT i.ID_Seccion_Aula, concat(d.Nombre_Docente , ' ',d.Apellido_Docente)Docente,concat(a.Nombre_Alumno, ' ', a.Apellido_Alumno)Alumno , concat(gr.Grado_Academico,' ',gr.Nivel_Grado) Grado, \n" +
"asi.NOMBRE_ASIGNATURA,i.Fecha_Creacion_inscripcion, i.Estado_inscripcion  FROM inscripcion_curso i \n" +
"INNER JOIN alumnos a on i.ID_ALUMNO=a.ID_ALUMNO \n" +
"INNER JOIN seccion_aula s ON S.ID_Seccion_Aula=i.ID_Seccion_Aula\n" +
"INNER JOIN docente d ON s.ID_DOCENTE=d.ID_DOCENTE \n" +
"INNER JOIN asignatura asi ON asi.ID_ASIGNATURA=s.ID_ASIGNATURA\n" +
"INNER JOIN asignaciongrade gr on asi.ID_grado=gr.ID_grado WHERE i.ID_Seccion_Aula="+idseccion+";";
            con=CONEXION.abrir();
            ps=con.prepareStatement(ConsultSeccionList);
            rs=ps.executeQuery();
 

            while (rs.next()) {
                SECCION SEC = new SECCION();
                SEC.setID_Seccion_AulaS(rs.getString("ID_Seccion_Aula"));
                SEC.setID_DOCENTES(rs.getString("Docente"));
                SEC.setGrado_S(rs.getString("Alumno"));
                SEC.setID_Grado(rs.getString("Grado"));
                SEC.setID_ASIGNATURAS(rs.getString("NOMBRE_ASIGNATURA"));
                SEC.setFecha_Creacion_seccionS(rs.getString("Fecha_Creacion_inscripcion"));
                SEC.setEstado_seccionS(rs.getString("Estado_inscripcion"));
                SECCIONList.add(SEC);
                 
                 
            }
        } catch (SQLException ex) {
            Logger.getLogger(ALUMNO_DAO.class.getName()).log(Level.SEVERE, null, ex);
            System.err.print("error" + ex);
        }

        return SECCIONList;

    }
    //-------------------------------------------------------------------------------------------
}
