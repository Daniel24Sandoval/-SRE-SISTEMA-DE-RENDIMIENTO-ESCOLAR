 
package Modelo;

/**
 *
 * @author kimbe
 */
public class EVALUACION {
    String ID_evalucionE;
    String ID_ASIGNATURAE;
    String Nombre_EvaluacionE;
    String PorcentajeE;
       public  static int count=0;
    double PORC=0;
    
    ///COSNTRUCTOR
 
     
    public EVALUACION() {
    }

    public EVALUACION(String ID_evalucionE, String ID_ASIGNATURAE, String Nombre_EvaluacionE, String PorcentajeE) {
        this.ID_evalucionE = ID_evalucionE;
        this.ID_ASIGNATURAE = ID_ASIGNATURAE;
        this.Nombre_EvaluacionE = Nombre_EvaluacionE;
        this.PorcentajeE = PorcentajeE;
    }
    
    ///GETT AND SETTER

    public String getID_evalucionE() {
        return ID_evalucionE;
    }

    public void setID_evalucionE(String ID_evalucionE) {
        this.ID_evalucionE = ID_evalucionE;
    }

    public String getID_ASIGNATURAE() {
        return ID_ASIGNATURAE;
    }

    public void setID_ASIGNATURAE(String ID_ASIGNATURAE) {
        this.ID_ASIGNATURAE = ID_ASIGNATURAE;
    }

    public String getNombre_EvaluacionE() {
        return Nombre_EvaluacionE;
    }

    public void setNombre_EvaluacionE(String Nombre_EvaluacionE) {
        this.Nombre_EvaluacionE = Nombre_EvaluacionE;
    }

    public String getPorcentajeE() {
        return PorcentajeE;
    }

    public void setPorcentajeE(String PorcentajeE) {
        this.PorcentajeE = PorcentajeE;
    }

    public static int getCount() {
        return count;
    }

    public static void setCount(int count) {
        EVALUACION.count = count;
    }

    public double getPORC() {
        return PORC;
    }

    public void setPORC(double PORC) {
        this.PORC = PORC;
    }


     

    
}
