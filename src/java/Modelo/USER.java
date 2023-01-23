 
package Modelo;

/**
 *
 * @author kimbe
 */
public class USER {
   String CorreoU;
   String PassU;
   String RolU;

    public USER() {
    }

    public USER(String CorreoU, String PassU, String RolU) {
        this.CorreoU = CorreoU;
        this.PassU = PassU;
        this.RolU = RolU;
    }

    public String getCorreoU() {
        return CorreoU;
    }

    public void setCorreoU(String CorreoU) {
        this.CorreoU = CorreoU;
    }

    public String getPassU() {
        return PassU;
    }

    public void setPassU(String PassU) {
        this.PassU = PassU;
    }

    public String getRolU() {
        return RolU;
    }

    public void setRolU(String RolU) {
        this.RolU = RolU;
    }



}
