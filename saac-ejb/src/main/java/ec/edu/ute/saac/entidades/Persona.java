package ec.edu.ute.saac.entidades;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.Size;

@Entity
@Table(name="persona",catalog="saac",schema="",uniqueConstraints = {
	    @UniqueConstraint(columnNames = {"per_codigo"})})
@NamedQueries({
    @NamedQuery(name = "Persona.findAll", query = "SELECT p FROM Persona p"),
    @NamedQuery(name = "Persona.findByPerCodigo", query = "SELECT p FROM Persona p WHERE p.perCodigo = :perCodigo"),
    @NamedQuery(name = "Persona.findByPerDocumentoIdentidad", query = "SELECT p FROM Persona p WHERE p.perDocumentoIdentidad = :perDocumentoIdentidad"),
    @NamedQuery(name = "Persona.findByPerNombre", query = "SELECT p FROM Persona p WHERE p.perNombre = :perNombre"),
    @NamedQuery(name = "Persona.findByPerApellido", query = "SELECT p FROM Persona p WHERE p.perApellido = :perApellido"),
    @NamedQuery(name = "Persona.findByPerFechaNacimiento", query = "SELECT p FROM Persona p WHERE p.perFechaNacimiento = :perFechaNacimiento"),
    @NamedQuery(name = "Persona.findByPerDireccion", query = "SELECT p FROM Persona p WHERE p.perDireccion = :perDireccion"),
    @NamedQuery(name = "Persona.findByPerTelfonoFijo", query = "SELECT p FROM Persona p WHERE p.perTelfonoFijo = :perTelfonoFijo"),
    @NamedQuery(name = "Persona.findByPerTelefonoMovil", query = "SELECT p FROM Persona p WHERE p.perTelefonoMovil = :perTelefonoMovil"),
    @NamedQuery(name = "Persona.findByPerEmail", query = "SELECT p FROM Persona p WHERE p.perEmail = :perEmail"),
    @NamedQuery(name = "Persona.findByPerFechaRegistro", query = "SELECT p FROM Persona p WHERE p.perFechaRegistro = :perFechaRegistro"),
    @NamedQuery(name = "Persona.findByPerEstado", query = "SELECT p FROM Persona p WHERE p.perEstado = :perEstado")})
public class Persona implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "per_codigo", nullable = false)
    private Integer perCodigo;
    
    @Basic(optional = false)
    @Size(min = 1, max = 50)
    @Column(name = "per_documento_identidad", nullable = false, length = 50)
    private String perDocumentoIdentidad;
    
    @Basic(optional = false)
    @Size(min = 1, max = 45)
    @Column(name = "per_nombre", nullable = false, length = 45)
    private String perNombre;
    
    @Basic(optional = false)
    @Size(min = 1, max = 45)
    @Column(name = "per_apellido", nullable = false, length = 45)
    private String perApellido;
    
    @Basic(optional = false)
    @Column(name = "per_fecha_nacimiento", nullable = false)
    @Temporal(TemporalType.DATE)
    private Date perFechaNacimiento;
    
    @Basic(optional = false)
    @Size(min = 1, max = 500)
    @Column(name = "per_direccion", nullable = false, length = 500)
    private String perDireccion;
    
    @Basic(optional = false)
    @Size(min = 1, max = 50)
    @Column(name = "per_telfono_fijo", nullable = false, length = 50)
    private String perTelfonoFijo;
    
    @Basic(optional = false)
    @Size(min = 1, max = 50)
    @Column(name = "per_telefono_movil", nullable = false, length = 50)
    private String perTelefonoMovil;
    
    @Basic(optional = false)
    @Size(min = 1, max = 45)
    @Column(name = "per_email", nullable = false, length = 45)
    private String perEmail;
    
    @Basic(optional = false)
    @Column(name = "per_fecha_registro", nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date perFechaRegistro;
    
    @Basic(optional = false)
    @Column(name = "per_estado", nullable = false)
    private boolean perEstado;
    
    @JoinColumn(name = "catalogo_nacionalidad", referencedColumnName = "cat_codigo", nullable = false)
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Catalogo catalogoNacionalidad;
    
    @JoinColumn(name = "catalogo_estado_civil", referencedColumnName = "cat_codigo", nullable = false)
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Catalogo catalogoEstadoCivil;
    
    @JoinColumn(name = "catalogo_genero", referencedColumnName = "cat_codigo", nullable = false)
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Catalogo catalogoGenero;
    
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "persona", fetch = FetchType.LAZY)
    private Collection<Usuario> usuarioList;
    
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "persona", fetch = FetchType.LAZY)
    private Collection<Experiencia> experienciaList;
    
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "persona", fetch = FetchType.LAZY)
    private Collection<Capacitacion> capacitacionList;
	
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "persona", fetch = FetchType.LAZY)
    private Collection<MovimientoProceso> movimientoProcesoList;
    
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "persona", fetch = FetchType.LAZY)
    private Collection<ParticipantesProceso> participantesProcesoList;
    
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "persona", fetch = FetchType.LAZY)
    private Collection<Proceso> procesoList;
    
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "persona", fetch = FetchType.LAZY)
    private Collection<CursoTitulacion> cursoTitulacionList;
    														/*cambiar en la base campo perCodigo por persona*/
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "perCodigo", fetch = FetchType.LAZY)
    private Collection<TemasTitulacion> temasTitulacionList;
    														/*cambiar en la base campo perCodigo por persona*/
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "perCodigo", fetch = FetchType.LAZY)
    private Collection<SeleccionTema> seleccionTemaList;
    
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "persona", fetch = FetchType.LAZY)
    private Collection<ComisionInvestigacion> comisionInvestigacionList;
    
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "persona", fetch = FetchType.LAZY)
    private Collection<PersonaCarrera> personaCarreraList;
    
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "persona", fetch = FetchType.LAZY)
    private Collection<PersonaFacultad> personaFacultadList;
    
    public Persona() {
    }

    public Persona(Integer perCodigo) {
        this.perCodigo = perCodigo;
    }

    public Persona(Integer perCodigo, String perDocumentoIdentidad, String perNombre, String perApellido, Date perFechaNacimiento, String perDireccion, String perTelfonoFijo, String perTelefonoMovil, String perEmail, Date perFechaRegistro, boolean perEstado) {
        this.perCodigo = perCodigo;
        this.perDocumentoIdentidad = perDocumentoIdentidad;
        this.perNombre = perNombre;
        this.perApellido = perApellido;
        this.perFechaNacimiento = perFechaNacimiento;
        this.perDireccion = perDireccion;
        this.perTelfonoFijo = perTelfonoFijo;
        this.perTelefonoMovil = perTelefonoMovil;
        this.perEmail = perEmail;
        this.perFechaRegistro = perFechaRegistro;
        this.perEstado = perEstado;
    }

	public Integer getPerCodigo() {
		return perCodigo;
	}

	public void setPerCodigo(Integer perCodigo) {
		this.perCodigo = perCodigo;
	}

	public String getPerDocumentoIdentidad() {
		return perDocumentoIdentidad;
	}

	public void setPerDocumentoIdentidad(String perDocumentoIdentidad) {
		this.perDocumentoIdentidad = perDocumentoIdentidad;
	}

	public String getPerNombre() {
		return perNombre;
	}

	public void setPerNombre(String perNombre) {
		this.perNombre = perNombre;
	}

	public String getPerApellido() {
		return perApellido;
	}

	public void setPerApellido(String perApellido) {
		this.perApellido = perApellido;
	}

	public Date getPerFechaNacimiento() {
		return perFechaNacimiento;
	}

	public void setPerFechaNacimiento(Date perFechaNacimiento) {
		this.perFechaNacimiento = perFechaNacimiento;
	}

	public String getPerDireccion() {
		return perDireccion;
	}

	public void setPerDireccion(String perDireccion) {
		this.perDireccion = perDireccion;
	}

	public String getPerTelfonoFijo() {
		return perTelfonoFijo;
	}

	public void setPerTelfonoFijo(String perTelfonoFijo) {
		this.perTelfonoFijo = perTelfonoFijo;
	}

	public String getPerTelefonoMovil() {
		return perTelefonoMovil;
	}

	public void setPerTelefonoMovil(String perTelefonoMovil) {
		this.perTelefonoMovil = perTelefonoMovil;
	}

	public String getPerEmail() {
		return perEmail;
	}

	public void setPerEmail(String perEmail) {
		this.perEmail = perEmail;
	}

	public Date getPerFechaRegistro() {
		return perFechaRegistro;
	}

	public void setPerFechaRegistro(Date perFechaRegistro) {
		this.perFechaRegistro = perFechaRegistro;
	}

	public boolean isPerEstado() {
		return perEstado;
	}

	public void setPerEstado(boolean perEstado) {
		this.perEstado = perEstado;
	}

	public Catalogo getCatalogoNacionalidad() {
		return catalogoNacionalidad;
	}

	public void setCatalogoNacionalidad(Catalogo catalogoNacionalidad) {
		this.catalogoNacionalidad = catalogoNacionalidad;
	}

	public Catalogo getCatalogoEstadoCivil() {
		return catalogoEstadoCivil;
	}

	public void setCatalogoEstadoCivil(Catalogo catalogoEstadoCivil) {
		this.catalogoEstadoCivil = catalogoEstadoCivil;
	}

	public Catalogo getCatalogoGenero() {
		return catalogoGenero;
	}

	public void setCatalogoGenero(Catalogo catalogoGenero) {
		this.catalogoGenero = catalogoGenero;
	}

	public Collection<Usuario> getUsuarioList() {
		return usuarioList;
	}

	public void setUsuarioList(Collection<Usuario> usuarioList) {
		this.usuarioList = usuarioList;
	}

	public Collection<Experiencia> getExperienciaList() {
		return experienciaList;
	}

	public void setExperienciaList(Collection<Experiencia> experienciaList) {
		this.experienciaList = experienciaList;
	}

	public Collection<Capacitacion> getCapacitacionList() {
		return capacitacionList;
	}

	public void setCapacitacionList(Collection<Capacitacion> capacitacionList) {
		this.capacitacionList = capacitacionList;
	}

	public Collection<MovimientoProceso> getMovimientoProcesoList() {
		return movimientoProcesoList;
	}

	public void setMovimientoProcesoList(
			Collection<MovimientoProceso> movimientoProcesoList) {
		this.movimientoProcesoList = movimientoProcesoList;
	}

	public Collection<ParticipantesProceso> getParticipantesProcesoList() {
		return participantesProcesoList;
	}

	public void setParticipantesProcesoList(
			Collection<ParticipantesProceso> participantesProcesoList) {
		this.participantesProcesoList = participantesProcesoList;
	}

	public Collection<Proceso> getProcesoList() {
		return procesoList;
	}

	public void setProcesoList(Collection<Proceso> procesoList) {
		this.procesoList = procesoList;
	}

	public Collection<CursoTitulacion> getCursoTitulacionList() {
		return cursoTitulacionList;
	}

	public void setCursoTitulacionList(
			Collection<CursoTitulacion> cursoTitulacionList) {
		this.cursoTitulacionList = cursoTitulacionList;
	}

	public Collection<TemasTitulacion> getTemasTitulacionList() {
		return temasTitulacionList;
	}

	public void setTemasTitulacionList(
			Collection<TemasTitulacion> temasTitulacionList) {
		this.temasTitulacionList = temasTitulacionList;
	}

	public Collection<SeleccionTema> getSeleccionTemaList() {
		return seleccionTemaList;
	}

	public void setSeleccionTemaList(Collection<SeleccionTema> seleccionTemaList) {
		this.seleccionTemaList = seleccionTemaList;
	}

	public Collection<ComisionInvestigacion> getComisionInvestigacionList() {
		return comisionInvestigacionList;
	}

	public void setComisionInvestigacionList(
			Collection<ComisionInvestigacion> comisionInvestigacionList) {
		this.comisionInvestigacionList = comisionInvestigacionList;
	}

	public Collection<PersonaCarrera> getPersonaCarreraList() {
		return personaCarreraList;
	}

	public void setPersonaCarreraList(Collection<PersonaCarrera> personaCarreraList) {
		this.personaCarreraList = personaCarreraList;
	}

	public Collection<PersonaFacultad> getPersonaFacultadList() {
		return personaFacultadList;
	}

	public void setPersonaFacultadList(
			Collection<PersonaFacultad> personaFacultadList) {
		this.personaFacultadList = personaFacultadList;
	}
    
	
    @Override
    public int hashCode() {
        int hash = 0;
        hash += (perCodigo != null ? perCodigo.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        if (!(object instanceof Persona)) {
            return false;
        }
        Persona other = (Persona) object;
        if ((this.perCodigo == null && other.perCodigo != null) || (this.perCodigo != null && !this.perCodigo.equals(other.perCodigo))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ec.edu.ute.saac.entidades.Persona[ perCodigo=" + perCodigo + " ]";
    }
    
    
    

}
