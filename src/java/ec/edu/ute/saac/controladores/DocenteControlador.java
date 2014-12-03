/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ec.edu.ute.saac.controladores;

import ec.edu.ute.saac.entidades.*;
import ec.edu.ute.saac.pojo.ItemRevision;
import ec.edu.ute.saac.servicios.*;
import ec.edu.ute.saac.utils.Crypt;
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
public class DocenteControlador {

    private static final Log log = LogFactory.getLog(DocenteControlador.class);
    @PersistenceContext(unitName = "saacPU")
    private EntityManager entityManager;
    private MessageSender sender;
    private ReporteControlador reporteControlador;
    private Utilitarios utilitarios;
    private boolean panelDatos;
    private boolean panelObservacion;
    private boolean panelObservacion2;
    private List<Persona> listadoObservaciones;
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
    private Integer rolSelected;
    private List<SelectItem> listadoFacultad;
    private List<SelectItem> listadoCarreraPorFacultad;
    private List<SelectItem> listadoRoles;
    private boolean bandFacultafCarrera;
    /**
     * ******************************************************
     */
    private List<ItemRevision> listadoItemRevisiones;
    private List<ItemRevision> listadoItemCalificacion;
    private List<ItemRevision> listadoDinamico;
    @EJB
    private CatalogoFacade catalogoFacade;
    @EJB
    private PersonaFacade personaFacade;
    @EJB
    private FacultadFacade facultadFacade;
    @EJB
    private CarreraFacade carreraFacade;
    @EJB
    private RolFacade rolFacade;
    @Resource
    private UserTransaction u;

    public DocenteControlador() {
    }

    @PostConstruct
    public void inicializacion() {
        try {
            sender = (MessageSender) Utilitarios.getManagedBean("messageSender");
            reporteControlador = (ReporteControlador) Utilitarios.getManagedBean("reporteControlador");
            persona = new Persona();
            utilitarios = new Utilitarios();

            listadoEstadoCivil = new ArrayList<SelectItem>();
            listadoGenero = new ArrayList<SelectItem>();
            listadoNacionalidad = new ArrayList<SelectItem>();
            listadoProvincias = new ArrayList<SelectItem>();
            listadoCiudades = new ArrayList<SelectItem>();
            setListadoPersonas(new ArrayList<Persona>());
            limpiarCombos();
            limpiarCombosCarrera();
            setCiudadSelected("");
            setPanelDatos(false);
            setPanelObservacion(false);
            setPanelObservacion2(false);

            listadoFacultad = new ArrayList<SelectItem>();
            listadoCarreraPorFacultad = new ArrayList<SelectItem>();
            listadoRoles = new ArrayList<SelectItem>();
            bandFacultafCarrera = false;

            listadoObservaciones = new ArrayList<Persona>();
            listadoItemRevisiones = new ArrayList<ItemRevision>();
            listadoItemCalificacion = new ArrayList<ItemRevision>();
            ItemRevision item1 = new ItemRevision("1", "Título propuesto",
                    "El Título es coherente con el Objetivo general y demuestra ser una síntesis de la investigación. El tema es parte de las líneas de investigación de la Universidad.",
                    "si",
                    "observacion 123");
            ItemRevision item2 = new ItemRevision("2", "Justificación",
                    "Expone el problema de forma clara y concreta. Sustenta el propósito de la investigación sobre la base del problema a resolver, el estado del arte y fundamento teórico del tema. Demuestra la viabilidad técnica y económica para la ejecución del proyecto.",
                    "si",
                    "observacion 123");
            ItemRevision item3 = new ItemRevision("3", "Hipótesis",
                    "Formula la hipótesis correspondiente, como la posible solución al problema, y está vinculada al objetivo general",
                    "si",
                    "observacion 123");
            ItemRevision item4 = new ItemRevision("4", "Objetivos propuestos: \n General \n Específicos",
                    "Los objetivos propuestos permitirán obtener resultados cuantificables. El general debe establecer el resultado final de la investigación y está vinculado con el título propuesto. Los específicos ayudarán a conseguir el general.",
                    "si",
                    "observacion 123");
            ItemRevision item5 = new ItemRevision("5", "Alcance",
                    "Delimita el trabajo de investigación de tal manera que permita demostrar la posible solución al problema.",
                    "no",
                    "observacion 123");
            ItemRevision item6 = new ItemRevision("6", "Trabajos afines realizados",
                    "Lista los trabajos afines al tema y que ya se han realizado en la Universidad.",
                    "no",
                    "observacion 123");
            ItemRevision item7 = new ItemRevision("7", "Metodología propuesta",
                    "Indica de forma clara y concreta el cómo se hará la investigación: materiales, métodos, diseño experimental y otras herramientas de recopilación de datos, así como, los métodos necesarios para el análisis de los resultados. Demuestra un rigor científico y/o tecnológico adecuado a la carrera y al título a obtener.",
                    "si",
                    "observacion 123");
            ItemRevision item8 = new ItemRevision("8", "Cronograma",
                    "Presenta en una tabla el detalle en el tiempo en que se ejecutarán las principales actividades para conseguir los objetivos específicos y el general",
                    "no",
                    "observacion 123");
            ItemRevision item9 = new ItemRevision("9", "Presupuesto",
                    "Presenta, de forma lógica y real, los detalle de costos administrativos, de ejecución del trabajo y la respectiva fuente de financiamiento.",
                    "no",
                    "observacion 123");
            ItemRevision item10 = new ItemRevision("10", "Bibliografía",
                    "La Bibliografía (Libros, Revistas científicas, etc.) es la requerida por el tema de trabajo. Son ediciones actualizadas, por ej. del año 2000 en adelante, preferentemente.\nLa bibliografía corresponde con las citas expuestas en el texto.",
                    "no",
                    "observacion 123");
            ItemRevision item11 = new ItemRevision("11", "Temario",
                    "La estructura final del Trabajo de Titulación es coherente con lo propuesto en la justificación, alcance y metodología. Presenta los subtítulos más relevantes de la parte teórica y metodológica.",
                    "no",
                    "observacion 123");
            ItemRevision item12 = new ItemRevision("12", "Redacción y ortografía",
                    "Cumple con las normas de ortografía y redacción",
                    "no",
                    "observacion 123");
            listadoItemRevisiones.add(item1);
            listadoItemRevisiones.add(item2);
            listadoItemRevisiones.add(item3);
            listadoItemRevisiones.add(item4);
            listadoItemRevisiones.add(item5);
            listadoItemRevisiones.add(item6);
            listadoItemRevisiones.add(item7);
            listadoItemRevisiones.add(item8);
            listadoItemRevisiones.add(item9);
            listadoItemRevisiones.add(item10);
            listadoItemRevisiones.add(item11);
            listadoItemRevisiones.add(item12);


            ItemRevision itemCal1 = new ItemRevision("1", "Formatos establecidos",
                    "Se ajusta a los parámetros establecidos.",
                    "0.5",
                    "0.4");

            ItemRevision itemCal2 = new ItemRevision("2", "Objetivos propuestos",
                    "Los objetivos propuestos permitieron obtener resultados cuantificables.",
                    "1",
                    "0.8");

            ItemRevision itemCal3 = new ItemRevision("1", "Metodología aplicada",
                    "La Metodología fue clara y sistemática para alcanzar los objetivos propuestos. Demuestra un rigor científico y/o tecnológico adecuado a la carrera y al título a obtener.",
                    "2",
                    "1.8");

            ItemRevision itemCal4 = new ItemRevision("1", "Análisis de resultados",
                    "El análisis se realizó de forma ordenada y entendible, comparándola con la bibliografía existente.",
                    "3",
                    "2.5");

            ItemRevision itemCal5 = new ItemRevision("1", "Conclusiones y Recomendaciones",
                    "Las Conclusiones se presentaron de acuerdo a los objetivos planteados. Las recomendaciones tienen pertinencia con el trabajo realizado.",
                    "2",
                    "1.8");

            ItemRevision itemCal6 = new ItemRevision("1", "Consulta Bibliográfica",
                    "La Bibliografía (Libros, Revistas científicas) es la requerida por el tema de trabajo. Son ediciones actualizadas, por ej. del año 2000 en adelante, preferentemente. Las citas en el texto corresponden a la bibliografía expuesta..",
                    "1",
                    "0.5");

            ItemRevision itemCal7 = new ItemRevision("1", "Redacción y ortografía",
                    "Cumple con las normas de ortografía y redacción.",
                    "0.5",
                    "0.4");

            listadoItemCalificacion.add(itemCal1);
            listadoItemCalificacion.add(itemCal2);
            listadoItemCalificacion.add(itemCal3);
            listadoItemCalificacion.add(itemCal4);
            listadoItemCalificacion.add(itemCal5);
            listadoItemCalificacion.add(itemCal6);
            listadoItemCalificacion.add(itemCal7);


            listadoDinamico = new ArrayList<ItemRevision>();

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

            if (listadoRoles.size() <= 0) {
                List<SelectItem> lista = new ArrayList<SelectItem>();
                for (Rol rol : rolFacade.findAll()) {
                    lista.add(new SelectItem(rol.getRolCodigo(), rol.getRolNombre()));
                }
                listadoRoles.addAll(lista);
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
        System.out.println("hola pepe");
        Persona p = new Persona();
        persona = p;
        limpiarCombos();
        setPanelDatos(true);

    }

    public void seleccionar(Persona persona) {
//        setPersona((Persona) evt.getComponent().getAttributes().get("select"));
        if (persona != null) {
            setPersona(persona);
        }
//        log.info(this.persona.getPerCodigo());
        setPanelDatos(true);
//        bandFacultafCarrera = true;
//        cargaCombos();
    }

    public void limpiarCombos() {
        nacionalidadSelected = Integer.valueOf(0);
        generoSelected = Integer.valueOf(0);
        estadoCivilSelected = Integer.valueOf(0);
        rolSelected = Integer.valueOf(0);
    }

    public void cargaCombos() {
        nacionalidadSelected = persona.getCatalogoNacionalidad().getCatCodigo();
        estadoCivilSelected = persona.getCatalogoEstadoCivil().getCatCodigo();
        generoSelected = persona.getCatalogoGenero().getCatCodigo();

        bandFacultafCarrera = true;

        if (listadoFacultad.size() <= 0) {
            List<SelectItem> lista = new ArrayList<SelectItem>();
            for (Facultad fac : facultadFacade.findAll()) {
                lista.add(new SelectItem(fac.getFacCodigo(), fac.getFacNombre()));
            }
            listadoFacultad.addAll(lista);
        }

        if (persona.getPersonaCarreraList().size() > 0) {
            carreraSelected = persona.getPersonaCarreraList().get(0).getCarrera().getCarCodigo();
            Facultad fac = entityManager.find(Carrera.class, carreraSelected).getFacultad();
            facultadSelected = fac.getFacCodigo();

            if (listadoCarreraPorFacultad.size() <= 0) {
                List<SelectItem> lista = new ArrayList<SelectItem>();
                for (Carrera car : carreraFacade.obtenerCarreraPorFacultad(fac)) {
                    lista.add(new SelectItem(car.getCarCodigo(), car.getCarNombre()));
                }
                listadoCarreraPorFacultad.addAll(lista);
            }

            tipoAsignacionCarrera = true;
            //FIXME arreglar por los cambios de ORM
//            rolSelected = persona.getPersonaCarreraList().get(0).get().getRolCodigo();
        } else {
            facultadSelected = persona.getPersonaFacultadList().get(0).getFacultad().getFacCodigo();
            tipoAsignacionFacultad = true;
//            rolSelected = persona.getPersonaFacultadList().get(0).getRolCodigo().getRolCodigo();
        }
    }

    public void cambiarTipoAsignacion(ValueChangeEvent evt) {
        listadoFacultad = new ArrayList<SelectItem>();
        setFacultadSelected(Integer.valueOf(-1));
        setCarreraSelected(Integer.valueOf(-1));
        if (listadoFacultad.size() <= 0) {
            List<SelectItem> lista = new ArrayList<SelectItem>();
            for (Facultad fac : facultadFacade.findAll()) {
                lista.add(new SelectItem(fac.getFacCodigo(), fac.getFacNombre()));
            }
            listadoFacultad.addAll(lista);
        }

        if (evt.getNewValue() != null) {
            String dato = (String) evt.getNewValue();

            if (dato.equals("facultad")) {
                setTipoAsignacionFacultad(true);
                setTipoAsignacionCarrera(false);
                bandFacultafCarrera = true;
            }
            if (dato.equals("carrera")) {
                setTipoAsignacionFacultad(false);
                setTipoAsignacionCarrera(true);
                bandFacultafCarrera = true;
            }
        } else {
            bandFacultafCarrera = false;
        }

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

    public void guardarUsuario() {
        try {
            if (!bandFacultafCarrera) {
                utilitarios.ponerMensajeError(Utilitarios.ERROR, "No se ha asignado la Facultad o la carrera");
            } else {
                PersonaFacultad personaFacultad = new PersonaFacultad();
                PersonaCarrera personaCarrera = new PersonaCarrera();
                Usuario usuario = new Usuario();
                UsuarioRol usuarioRol = new UsuarioRol();

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

                /**
                 * ******************************************
                 */
                Rol rolTemp;
                rolTemp = entityManager.find(Rol.class, rolSelected);
                /**
                 * ******************************************
                 */
                if (tipoAsignacionFacultad) {
                    Facultad fac = entityManager.find(Facultad.class, facultadSelected);
                    personaFacultad.setFacultad(fac);
                    personaFacultad.setPersona(persona);
                    //FIXME arreglar por el ORM
//                    personaFacultad.setRolCodigo(rolTemp);
                } else if (tipoAsignacionCarrera) {
                    Carrera car = entityManager.find(Carrera.class, carreraSelected);
                    personaCarrera.setCarrera(car);
                    personaCarrera.setPersona(persona);
//                    personaCarrera.setRolCodigo(rolTemp);
                }

                usuario.setPersona(persona);
                usuario.setUsuEstado(true);
                usuario.setUsuFchRegistro(Calendar.getInstance().getTime());
                usuario.setUsuUserName(persona.getPerDocumentoIdentidad());
                usuario.setUsuUteLogin(persona.getPerDocumentoIdentidad());
                usuario.setUsuPassword(Crypt.encryptMD5("123"));

                usuarioRol.setUsuario(usuario);
                usuarioRol.setRol(rolTemp);

                u.begin();
                if (bandFacultafCarrera) {
                    entityManager.persist(personaFacultad);
                } else {
                    entityManager.persist(personaCarrera);
                }
                entityManager.persist(persona);
                entityManager.persist(usuario);
                entityManager.persist(usuarioRol);
                u.commit();
                utilitarios.ponerMensajeInfo(Utilitarios.REGISTRO_GUARDADO, " ");
//            sender.sendInfoPopup("Registro Ingresado");
                inicializacion();
            }
        } catch (Exception e) {
            e.printStackTrace();
            String error = (String) e.getMessage();
            utilitarios.ponerMensajeError(Utilitarios.ERROR_REGISTRO_GUARDADO, error);
            utilitarios.error(DocenteControlador.class.getName(), "Error al procesar registro", e);
        }
    }

    public void actualizarUsuario() {
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
            utilitarios.error(DocenteControlador.class.getName(), "Error al procesar registro", e);
        }

    }

    public void abrirObservaciones() {
        setPanelObservacion(true);
    }

    public void cerrarObservaciones() {
        setPanelObservacion(false);
    }

    public void abrirObservaciones2() {
        setPanelObservacion2(true);
    }

    public void cerrarObservaciones2() {
        setPanelObservacion2(false);
    }

    public void agregarListadoDinamico() {
        if (listadoDinamico == null) {
            listadoDinamico.add(new ItemRevision());
        } else {
            listadoDinamico.add(new ItemRevision());
        }
    }

    public void crearListadoDinamico() {
        listadoDinamico = new ArrayList<ItemRevision>();
        listadoDinamico.add(new ItemRevision());
    }

    public void removerListadoDinamico(ItemRevision ir) {
        if (listadoDinamico.size() < 1) {
            System.out.println("ya no se puede eliminar");
        } else {
            listadoDinamico.remove(ir);
        }
    }

    public void agregarObservaciones() {
        if (listadoObservaciones.size() < 5) {
            Persona o = new Persona();
            listadoObservaciones.add(o);
        } else {
            sender.sendInfoPopup("No puede agregar mas de 5 observaciones");
        }
    }

    public void generarReporte() {
        reporteControlador.generarReporte();
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

    /**
     * @return the rolSelected
     */
    public Integer getRolSelected() {
        return rolSelected;
    }

    /**
     * @param rolSelected the rolSelected to set
     */
    public void setRolSelected(Integer rolSelected) {
        this.rolSelected = rolSelected;
    }

    /**
     * @return the listadoRoles
     */
    public List<SelectItem> getListadoRoles() {
        return listadoRoles;
    }

    /**
     * @param listadoRoles the listadoRoles to set
     */
    public void setListadoRoles(List<SelectItem> listadoRoles) {
        this.listadoRoles = listadoRoles;
    }

    public boolean isPanelObservacion() {
        return panelObservacion;
    }

    public void setPanelObservacion(boolean panelObservacion) {
        this.panelObservacion = panelObservacion;
    }

    public void setPanelObservacion2(boolean panelObservacion2) {
        this.panelObservacion2 = panelObservacion2;
    }

    public boolean isPanelObservacion2() {
        return panelObservacion2;
    }

    public List<Persona> getListadoObservaciones() {
        return listadoObservaciones;
    }

    public void setListadoObservaciones(List<Persona> listadoObservaciones) {
        this.listadoObservaciones = listadoObservaciones;
    }

    public List<ItemRevision> getListadoItemRevisiones() {
        return listadoItemRevisiones;
    }

    public void setListadoItemRevisiones(List<ItemRevision> listadoItemRevisiones) {
        this.listadoItemRevisiones = listadoItemRevisiones;
    }

    public List<ItemRevision> getListadoDinamico() {
        return listadoDinamico;
    }

    public void setListadoDinamico(List<ItemRevision> listadoDinamico) {
        this.listadoDinamico = listadoDinamico;
    }

    public List<ItemRevision> getListadoItemCalificacion() {
        return listadoItemCalificacion;
    }

    public void setListadoItemCalificacion(List<ItemRevision> listadoItemCalificacion) {
        this.listadoItemCalificacion = listadoItemCalificacion;
    }
}
