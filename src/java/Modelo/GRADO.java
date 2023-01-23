 
package Modelo;

/**
 *
 * @author kimbe
 */
public class GRADO {
    String ID_gradoG ;
    String Nivel_GradoG;
    String Grado_AcademicoG;
        public  static int count=0;
    
    ///CONSTRUCTOR
 public GRADO() {
         
    }
 
    public GRADO(String ID_gradoG, String Nivel_GradoG, String Grado_AcademicoG) {
        this.ID_gradoG = ID_gradoG;
        this.Nivel_GradoG = Nivel_GradoG;
        this.Grado_AcademicoG = Grado_AcademicoG;
    }
    
 ///GETT AND SETTER

    public String getID_gradoG() {
        return ID_gradoG;
    }

    public void setID_gradoG(String ID_gradoG) {
        this.ID_gradoG = ID_gradoG;
    }

    public String getNivel_GradoG() {
        return Nivel_GradoG;
    }

    public void setNivel_GradoG(String Nivel_GradoG) {
        this.Nivel_GradoG = Nivel_GradoG;
    }

    public String getGrado_AcademicoG() {
        return Grado_AcademicoG;
    }

    public void setGrado_AcademicoG(String Grado_AcademicoG) {
        this.Grado_AcademicoG = Grado_AcademicoG;
    }
    
    
    
}
