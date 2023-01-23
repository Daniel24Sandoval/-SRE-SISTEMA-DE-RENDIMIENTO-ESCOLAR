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
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

/**
 *
 * @author DanielSan
 */
public class ALUMNO_DAO {
    CONEXION cn=new CONEXION();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    
     public ALUMNO Validar(ALUMNO ALU){
        
      String ESTUDIANTE="SELECT ID_ALUMNO , ID_Rol , Nombre_Alumno, Apellido_Alumno, Correo_Alumno, Contrasena_Alu FROM alumnos WHERE Correo_Alumno=? and Contrasena_Alu=?;"; ///nunca, pero nunca coloquen ' ' en los paramentros , pipipipipi

        try {
            con=CONEXION.abrir();
            ps=con.prepareStatement(ESTUDIANTE);
            ps.setString(1, ALU.getCorreoA());
            ps.setString(2, ALU.getContraseñaA());
            rs=ps.executeQuery();
           
              while(rs.next()){
                 ALU.setIDALUMMNO(rs.getString("ID_ALUMNO"));
                ALU.setID_RolA(rs.getString("ID_Rol"));
                ALU.setNombreA(rs.getString("Nombre_Alumno"));
                ALU.setApellidoA(rs.getString("Apellido_Alumno"));
                ALU.setCorreoA(rs.getString("Correo_Alumno"));
                ALU.setContraseñaA(rs.getString("Contrasena_Alu"));
                
                
           }
              
         
 
        } catch (Exception e) {
            System.out.println(e);
        }
       return ALU;
    }

    //--------------------------------------------------------------------------------------------
    public ALUMNO CrearAlumno(ALUMNO ALU){
        
        String CrearAlumno="INSERT INTO `alumnos`(`ID_ALUMNO`, `ID_DNI`, `ID_Rol`, `ID_grado`, `Nombre_Alumno`, `Apellido_Alumno`, `Correo_Alumno`, `Contrasena_Alu`, `Fecha_Creacion_alunmo`, `Estado_Alu`) VALUES (?,?,?,?,?,?,?,?,?,?);";
          // variables de fecha
           Date fechaactual=new Date();
         SimpleDateFormat fechax=new SimpleDateFormat("YYYY-MM-dd");    
          String Fecha=fechax.format(fechaactual);
        try {
           con=CONEXION.abrir();
            ps=con.prepareStatement(CrearAlumno);
            ps.setString(1, ALU.getIDALUMMNO());
            ps.setString(2, ALU.getDNI());
            ps.setString(3, "3"); ///ROL DE ESTUDIANTE
            ps.setString(4, "1"); /// GRADO POR DEFECTO
            ps.setString(5, ALU.getNombreA());
            ps.setString(6, ALU.getApellidoA());
            ps.setString(7, ALU.getCorreoA());
            ps.setString(8, ALU.getContraseñaA());
            ps.setString(9,Fecha);
            ps.setString(10, "ACTIVO"); /// ESTADO POR DEFECTO

         ps.execute();
               
        } catch (Exception e) {
        }
        return ALU;
    }
     //-------------------------------------------------------------------------------------------
    public ArrayList getAll() {
 
        ArrayList<ALUMNO> ALUMNOList = new ArrayList<>();
        try {
            String ConsultAlumnList="SELECT a.ID_ALUMNO, a.ID_DNI, r.Nombre_rol , CONCAT(g.Grado_Academico,' ', g.Nivel_Grado)Nivel_Grado, a.Nombre_Alumno, a.Apellido_Alumno, a.Correo_Alumno, a.Contrasena_Alu, a.Fecha_Creacion_alunmo, a.Estado_Alu FROM alumnos a INNER JOIN rol r on a.ID_Rol=r.ID_Rol INNER JOIN asignaciongrade g on g.ID_grado=a.ID_grado ORDER by Fecha_Creacion_alunmo DESC;";
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
                
                ALUMNOList.add(ALU);
                 
                 
            }
        } catch (SQLException ex) {
            Logger.getLogger(ALUMNO_DAO.class.getName()).log(Level.SEVERE, null, ex);
            System.err.print("error" + ex);
        }

        return ALUMNOList;

    }
    //-------------------------------------------------------------------------------------------   
    public int Borrar(int id){
       int resultado=0;
        String sqldelete="DELETE FROM `alumnos` WHERE ID_ALUMNO="+id+";";
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
           String sqlUpdateEstado="UPDATE `alumnos` SET `Estado_Alu`='"+estadoNuevo+"' WHERE ID_ALUMNO="+idd+";";
           
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
           String sqlUpdateEstado="UPDATE `alumnos` SET `Estado_Alu`='"+estadoNuevo+"' WHERE ID_ALUMNO="+idd+";";
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
           String sqlUpdateEstado="UPDATE `alumnos` SET `Contrasena_Alu`='"+Pass+"' WHERE ID_ALUMNO="+idpas+";";
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
  //-------------------------------------------------------------------------------------------
    public ArrayList getAllCODID(int idseccion) {
 
        ArrayList<ALUMNO> ALUMNOList = new ArrayList<>();
        try {
            String ConsultAlumnList="SELECT a.ID_ALUMNO, a.ID_DNI, r.Nombre_rol , CONCAT(g.Grado_Academico,' ', g.Nivel_Grado)Nivel_Grado, a.Nombre_Alumno, \n" +
"a.Apellido_Alumno, a.Correo_Alumno, a.Contrasena_Alu, a.Fecha_Creacion_alunmo, a.Estado_Alu FROM alumnos a \n" +
"INNER JOIN rol r on a.ID_Rol=r.ID_Rol \n" +
"INNER JOIN asignaciongrade g on g.ID_grado=a.ID_grado \n" +
"INNER JOIN inscripcion_curso ins on ins.ID_ALUMNO=a.ID_ALUMNO\n" +
"INNER JOIN seccion_aula sec on sec.ID_Seccion_Aula=ins.ID_Seccion_Aula\n" +
"WHERE sec.ID_Seccion_Aula="+idseccion+"\n" +
"ORDER by Fecha_Creacion_alunmo DESC;";
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
                
                ALUMNOList.add(ALU);
                 
                 
            }
        } catch (SQLException ex) {
            Logger.getLogger(ALUMNO_DAO.class.getName()).log(Level.SEVERE, null, ex);
            System.err.print("error" + ex);
        }

        return ALUMNOList;

    }
    //-------------------------------------------------------------------------------------------  
 //-------------------------------------------------------------------------------------------
    public ArrayList getAllCURSOSCODID(int idseccion) {
 
        ArrayList<ASIGNATURA> CURSOLIST = new ArrayList<>();
        try {
            String ConsultAlumnList="SELECT SA.ID_Seccion_Aula ,   ASG.NOMBRE_ASIGNATURA, INS.ID_ALUMNO   FROM  seccion_aula   SA\n" +
"INNER JOIN asignatura ASG ON ASG.ID_ASIGNATURA=SA.ID_ASIGNATURA\n" +
"INNER JOIN inscripcion_curso INS ON INS.ID_Seccion_Aula=SA.ID_Seccion_Aula\n" +
"WHERE INS.ID_ALUMNO="+idseccion+";";
            con=CONEXION.abrir();
            ps=con.prepareStatement(ConsultAlumnList);
            rs=ps.executeQuery();
 

            while (rs.next()) {
                ASIGNATURA ASIG = new ASIGNATURA();
                ASIG.setID_ASIGNATURAA(rs.getString("ID_Seccion_Aula"));
                ASIG.setNOMBRE_ASIGNATURAA(rs.getString("NOMBRE_ASIGNATURA"));
                ASIG.setID_gradoA(rs.getString("ID_ALUMNO"));
                 
                
                CURSOLIST.add(ASIG);
                 
                 
            }
        } catch (SQLException ex) {
            Logger.getLogger(ALUMNO_DAO.class.getName()).log(Level.SEVERE, null, ex);
            System.err.print("error" + ex);
        }

        return CURSOLIST;

    }
  //------------------------------------------------------------------------------------------- 
 //---PARA SUMAR LOS PORCENTAJES DE LAS NOTAS DE CADA CURSO;
    
 public ArrayList getAllCURSOSSUMATORIO(int alumno, String curso) {
 
        ArrayList<NOTAS> NOTASXLIST = new ArrayList<>();
        try {
            String ConsultAlumnList="SELECT  ASIG.NOMBRE_ASIGNATURA, EVA.Nombre_Evaluacion,round((EVA.Porcentaje*10*N.Nota),2)as NotaPorc,N.Nota ,N.Fecha_nota FROM notas N \n" +
"INNER JOIN evaluaciones EVA ON EVA.ID_evalucion=N.ID_evalucion\n" +
"INNER JOIN seccion_aula SEC ON SEC.ID_Seccion_Aula=N.ID_Seccion_Aula\n" +
"INNER JOIN asignatura ASIG ON ASIG.ID_ASIGNATURA=EVA.ID_ASIGNATURA\n" +
"INNER JOIN alumnos ALU ON ALU.ID_ALUMNO=N.ID_ALUMNO\n" +
"WHERE N.ID_ALUMNO="+alumno+" and ASIG.NOMBRE_ASIGNATURA='"+curso+"' ORDER BY N.ID_evalucion ASC;";
            con=CONEXION.abrir();
            ps=con.prepareStatement(ConsultAlumnList);
            rs=ps.executeQuery();
 

            while (rs.next()) {
                NOTAS NOT = new NOTAS();
                NOT.setID_Seccion_AulaN(rs.getString("NOMBRE_ASIGNATURA"));
                NOT.setID_evalucionN(rs.getString("Nombre_Evaluacion"));
                NOT.setRESERVA(rs.getString("NotaPorc"));
                NOT.setNotaN(rs.getString("Nota"));
                 
                
                NOTASXLIST.add(NOT);
                 
                 
            }
        } catch (SQLException ex) {
            Logger.getLogger(ALUMNO_DAO.class.getName()).log(Level.SEVERE, null, ex);
            System.err.print("error" + ex);
        }

        return NOTASXLIST;

    }
  //------------------------------------------------------------------------------------------- 
 public ArrayList ASISTENCIAALUMNO(int ALUMNO, String nombreas) {
     
     //FECHAS
      //mes 
        Date fechaactual=new Date();
        SimpleDateFormat fechames=new SimpleDateFormat("MM"); 
          String Fechamess=fechames.format(fechaactual);

         //año
         SimpleDateFormat fechan=new SimpleDateFormat("YYYY"); 
           String fechaana=fechan.format(fechaactual);
     
 
        ArrayList<ASISTENCIA> ASISTENCIAS = new ArrayList<>();
        try {
            String ConsultAlumnList="SELECT  ASIS.Asistencia, ASIG.NOMBRE_ASIGNATURA, ASIS.Fecha_asistencia FROM asistecia ASIS\n" +
"INNER JOIN seccion_aula SEC ON SEC.ID_Seccion_Aula=ASIS.ID_Seccion_Aula\n" +
"INNER JOIN asignatura ASIG ON ASIG.ID_ASIGNATURA=SEC.ID_ASIGNATURA\n" +
"WHERE ASIS.Fecha_asistencia BETWEEN '"+fechaana+"-"+Fechamess+"-01' AND '"+fechaana+"-"+Fechamess+"-31' AND ASIG.NOMBRE_ASIGNATURA='"+nombreas+"' AND ASIS.ID_ALUMNO="+ALUMNO+";";
            con=CONEXION.abrir();
            ps=con.prepareStatement(ConsultAlumnList);
            rs=ps.executeQuery();
             
           
            while (rs.next()) {
                 ASISTENCIA ASIS = new ASISTENCIA();
                 ASIS.setAsistenciaA(rs.getString("Asistencia"));
                 ASIS.setEXTRA(rs.getString("NOMBRE_ASIGNATURA"));
                 ASIS.setFecha_asistenciaA(rs.getString("Fecha_asistencia"));
                 ASISTENCIAS.add(ASIS);
            }
             
               
        } catch (SQLException ex) {
            Logger.getLogger(ALUMNO_DAO.class.getName()).log(Level.SEVERE, null, ex);
            System.err.print("error" + ex);
           
        }

        return ASISTENCIAS;

    }
 
  //------------------------------------------------------------------------------------------- 
 public ArrayList LISTAROBSERVACIONES(int ALUMNO) {
     
     //FECHAS
      //mes 
        Date fechaactual=new Date();
        SimpleDateFormat fechames=new SimpleDateFormat("MM"); 
          String Fechamess=fechames.format(fechaactual);

         //año
         SimpleDateFormat fechan=new SimpleDateFormat("YYYY"); 
           String fechaana=fechan.format(fechaactual);
     
 
        ArrayList<OBSERVACIONES> OBSER = new ArrayList<>();
        try {
            String ConsultAlumnList="SELECT  `ASUNTO`, `DESCARGO`, `NIVEL`, `Fecha_observacion` FROM `obeservaciones` \n" +
"WHERE ID_ALUMNO="+ALUMNO+" AND Fecha_observacion  BETWEEN '"+fechaana+"-"+Fechamess+"-01' AND '"+fechaana+"-"+Fechamess+"-31';";
            con=CONEXION.abrir();
            ps=con.prepareStatement(ConsultAlumnList);
            rs=ps.executeQuery();
            
           
            while (rs.next()) {
                 OBSERVACIONES OBS = new OBSERVACIONES();
                 OBS.setASUNTOO(rs.getString("ASUNTO"));
                 OBS.setDESCARGOO(rs.getString("DESCARGO"));
                 OBS.setNIVELO(rs.getString("NIVEL"));
                 OBS.setFecha_observacionO(rs.getString("Fecha_observacion"));
                 OBSER.add(OBS);
            }
             
               
        } catch (SQLException ex) {
            Logger.getLogger(ALUMNO_DAO.class.getName()).log(Level.SEVERE, null, ex);
            System.err.print("error" + ex);
           
        }

        return OBSER;

    }
 public USER Validarad(USER USER){
        
      String ESTUDIANTE="SELECT  U.Nombre_user, U.Correo_user, R.Nombre_rol FROM userr U\n" +
"INNER JOIN ROL R ON R.ID_Rol=U.ID_Rol\n" +
"WHERE U.Correo_user=? AND U.Contrasena_user=?;;"; ///nunca, pero nunca coloquen ' ' en los paramentros , pipipipipi

        try {
            con=CONEXION.abrir();
            ps=con.prepareStatement(ESTUDIANTE);
            ps.setString(1, USER.getCorreoU());
            ps.setString(2, USER.getPassU());
            rs=ps.executeQuery();
           
              while(rs.next()){
                 USER.setPassU(rs.getString("Nombre_user"));
                USER.setCorreoU(rs.getString("Correo_user"));
                USER.setRolU(rs.getString("Nombre_rol"));
                 
                
           }
              
         
 
        } catch (Exception e) {
            System.out.println(e);
        }
       return USER;
    }
}
