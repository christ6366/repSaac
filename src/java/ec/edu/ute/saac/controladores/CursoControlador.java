/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ec.edu.ute.saac.controladores;

import ec.edu.ute.saac.entidades.Carrera;
import ec.edu.ute.saac.entidades.Catalogo;
import ec.edu.ute.saac.entidades.Facultad;
import ec.edu.ute.saac.entidades.Persona;
import ec.edu.ute.saac.servicios.CarreraFacade;
import ec.edu.ute.saac.servicios.CatalogoFacade;
import ec.edu.ute.saac.servicios.FacultadFacade;
import ec.edu.ute.saac.servicios.PersonaFacade;
import ec.edu.ute.saac.utils.Utilitarios;
import java.util.ArrayList;
import java.util.Calendar;
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
public class CursoControlador {

    private static final Log log = LogFactory.getLog(CursoControlador.class);
    @PersistenceContext(unitName = "saacPU")
    private EntityManager entityManager;
    private MessageSender sender;
    private Utilitarios utilitarios;
    private boolean panelDatos;
    /**
     * ******************************************************
     */
    private Persona persona;
    private List<SelectItem> listadoEstadoCivil;
    private List<SelectItem> listadoGenero;
    private List<SelectItem> listadoNacionalidad;
    private List<SelectItem> listadoProvincias;
    private List<SelectItem> listadoCiudades;
    private Integer nacionalidadSelected;
    private Integer generoSelected;
    private Integer estadoCivilSelected;
    private String ciudadSelected;
    /**
     * ******************************************************
     */
    private List<Persona> listadoPersonas;
    /**
     * ******************************************************
     */
    private Boolean tipoAsignacionFacultad;
    private Boolean tipoAsignacionCarrera;
    private Integer carreraSelected;
    private Integer facultadSelected;
    private List<SelectItem> listadoFacultad;
    private List<SelectItem> listadoCarreraPorFacultad;
    /**
     * ******************************************************
     */
    @EJB
    CatalogoFacade catalogoFacade;
    @EJB
    PersonaFacade personaFacade;
    @EJB
    private FacultadFacade facultadFacade;
    @EJB
    private CarreraFacade carreraFacade;
    @Resource
    UserTransaction u;

    public CursoControlador() {
    }

    @PostConstruct
    public void inicializacion() {
        try {
            Utilitarios.render();
            sender = (MessageSender) Utilitarios.getManagedBean("messageSender");
            persona = new Persona();
            utilitarios = new Utilitarios();

            listadoEstadoCivil = new ArrayList<SelectItem>();
            listadoGenero = new ArrayList<SelectItem>();
            listadoNacionalidad = new ArrayList<SelectItem>();
            listadoProvincias = new ArrayList<SelectItem>();
            listadoCiudades = new ArrayList<SelectItem>();
            setListadoPersonas(new ArrayList<Persona>());
            limpiarCombos();
            setCiudadSelected("");
            setPanelDatos(false);

            listadoFacultad = new ArrayList<SelectItem>();
            listadoCarreraPorFacultad = new ArrayList<SelectItem>();


            /**
             * CARGA DE LISTAS
             */
            if (listadoNacionalidad.size() <= 0) {
                List<SelectItem> lista = new ArrayList<SelectItem>();
                for (Catalogo cat : catalogoFacade.obtenerCatalogoNacionalidades()) {
                    lista.add(new SelectItem(cat.getCatCodigo(), cat.getCatValor()));
                }
                listadoNacionalidad.addAll(lista);
            }

            if (listadoEstadoCivil.size() <= 0) {
                List<SelectItem> lista = new ArrayList<SelectItem>();
                for (Catalogo cat : catalogoFacade.obtenerCatalogoEstadoCivil()) {
                    lista.add(new SelectItem(cat.getCatCodigo(), cat.getCatValor()));
                }
                listadoEstadoCivil.addAll(lista);
            }

            if (listadoGenero.size() <= 0) {
                List<SelectItem> lista = new ArrayList<SelectItem>();
                for (Catalogo cat : catalogoFacade.obtenerCatalogoGenero()) {
                    lista.add(new SelectItem(cat.getCatCodigo(), cat.getCatValor()));
                }
                listadoGenero.addAll(lista);
            }

            if (listadoPersonas.size() <= 0) {
                listadoPersonas.addAll(personaFacade.findAll());
            }


            if (listadoFacultad.size() <= 0) {
                List<SelectItem> lista = new ArrayList<SelectItem>();
                for (Facultad fac : facultadFacade.findAll()) {
                    lista.add(new SelectItem(fac.getFacCodigo(), fac.getFacNombre()));
                }
                listadoFacultad.addAll(lista);
            }

        } catch (Exception e) {
            log.error(e);
        }
    }

    public void limpiarCombosCarrera() {
        facultadSelected = (Integer.valueOf(0));
        carreraSelected = (Integer.valueOf(0));
    }

    public void activarPanelDatos() {
        Persona p = new Persona();
        persona = p;
        limpiarCombos();
        setPanelDatos(true);
    }

    public void seleccionar(Persona persona) {
//        setPersona((Persona) evt.getComponent().getAttributes().get("select"));
        setPersona(persona);
        setPanelDatos(true);
        cargaCombos();
    }

    public void limpiarCombos() {
        nacionalidadSelected = Integer.valueOf(0);
        generoSelected = Integer.valueOf(0);
        estadoCivilSelected = Integer.valueOf(0);
    }

    public void cargaCombos() {
        nacionalidadSelected = persona.getCatalogoNacionalidad().getCatCodigo();
        estadoCivilSelected = persona.getCatalogoEstadoCivil().getCatCodigo();
        generoSelected = persona.getCatalogoGenero().getCatCodigo();
    }

    public void cambiarTipoAsignacion(ValueChangeEvent evt) {
        String dato = (String) evt.getNewValue();

        if (dato.equals("facultad")) {
            setTipoAsignacionFacultad(true);
            setTipoAsignacionCarrera(false);
        }
        if (dato.equals("carrera")) {
            setTipoAsignacionFacultad(false);
            setTipoAsignacionCarrera(true);
        }
        facultadSelected = Integer.valueOf(0);
        carreraSelected = 0;
    }

    public void cargarCarrerasPorFacultad(ValueChangeEvent evt) {
        if (evt.getNewValue() != null) {
            Integer dato = (Integer) evt.getNewValue();
            Facultad fac = entityManager.find(Facultad.class, dato);

            if (listadoCarreraPorFacultad.size() <= 0) {
                List<SelectItem> lista = new ArrayList<SelectItem>();
                for (Carrera car : carreraFacade.obtenerCarreraPorFacultad(fac)) {
                    lista.add(new SelectItem(car.getCarCodigo(), car.getCarNombre()));
                }
                listadoCarreraPorFacultad.addAll(lista);
            }
        } else {
            listadoCarreraPorFacultad = new ArrayList<SelectItem>();
        }

    }

    public void guardarEstudiante() {
        try {
            setCiudadSelected("593.017.001.000");
            Catalogo Genero;
            Catalogo estadoCivil;
            Catalogo nacionalidad;

            Genero = entityManager.find(Catalogo.class, generoSelected);
            estadoCivil = entityManager.find(Catalogo.class, estadoCivilSelected);
            nacionalidad = entityManager.find(Catalogo.class, nacionalidadSelected);

            persona.setCatalogoGenero(Genero);
            persona.setCatalogoEstadoCivil(estadoCivil);
            persona.setCatalogoNacionalidad(nacionalidad);
            persona.setPerEstado(true);
            persona.setPerFechaRegistro(Calendar.getInstance().getTime());

            u.begin();
            entityManager.persist(persona);
            u.commit();
            MessageSender.sendInfo(Utilitarios.REGISTRO_GUARDADO, null);
            utilitarios.ponerMensajeInfo(Utilitarios.REGISTRO_GUARDADO, " ");
//            sender.sendInfoPopup("Registro Ingresado");
            inicializacion();
        } catch (Exception e) {
            e.printStackTrace();
            String error = (String) e.getMessage();
            utilitarios.ponerMensajeError(Utilitarios.ERROR_REGISTRO_GUARDADO, error);
            utilitarios.error(CursoControlador.class.getName(), "Error al procesar registro", e);
        }
    }

    public void actualizarEstudiante() {
        try {
            setCiudadSelected("593.017.001.000");
            Catalogo Genero;
            Catalogo estadoCivil;
            Catalogo nacionalidad;


            Genero = entityManager.find(Catalogo.class, generoSelected);
            estadoCivil = entityManager.find(Catalogo.class, estadoCivilSelected);
            nacionalidad = entityManager.find(Catalogo.class, nacionalidadSelected);


            persona.setCatalogoGenero(Genero);
            persona.setCatalogoEstadoCivil(estadoCivil);
            persona.setCatalogoNacionalidad(nacionalidad);

            u.begin();
            entityManager.merge(persona);
            u.commit();
            MessageSender.sendInfo(Utilitarios.REGISTRO_ACTUALIZADO, null);
            utilitarios.ponerMensajeInfo(Utilitarios.REGISTRO_ACTUALIZADO, " ");
            inicializacion();
        } catch (Exception e) {
            e.printStackTrace();
            String error = (String) e.getMessage();
            utilitarios.ponerMensajeError(Utilitarios.ERROR_REGISTRO_ACTUALIZADO, error);
            utilitarios.error(CursoControlador.class.getName(), "Error al procesar registro", e);
        }

    }

    /**
     * @return the listadoProvincias
     */
    public List<SelectItem> getListadoProvincias() {
        return listadoProvincias;
    }

    /**
     * @return the listadoCiudades
     */
    public List<SelectItem> getListadoCiudades() {
        return listadoCiudades;
    }

    /**
     * @return the persona
     */
    public Persona getPersona() {
        return persona;
    }

    /**
     * @param persona the persona to set
     */
    public void setPersona(Persona persona) {
        this.persona = persona;
    }

    /**
     * @return the listadoEstadoCivil
     */
    public List<SelectItem> getListadoEstadoCivil() {
        return listadoEstadoCivil;
    }

    /**
     * @return the listadoGenero
     */
    public List<SelectItem> getListadoGenero() {
        return listadoGenero;
    }

    /**
     * @return the listadoNacionalidad
     */
    public List<SelectItem> getListadoNacionalidad() {
        return listadoNacionalidad;
    }

    /**
     * @return the nacionalidadSelected
     */
    public Integer getNacionalidadSelected() {
        return nacionalidadSelected;
    }

    /**
     * @param nacionalidadSelected the nacionalidadSelected to set
     */
    public void setNacionalidadSelected(Integer nacionalidadSelected) {
        this.nacionalidadSelected = nacionalidadSelected;
    }

    /**
     * @return the generoSelected
     */
    public Integer getGeneroSelected() {
        return generoSelected;
    }

    /**
     * @param generoSelected the generoSelected to set
     */
    public void setGeneroSelected(Integer generoSelected) {
        this.generoSelected = generoSelected;
    }

    /**
     * @return the estadoCivilSelected
     */
    public Integer getEstadoCivilSelected() {
        return estadoCivilSelected;
    }

    /**
     * @param estadoCivilSelected the estadoCivilSelected to set
     */
    public void setEstadoCivilSelected(Integer estadoCivilSelected) {
        this.estadoCivilSelected = estadoCivilSelected;
    }

    /**
     * @return the ciudadSelected
     */
    public String getCiudadSelected() {
        return ciudadSelected;
    }

    /**
     * @param ciudadSelected the ciudadSelected to set
     */
    public void setCiudadSelected(String ciudadSelected) {
        this.ciudadSelected = ciudadSelected;
    }

    /**
     * @return the listadoPersonas
     */
    public List<Persona> getListadoPersonas() {
        return listadoPersonas;
    }

    /**
     * @param listadoPersonas the listadoPersonas to set
     */
    public void setListadoPersonas(List<Persona> listadoPersonas) {
        this.listadoPersonas = listadoPersonas;
    }

    /**
     * @return the panelDatos
     */
    public boolean isPanelDatos() {
        return panelDatos;
    }

    /**
     * @param panelDatos the panelDatos to set
     */
    public void setPanelDatos(boolean panelDatos) {
        this.panelDatos = panelDatos;
    }

    /**
     * @return the carreraSelected
     */
    public Integer getCarreraSelected() {
        return carreraSelected;
    }

    /**
     * @param carreraSelected the carreraSelected to set
     */
    public void setCarreraSelected(Integer carreraSelected) {
        this.carreraSelected = carreraSelected;
    }

    /**
     * @return the facultadSelected
     */
    public Integer getFacultadSelected() {
        return facultadSelected;
    }

    /**
     * @param facultadSelected the facultadSelected to set
     */
    public void setFacultadSelected(Integer facultadSelected) {
        this.facultadSelected = facultadSelected;
    }

    /**
     * @return the listadoFacultad
     */
    public List<SelectItem> getListadoFacultad() {
        return listadoFacultad;
    }

    /**
     * @param listadoFacultad the listadoFacultad to set
     */
    public void setListadoFacultad(List<SelectItem> listadoFacultad) {
        this.listadoFacultad = listadoFacultad;
    }

    /**
     * @return the listadoCarreraPorFacultad
     */
    public List<SelectItem> getListadoCarreraPorFacultad() {
        return listadoCarreraPorFacultad;
    }

    /**
     * @param listadoCarreraPorFacultad the listadoCarreraPorFacultad to set
     */
    public void setListadoCarreraPorFacultad(List<SelectItem> listadoCarreraPorFacultad) {
        this.listadoCarreraPorFacultad = listadoCarreraPorFacultad;
    }

    /**
     * @return the tipoAsignacionFacultad
     */
    public Boolean getTipoAsignacionFacultad() {
        return tipoAsignacionFacultad;
    }

    /**
     * @param tipoAsignacionFacultad the tipoAsignacionFacultad to set
     */
    public void setTipoAsignacionFacultad(Boolean tipoAsignacionFacultad) {
        this.tipoAsignacionFacultad = tipoAsignacionFacultad;
    }

    /**
     * @return the tipoAsignacionCarrera
     */
    public Boolean getTipoAsignacionCarrera() {
        return tipoAsignacionCarrera;
    }

    /**
     * @param tipoAsignacionCarrera the tipoAsignacionCarrera to set
     */
    public void setTipoAsignacionCarrera(Boolean tipoAsignacionCarrera) {
        this.tipoAsignacionCarrera = tipoAsignacionCarrera;
    }
}
