/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ec.edu.ute.saac.controladores;

import com.icesoft.faces.context.effects.JavascriptContext;
import ec.edu.ute.saac.utils.Utilitarios;
import java.io.File;
import java.sql.Connection;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.servlet.http.HttpServletRequest;
import javax.sql.DataSource;
import net.sf.jasperreports.engine.*;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 *
 * @author JNK
 */
@ManagedBean
@SessionScoped
public class ReporteControlador {

    private static final Log log = LogFactory.getLog(ReporteControlador.class);
    private static final long serialVersionUID = 1L;
    private Utilitarios utilitarios;
    @PersistenceContext(unitName = "saacPU")
    private EntityManager entityManager;
    Context cont;
    DataSource ds;

    public ReporteControlador() {

        utilitarios = new Utilitarios();
    }

    @PostConstruct
    public void inicializarDatosAcceso() {
        try {
            utilitarios = new Utilitarios();
            utilitarios = new Utilitarios();
            cont = new InitialContext();
            ds = (DataSource) cont.lookup("jdbc/saac");
        } catch (Exception e) {
            log.error(e.getMessage());
        }

    }

    public void generarReporte() {
        try {

            Map<String, Object> parametros = new HashMap<String, Object>();
            parametros.put("image", Utilitarios.getSession().getServletContext().getRealPath("/img/reportes/reporteBanner.jpg"));

            generarInforme(parametros);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void generarInforme(Map<String, Object> parametros) {
        try {
            imprimirPdf("documentos/reporte.jrxml", parametros, false, "informe");
        } catch (Exception ex) {
            log.error(ex.getMessage());
            utilitarios.ponerMensajeError(Utilitarios.ERROR, "Error al generar el Informe");
        }
    }

    public void imprimirPdf(String rutaReporte, Map<String, Object> parametros, boolean conexion, String nombreArchivo) {
        try {
            //panelMensaje = true;
            System.out.println("Setea la variable a true");
            Connection con = null;
            con = ds.getConnection();

            HttpServletRequest request = (HttpServletRequest) Utilitarios.getContext().getExternalContext().getRequest();

            File file = new File(request.getSession().getServletContext().getRealPath("/pages/reportes/" + rutaReporte));
            log.info("*****************************************************");
            log.info(file.getPath());
            log.info("*****************************************************");
            JasperReport jasperReport = JasperCompileManager.compileReport(file.getPath());
            JasperPrint jasperPrint;

            if (!conexion && con != null) {
                jasperPrint = JasperFillManager.fillReport(jasperReport, parametros, new JREmptyDataSource());
            } else {
                jasperPrint = JasperFillManager.fillReport(jasperReport, parametros, con);
            }
            JasperExportManager.exportReportToPdfFile(jasperPrint, request.getSession().getServletContext().getRealPath("/publicacionReportes/reporte.pdf"));
            JavascriptContext.addJavascriptCall(Utilitarios.getContext(), "window.open('" + request.getContextPath() + "/publicacionReportes/reporte.pdf".toString() + "','ventana1');");
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
