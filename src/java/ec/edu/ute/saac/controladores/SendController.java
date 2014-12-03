/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ec.edu.ute.saac.controladores;

import ec.edu.ute.saac.entidades.Usuario;
import ec.edu.ute.saac.servicios.RolFacade;
import ec.edu.ute.saac.servicios.UsuarioFacade;
import ec.edu.ute.saac.utils.Contexto;
import ec.edu.ute.saac.utils.Utilitarios;
import java.security.Principal;
import javax.annotation.PostConstruct;
import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 *
 * @author JNK
 */
@ManagedBean
@SessionScoped
public class SendController {

    private static final Log log = LogFactory.getLog(SendController.class);
    private static final long serialVersionUID = 1L;
    private String texto = new String();
    private Utilitarios utilitarios;

    public SendController() {
        texto = "prueba";
        utilitarios = new Utilitarios();
    }

//    @PostConstruct
//    public void inicializarDatosAcceso() {
//        texto = "prueba";
//        utilitarios = new Utilitarios();
//    }

    public void sendPassword() {
        try {
            System.out.println("entro");

            // ENVIO DE MAIL
            StringBuilder sms = new StringBuilder();
            char c = 0x0A;
            String br = "<br>";
            String tabsms = "\u0009 ";

            sms.append(br).append("Usted ha solicitado la recuperaci&oacute;n de su contrase&ntilde;a, para ingresar al &quot;Sistema de Migraciones Laborales&quot;. ");
            sms.append(br).append("del Ministerio de Relaciones Laborales, sus datos de acceso son los siguiente:");
            sms.append(br);
            sms.append(br).append(br).append("Usuario: ");
            sms.append(tabsms);

            sms.append(br).append(br);
            sms.append("Por su seguridad se recomienda cambiar su contrase&ntilde;a para uso del sistema.");

            StringBuilder footer = new StringBuilder();
            footer.append(br).append(br).append(br).append("http://www.mrl.gob.ec");
            footer.append(br).append("<img src=").append("http://actas.mrl.gob.ec/images/logo.jpg").append(" />");

            utilitarios.enviarMailClave("juanklafuente@gmail.com", "Clave de Usuario", "" + sms, "" + footer);
            // FIN DE MAIL

            System.out.println("enviando mail");


        } catch (Exception e) {
            utilitarios.error(getClass().getName(), e.getMessage(), e);
        }

    }

    public String getTexto() {
        return texto;
    }

    public void setTexto(String texto) {
        this.texto = texto;
    }
}
