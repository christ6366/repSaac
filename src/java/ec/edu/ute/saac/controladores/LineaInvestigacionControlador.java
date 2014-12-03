/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ec.edu.ute.saac.controladores;

import ec.edu.ute.saac.entidades.Carrera;
import ec.edu.ute.saac.entidades.Facultad;
import ec.edu.ute.saac.entidades.LineaInvestigacion;
import ec.edu.ute.saac.servicios.CarreraFacade;
import ec.edu.ute.saac.servicios.FacultadFacade;
import ec.edu.ute.saac.servicios.LineaInvestigacionFacade;
import ec.edu.ute.saac.utils.Utilitarios;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.faces.event.ValueChangeEvent;
import javax.faces.model.SelectItem;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.UserTransaction;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 *
 * @author JNK
 */
@ManagedBean
@ViewScoped
public class LineaInvestigacionControlador {

    private static final Log log = LogFactory.getLog(LineaInvestigacionControlador.class);
    @PersistenceContext(unitName = "saacPU")
    private EntityManager entityManager;
    private MessageSender sender;
    private Utilitarios utilitarios;
    private boolean panelDatos;
    /**
     * ******************************************************
     */
    private Integer carreraSelected;
    private Integer facultadSelected;
    private List<SelectItem> listadoFacultad;
    private List<SelectItem> listadoCarreraPorFacultad;
    private List<LineaInvestigacion> listadoLineasInvestigacionPorCarrera;
    private LineaInvestigacion lineaInvestigacion;
    private String estado;
    /**
     * ******************************************************
     */
    @EJB
    private FacultadFacade facultadFacade;
    @EJB
    private CarreraFacade carreraFacade;
    @EJB
    private LineaInvestigacionFacade lineaInvestigacionFacade;
    @Resource
    UserTransaction u;

    public LineaInvestigacionControlador() {
        // TODO: ESTA FACE ESTA EN DESARROLLO
        // FIXME: ESTA FACE ESTA EN DESARROLLO
        // PENDING: ESTA FACE ESTA EN DESARROLLO
        // DEVELOPER: ESTA FACE ESTA EN DESARROLLO
        // IMPORTANT: ESTA FACE ESTA EN DESARROLLO
    }

    @PostConstruct
    public void inicializacion() {
        try {
            Utilitarios.render();
            sender = (MessageSender) Utilitarios.getManagedBean("messageSender");
            utilitarios = new Utilitarios();
            panelDatos = false;
            limpiarCombosCarrera();
            listadoFacultad = new ArrayList<SelectItem>();
            listadoCarreraPorFacultad = new ArrayList<SelectItem>();
            listadoLineasInvestigacionPorCarrera = new ArrayList<LineaInvestigacion>();
            lineaInvestigacion = new LineaInvestigacion();
            estado = "";
            /**
             * CARGA DE LISTAS
             */
            if (getListadoFacultad().size() <= 0) {
                List<SelectItem> lista = new ArrayList<SelectItem>();
                for (Facultad fac : facultadFacade.findAll()) {
                    lista.add(new SelectItem(fac.getFacCodigo(), fac.getFacNombre()));
                }
                getListadoFacultad().addAll(lista);
            }

        } catch (Exception e) {
            log.error(e);
        }
    }

    /**
     * #### METODOS DE OBTENCION DE DATOS ####
     */
    public void obtenerCarrerasPorFacultad(ValueChangeEvent evt) {
        listadoCarreraPorFacultad = new ArrayList<SelectItem>();
        if (evt.getNewValue() != null) {
            Integer dato = (Integer) evt.getNewValue();
            if (dato.equals(0)) {
                listadoCarreraPorFacultad = new ArrayList<SelectItem>();
            } else {
                Facultad fac = entityManager.find(Facultad.class, dato);
                if (listadoCarreraPorFacultad.size() <= 0) {
                    List<SelectItem> lista = new ArrayList<SelectItem>();
                    for (Carrera car : carreraFacade.obtenerCarreraPorFacultad(fac)) {
                        lista.add(new SelectItem(car.getCarCodigo(), car.getCarNombre()));
                    }
                    listadoCarreraPorFacultad.addAll(lista);
                }
            }
        }
    }

    public void obtenerCarrerasPorFacultad(Facultad facultad) {
        listadoCarreraPorFacultad = new ArrayList<SelectItem>();
        if (facultad != null) {
            Facultad fac = facultad;
            if (listadoCarreraPorFacultad.size() <= 0) {
                List<SelectItem> lista = new ArrayList<SelectItem>();
                List<Carrera> listaCarrera = carreraFacade.obtenerCarreraPorFacultad(fac);
                if (listaCarrera != null) {
                    for (Carrera car : carreraFacade.obtenerCarreraPorFacultad(fac)) {
                        lista.add(new SelectItem(car.getCarCodigo(), car.getCarNombre()));
                    }
                }
                listadoCarreraPorFacultad.addAll(lista);
            }
        }

    }
    
    public void obtenerLineasInvestigacionPorCarrera(ValueChangeEvent evt) {
        listadoCarreraPorFacultad = new ArrayList<SelectItem>();
        if (evt.getNewValue() != null) {
            Integer dato = (Integer) evt.getNewValue();
            if (dato.equals(0)) {
                listadoCarreraPorFacultad = new ArrayList<SelectItem>();
            } else {
                Facultad fac = entityManager.find(Facultad.class, dato);
                if (listadoCarreraPorFacultad.size() <= 0) {
                    List<SelectItem> lista = new ArrayList<SelectItem>();
                    for (Carrera car : carreraFacade.obtenerCarreraPorFacultad(fac)) {
                        lista.add(new SelectItem(car.getCarCodigo(), car.getCarNombre()));
                    }
                    listadoCarreraPorFacultad.addAll(lista);
                }
            }
        }
    }

    public void obtenerLineasInvestigacionPorCarrera() {
        try {
            listadoLineasInvestigacionPorCarrera = new ArrayList<LineaInvestigacion>();
            if (carreraSelected.equals(0) && facultadSelected.equals(0)) {
                listadoLineasInvestigacionPorCarrera = lineaInvestigacionFacade.findAll();
            } else if (carreraSelected.equals(0)) {
                Facultad f = entityManager.find(Facultad.class, facultadSelected);
                List<Carrera> listTemp = carreraFacade.obtenerCarreraPorFacultad(f);
                if (listTemp.size() > 0) {
                    for (Carrera carrera : listTemp) {
                        List<LineaInvestigacion> lineasTemp = lineaInvestigacionFacade.obtenerUsuarioPorNombre(carrera);
                        if (lineasTemp != null) {
                            listadoLineasInvestigacionPorCarrera.addAll(lineasTemp);
                        }
                    }
                }
            } else {
                Carrera c = entityManager.find(Carrera.class, carreraSelected);
                listadoLineasInvestigacionPorCarrera = lineaInvestigacionFacade.obtenerUsuarioPorNombre(c);
            }
            if (listadoLineasInvestigacionPorCarrera == null || listadoLineasInvestigacionPorCarrera.size() <= 0) {
                utilitarios.ponerMensajeWarn(Utilitarios.INFORMACION, ": no se han encontrado datos");
            }
        } catch (Exception e) {
            log.error(e);
            utilitarios.error("LineaInvestigacion.class", "LineaInvestigacion.class - Error al cargar datos", e);
        }
    }

    /**
     * #### METODOS DE VARIOS ####
     */
    public void limpiarCombosCarrera() {
        facultadSelected = (Integer.valueOf(0));
        carreraSelected = (Integer.valueOf(0));
        estado = "";
    }

    public void activarPanelDatos() {
        LineaInvestigacion l = new LineaInvestigacion();
        lineaInvestigacion = l;
        setPanelDatos(true);
        limpiarCombosCarrera();
    }

    public void seleccionarLineaInvestigacion(LineaInvestigacion li) {
        limpiarCombosCarrera();
//        setLineaInvestigacion((LineaInvestigacion) evt.getComponent().getAttributes().get("select"));
        setLineaInvestigacion(li);
        setPanelDatos(true);
        cargaCombos();
    }

    private void cargaCombos() {
        obtenerCarrerasPorFacultad(lineaInvestigacion.getCarrera().getFacultad());
        setCarreraSelected(lineaInvestigacion.getCarrera().getCarCodigo());
        setFacultadSelected(lineaInvestigacion.getCarrera().getFacultad().getFacCodigo());
        setEstado("" + lineaInvestigacion.getLinInvEstado());
    }

    /**
     * #### METODOS DE EDICION Y ALMACENAMIENTO ####
     */
    public void guardarLineaInvestigacionPorCarrera() {
        try {
            u.begin();
            Carrera c = entityManager.find(Carrera.class, carreraSelected);
            lineaInvestigacion.setLinInvEstado(Boolean.parseBoolean(estado));
            lineaInvestigacion.setCarrera(c);
            lineaInvestigacionFacade.create(lineaInvestigacion);
            u.commit();
            utilitarios.ponerMensajeInfo(Utilitarios.REGISTRO_GUARDADO, null);
            inicializacion();
        } catch (Exception e) {
            log.error(e);
            utilitarios.error("LineaInvestigacion.class", "LineaInvestigacion.class - Error al guardar dato", e);
            utilitarios.ponerMensajeError(Utilitarios.REGISTRO_GUARDADO, null);
        }
    }
    public void actualizarLineaInvestigacionPorCarrera() {
        try {
            u.begin();
            lineaInvestigacion.setLinInvEstado(Boolean.parseBoolean(estado));
            lineaInvestigacionFacade.edit(lineaInvestigacion);
            u.commit();
            utilitarios.ponerMensajeInfo(Utilitarios.REGISTRO_ACTUALIZADO, null);
            inicializacion();
        } catch (Exception e) {
            log.error(e);
            utilitarios.error("LineaInvestigacion.class", "LineaInvestigacion.class - Error al guardar dato", e);
            utilitarios.ponerMensajeError(Utilitarios.REGISTRO_ACTUALIZADO, null);
        }
    }

    /**
     * #### GETTERS AND SETTERS ####
     */
    public boolean isPanelDatos() {
        return panelDatos;
    }

    public void setPanelDatos(boolean panelDatos) {
        this.panelDatos = panelDatos;
    }

    public Integer getCarreraSelected() {
        return carreraSelected;
    }

    public void setCarreraSelected(Integer carreraSelected) {
        this.carreraSelected = carreraSelected;
    }

    public Integer getFacultadSelected() {
        return facultadSelected;
    }

    public void setFacultadSelected(Integer facultadSelected) {
        this.facultadSelected = facultadSelected;
    }

    public List<SelectItem> getListadoFacultad() {
        return listadoFacultad;
    }

    public void setListadoFacultad(List<SelectItem> listadoFacultad) {
        this.listadoFacultad = listadoFacultad;
    }

    public List<SelectItem> getListadoCarreraPorFacultad() {
        return listadoCarreraPorFacultad;
    }

    public void setListadoCarreraPorFacultad(List<SelectItem> listadoCarreraPorFacultad) {
        this.listadoCarreraPorFacultad = listadoCarreraPorFacultad;
    }

    public List<LineaInvestigacion> getListadoLineasInvestigacionPorCarrera() {
        return listadoLineasInvestigacionPorCarrera;
    }

    public void setListadoLineasInvestigacionPorCarrera(List<LineaInvestigacion> listadoLineasInvestigacionPorCarrera) {
        this.listadoLineasInvestigacionPorCarrera = listadoLineasInvestigacionPorCarrera;
    }

    public LineaInvestigacion getLineaInvestigacion() {
        return lineaInvestigacion;
    }

    public void setLineaInvestigacion(LineaInvestigacion lineaInvestigacion) {
        this.lineaInvestigacion = lineaInvestigacion;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
}
