 
package Modelo;

import Config.CONEXION;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author kimbe
 */
public class DOCENTE_DAO {
    
    
    CONEXION cn=new CONEXION();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    
    
        public DOCENTE Validar(DOCENTE DOC){
    
        String consultaValidar="SELECT * FROM `docente` WHERE Correo_Docente=? AND Contrasena_Doc=?;"; ///nunca, pero nunca coloquen ' ' en los paramentros , pipipipipi
    
    
    try {
    con=CONEXION.abrir();
    ps=con.prepareStatement(consultaValidar);
    ps.setString(1, DOC.getCORREO_DOCEN());
    ps.setString(2, DOC.getCONTRA_DOCEN());
    rs=ps.executeQuery();
    while(rs.next()){
    DOC.setID_DOCENT(rs.getString("ID_DOCENTE"));
    DOC.setDNI_DOCE(rs.getString("DNI_DOCENTE"));
    DOC.setID_RolD(rs.getString("ID_Rol"));
    DOC.setNOMBRE_DOCEN(rs.getString("Nombre_Docente"));
    DOC.setAPELLIDO_DOCEN(rs.getString("Apellido_Docente"));
    DOC.setCORREO_DOCEN(rs.getString("Correo_Docente"));
    DOC.setCONTRA_DOCEN(rs.getString("Contrasena_Doc"));
    DOC.setTELEFONO_DOCEN(rs.getString("Telefono_doc"));
    DOC.setFECHA_DOCEN(rs.getString("Fecha_Creacion_Docente"));
    DOC.setESTADO_DOCEN(rs.getString("Estado_Doc"));
    
    }CONEXION.cerrar();
    
    } catch (Exception e) {
    }
    return DOC;
    
    } 
    //--------------------------------------------------------------------------------------------
    public DOCENTE CrearDocente(DOCENTE DOC){
        
        String CrearDocente="INSERT INTO `docente`(`ID_DOCENTE`, `DNI_DOCENTE`, `ID_Rol`, `Nombre_Docente`, `Apellido_Docente`, `Correo_Docente`, `Contrasena_Doc`, `Telefono_doc`, `Fecha_Creacion_Docente`, `Estado_Doc`) VALUES (?,?,?,?,?,?,?,?,?,?);";
         // variables de fecha
           Date fechaactual=new Date();
         SimpleDateFormat fechax=new SimpleDateFormat("YYYY-MM-dd");    
          String Fecha=fechax.format(fechaactual);
        try {
           con=CONEXION.abrir();
            ps=con.prepareStatement(CrearDocente);
            ps.setString(1, DOC.getID_DOCENT());
            ps.setString(2, DOC.getDNI_DOCE());
             ps.setString(3, "2"); ///por defecto docente
            ps.setString(4, DOC.getNOMBRE_DOCEN());
            ps.setString(5, DOC.getAPELLIDO_DOCEN());
            ps.setString(6, DOC.getCORREO_DOCEN());
            ps.setString(7, DOC.getCONTRA_DOCEN());
            ps.setString(8, DOC.getTELEFONO_DOCEN() );
            ps.setString(9, Fecha);
            ps.setString(10, "ACTIVO");
            
         ps.execute();
               
        } catch (Exception e) {
        }
        return DOC;
    }
     //-------------------------------------------------------------------------------------------
    public List getAll() {

        List<DOCENTE> DOCENTEList = new ArrayList<>();
        try {
            String ConsultAlumnList="SELECT d.ID_DOCENTE, d.DNI_DOCENTE, r.Nombre_rol, d.Nombre_Docente, d.Apellido_Docente, d.Correo_Docente, d.Contrasena_Doc, d.Telefono_doc, d.Fecha_Creacion_Docente, d.Estado_Doc FROM docente d INNER join rol r on d.ID_Rol=r.ID_Rol ORDER by Fecha_Creacion_Docente DESC;";
            con=CONEXION.abrir();
            ps=con.prepareStatement(ConsultAlumnList);
            rs=ps.executeQuery();
 

            while (rs.next()) {
                DOCENTE DOC=new   DOCENTE();
                DOC.setID_DOCENT(rs.getString("ID_DOCENTE"));
                DOC.setDNI_DOCE(rs.getString("DNI_DOCENTE"));
                DOC.setID_RolD(rs.getString("Nombre_rol"));
                DOC.setNOMBRE_DOCEN(rs.getString("Nombre_Docente"));
                DOC.setAPELLIDO_DOCEN(rs.getString("Apellido_Docente"));
                DOC.setCORREO_DOCEN(rs.getString("Correo_Docente"));
                DOC.setCONTRA_DOCEN(rs.getString("Contrasena_Doc"));
                DOC.setTELEFONO_DOCEN(rs.getString("Telefono_doc"));
                DOC.setESTADO_DOCEN(rs.getString("Estado_Doc"));
                DOC.setFECHA_DOCEN(rs.getString("Fecha_Creacion_Docente"));
                
                DOCENTEList.add(DOC);
                 
                 
            }
        } catch (SQLException ex) {
            Logger.getLogger(DOCENTE_DAO.class.getName()).log(Level.SEVERE, null, ex);
            System.err.print("error" + ex);
        }

        return DOCENTEList;

    }
    //-------------------------------------------------------------------------------------------   
    public int Borrar(int id){
       int resultado=0;
        String sqldelete="DELETE FROM `docente` WHERE ID_DOCENTE="+id+";";
        try {
           con=CONEXION.abrir();
            ps=con.prepareStatement(sqldelete);
            resultado=ps.executeUpdate();
            
       } catch (Exception e) {
       }
        return resultado;
   }
    //------------------------------------------------------------------------------------------- 
    public int UpdateEstadoA(int idd){
       int resultado=0;
       String estadoNuevo="INACTIVO";
           String sqlUpdateEstado="UPDATE `docente` SET `Estado_Doc`='"+estadoNuevo+"' WHERE ID_DOCENTE="+idd+";";
           
       try {
     
           con=CONEXION.abrir();
            ps=con.prepareStatement(sqlUpdateEstado);
            resultado=ps.executeUpdate();
      
       } catch (Exception e) {
       }
        return resultado;
   }
    //------------------------------------------------------------------------------------------- 
    public int UpdateEstadoI(int idd){
       int resultado=0;
 String estadoNuevo="ACTIVO";
           String sqlUpdateEstado="UPDATE `docente` SET `Estado_Doc`='"+estadoNuevo+"' WHERE ID_DOCENTE="+idd+";";
       try {
        con=CONEXION.abrir();
     
           con=CONEXION.abrir();
            ps=con.prepareStatement(sqlUpdateEstado);
            resultado=ps.executeUpdate();
   
       } catch (Exception e) {
       }
        return resultado;
   }
  //------------------------------------------------------------------------------------------- 
  public int UpdatePassword(int idpas, String Pass){
       int resultado=0;
           String sqlUpdateEstado="UPDATE `docente  ` SET `Contrasena_Doc`='"+Pass+"' WHERE ID_DOCENTE="+idpas+";";
       try {
            con=CONEXION.abrir(); 
            con=CONEXION.abrir();
            ps=con.prepareStatement(sqlUpdateEstado);
            resultado=ps.executeUpdate();
   
       } catch (Exception e) {
       }
        return resultado;
   }
   //-------------------------------------------------------------------------------------------
     public ArrayList getAllSeccionid(int iddocente) {
 
        ArrayList<SECCION> SECList = new ArrayList<>();
        try {
            String ConsultASIGList="SELECT s.ID_Seccion_Aula, d.Nombre_Docente, a.NOMBRE_ASIGNATURA, CONCAT(G.Grado_Academico,' ', g.Nivel_Grado) Grado, \n" +
"  s.Fecha_Creacion_seccion, s.Estado_seccion ,a.ID_ASIGNATURA FROM seccion_aula s INNER JOIN docente d on s.ID_DOCENTE=d.ID_DOCENTE \n" +
"  INNER JOIN asignatura a on s.ID_ASIGNATURA=a.ID_ASIGNATURA INNER JOIN asignaciongrade g on g.ID_grado=a.ID_grado WHERE    \n" +
"  d.ID_DOCENTE="+iddocente+";";
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
                 SEC.setID_Grado(rs.getString("ID_ASIGNATURA"));  
                SECList.add(SEC);
                 
                 
            }
        } catch (SQLException ex) {
            Logger.getLogger(ALUMNO_DAO.class.getName()).log(Level.SEVERE, null, ex);
            System.err.print("error" + ex);
        }

        return SECList;

    }
    //-------------------------------------------------------------------------------------------   
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
   //--------------------------------------------------------------------------------------------
    public NOTAS CrearNota(NOTAS NOT){
        
        String CrearDocente="INSERT INTO `notas`(`ID_Seccion_Aula`, `ID_ALUMNO`, `ID_evalucion`, `Nota`, `Fecha_nota`) VALUES (?,?,?,?,?);";
         // variables de fecha
           Date fechaactual=new Date();
         SimpleDateFormat fechax=new SimpleDateFormat("YYYY-MM-dd");    
          String Fecha=fechax.format(fechaactual);
        try {
           con=CONEXION.abrir();
            ps=con.prepareStatement(CrearDocente);
            ps.setString(1, NOT.getID_Seccion_AulaN());
            ps.setString(2,  NOT.getID_ALUMNON());
             ps.setString(3,  NOT.getID_evalucionN()); ///por defecto docente
            ps.setString(4,  NOT.getNotaN());
            ps.setString(5,  Fecha);

            
         ps.execute();
               
        } catch (Exception e) {
        }
        return NOT;
    }
     //-------------------------------------------------------------------------------------------
     ///=---------------------------------------------------------------
     
     
      public ArrayList getAllNOTAS(int idSE, int idEVA) {
  
   
        ArrayList<NOTAS> EVALList = new ArrayList<>();
        try {
            String ConsultEVALList="SELECT CONCAT(EVA.Porcentaje*1000,'%')Porcentaje,  CONCAT(a.Nombre_Alumno, ' ', A.Apellido_Alumno)Nombres, eva.Nombre_Evaluacion,\n" +
"N.Nota,N.Fecha_nota,N.Nota*10*EVA.Porcentaje as notaF FROM notas\n" +
"N INNER JOIN alumnos A ON A.ID_ALUMNO=N.ID_ALUMNO\n" +
"INNER JOIN evaluaciones EVA ON EVA.ID_evalucion=N.ID_evalucion\n" +
"WHERE ID_Seccion_Aula="+idSE+" AND N.ID_evalucion="+idEVA+"\n" +
"ORDER by A.Fecha_Creacion_alunmo DESC;";
            con=CONEXION.abrir();
            ps=con.prepareStatement(ConsultEVALList);
            rs=ps.executeQuery();

 
         

            while (rs.next()) {
               NOTAS NOT=new NOTAS();
                NOT.setRESERVA(rs.getString("Porcentaje"));
                NOT.setID_ALUMNON(rs.getString("Nombres"));
                NOT.setID_evalucionN(rs.getString("Nombre_Evaluacion"));
                NOT.setNotaN(rs.getString("Nota"));
                NOT.setFecha_notaN(rs.getString("Fecha_nota"));
                NOT.setID_Seccion_AulaN(rs.getString("notaF"));
                
                EVALList.add(NOT);
                 
                 
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(ALUMNO_DAO.class.getName()).log(Level.SEVERE, null, ex);
            System.err.print("error" + ex);
        }
 CONEXION.cerrar();
        return EVALList;

    }



              //-----------------------------------------ASISTENCIA-------------------------------------------------- 

      
//---------------------------------MOSTRA ALUMNOS
      
   public ArrayList getAllALUMNOSI(int idSE) {
  
   
        ArrayList<ASISTENCIA> ALUMLList = new ArrayList<>();
        try {
            String ConsultEVALList="SELECT sec.ID_Seccion_Aula,a.ID_ALUMNO, CONCAT(a.Nombre_Alumno,' ', a.Apellido_Alumno)NOMBRES, ASI.NOMBRE_ASIGNATURA  FROM alumnos a \n" +
"INNER JOIN inscripcion_curso ins on ins.ID_ALUMNO=a.ID_ALUMNO\n" +
"INNER JOIN seccion_aula sec on sec.ID_Seccion_Aula=ins.ID_Seccion_Aula\n" +
"INNER JOIN asignatura ASI ON ASI.ID_ASIGNATURA=SEC.ID_ASIGNATURA\n" +
"WHERE sec.ID_Seccion_Aula="+idSE+";";
            con=CONEXION.abrir();
            ps=con.prepareStatement(ConsultEVALList);
            rs=ps.executeQuery();

 
         

            while (rs.next()) {
               ASISTENCIA ASIS=new ASISTENCIA();
                ASIS.setID_Seccion_AulaA(rs.getString("ID_Seccion_Aula"));
                ASIS.setID_ALUMNOA(rs.getString("ID_ALUMNO"));
                ASIS.setEXTRA(rs.getString("NOMBRES"));
                ASIS.setID_asistenciaA(rs.getString("NOMBRE_ASIGNATURA"));
                 
                
                ALUMLList.add(ASIS);
                 
                 
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(ALUMNO_DAO.class.getName()).log(Level.SEVERE, null, ex);
            System.err.print("error" + ex);
        }
 CONEXION.cerrar();
        return ALUMLList;

    }   
   
   //---------------------------------ASIGNAR ASISTENCIA
   public ASISTENCIA CrearASISTENCIA(ASISTENCIA ASIS){
        
        String CrearDocente="INSERT INTO `asistecia`( `ID_Seccion_Aula`, `ID_ALUMNO`, `Asistencia`, `Fecha_asistencia`) VALUES (?,?,?,?);";
         // variables de fecha
           Date fechaactual=new Date();
         SimpleDateFormat fechax=new SimpleDateFormat("YYYY-MM-dd");    
          String Fecha=fechax.format(fechaactual);
       
        try {
           con=CONEXION.abrir();
            ps=con.prepareStatement(CrearDocente);
            ps.setString(1, ASIS.getID_Seccion_AulaA());
            ps.setString(2,  ASIS.getID_ALUMNOA());
             ps.setString(3,  ASIS.getAsistenciaA());  
            ps.setString(4,  Fecha);
            

            
         ps.execute();
               
        } catch (Exception e) {
        }
        return ASIS;
    }
   
    //---------------------------------ASIGNAR OBSERVACION
   public OBSERVACIONES CrearOBSERVACION(OBSERVACIONES OBSER){
        
        String CrearDocente="INSERT INTO `obeservaciones`(  `ID_Seccion_Aula`, `ID_ALUMNO`, `ASUNTO`, `DESCARGO`, `NIVEL`, `Fecha_observacion`) VALUES (?,?,?,?,?,?);";
         // variables de fecha
           Date fechaactual=new Date();
         SimpleDateFormat fechax=new SimpleDateFormat("YYYY-MM-dd");    
          String Fecha=fechax.format(fechaactual);
       
        try {
           con=CONEXION.abrir();
            ps=con.prepareStatement(CrearDocente);
            ps.setString(1, OBSER.getID_Seccion_AulaO());
            ps.setString(2,  OBSER.getID_ALUMNOO());
             ps.setString(3,  OBSER.getASUNTOO());  
            ps.setString(4,  OBSER.getDESCARGOO());
             ps.setString(5,  OBSER.getNIVELO());  
            ps.setString(6,  Fecha);
            

            
         ps.execute();
               
        } catch (Exception e) {
            System.out.println(e);
        }
        return OBSER;
    }
}
