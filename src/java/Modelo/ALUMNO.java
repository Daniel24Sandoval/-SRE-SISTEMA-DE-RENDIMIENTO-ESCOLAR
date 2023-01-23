 
package Modelo;

/**
 *
 * @author DanielSan
 */
public class ALUMNO {
      String IDALUMMNO;
        String DNI;
        String ID_RolA;
        String ID_grado;
      String NombreA;
     String ApellidoA;
      String CorreoA;
     String ContraseñaA;
      String FCreateA;
      String EstadoA;
      String ID_gradoN;
        public  static int count=0;
      
       // insertar constructor vacio y lleno
        
           public ALUMNO() {
       
    }
 
     
      public ALUMNO(String IDALUMMNO, String DNI, String ID_RolA, String ID_grado, String NombreA, String ApellidoA, String CorreoA, String ContraseñaA, String FCreateA, String EstadoA, String ID_gradoN) {
        this.IDALUMMNO = IDALUMMNO;
        this.DNI = DNI;
        this.ID_RolA = ID_RolA;
        this.ID_grado = ID_grado;
        this.NombreA = NombreA;
        this.ApellidoA = ApellidoA;
        this.CorreoA = CorreoA;
        this.ContraseñaA = ContraseñaA;
        this.FCreateA = FCreateA;
        this.EstadoA = EstadoA;
        this.ID_gradoN = ID_gradoN;
    }
    
    ///creacion del gett and setter

    public String getIDALUMMNO() {
        return IDALUMMNO;
    }

    public void setIDALUMMNO(String IDALUMMNO) {
        this.IDALUMMNO = IDALUMMNO;
    }

    public String getDNI() {
        return DNI;
    }

    public void setDNI(String DNI) {
        this.DNI = DNI;
    }

    public String getID_RolA() {
        return ID_RolA;
    }

    public void setID_RolA(String ID_RolA) {
        this.ID_RolA = ID_RolA;
    }

    public String getID_grado() {
        return ID_grado;
    }

    public void setID_grado(String ID_grado) {
        this.ID_grado = ID_grado;
    }

    public String getNombreA() {
        return NombreA;
    }

    public void setNombreA(String NombreA) {
        this.NombreA = NombreA;
    }

    public String getApellidoA() {
        return ApellidoA;
    }

    public void setApellidoA(String ApellidoA) {
        this.ApellidoA = ApellidoA;
    }

    public String getCorreoA() {
        return CorreoA;
    }

    public void setCorreoA(String CorreoA) {
        this.CorreoA = CorreoA;
    }

    public String getContraseñaA() {
        return ContraseñaA;
    }

    public void setContraseñaA(String ContraseñaA) {
        this.ContraseñaA = ContraseñaA;
    }

    public String getFCreateA() {
        return FCreateA;
    }

    public void setFCreateA(String FCreateA) {
        this.FCreateA = FCreateA;
    }

    public String getEstadoA() {
        return EstadoA;
    }

    public void setEstadoA(String EstadoA) {
        this.EstadoA = EstadoA;
    }

    public String getID_gradoN() {
        return ID_gradoN;
    }

    public void setID_gradoN(String ID_gradoN) {
        this.ID_gradoN = ID_gradoN;
    }

    public static int getCount() {
        return count;
    }

    public static void setCount(int count) {
        ALUMNO.count = count;
    }



   
    
    
}


