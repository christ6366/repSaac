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

@Entity
@Table(name="proceso",catalog="saac",schema="",uniqueConstraints = {
	    @UniqueConstraint(columnNames = {"prc_codigo"})})
@NamedQueries({
    @NamedQuery(name = "Proceso.findAll", query = "SELECT p FROM Proceso p"),
    @NamedQuery(name = "Proceso.findByPrcCodigo", query = "SELECT p FROM Proceso p WHERE p.prcCodigo = :prcCodigo"),
    @NamedQuery(name = "Proceso.findByPrcFechaRegistro", query = "SELECT p FROM Proceso p WHERE p.prcFechaRegistro = :prcFechaRegistro"),
    @NamedQuery(name = "Proceso.findByPrcFechaAprobacion", query = "SELECT p FROM Proceso p WHERE p.prcFechaAprobacion = :prcFechaAprobacion")})
public class Proceso implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "prc_codigo", nullable = false)
    private Integer prcCodigo;
    
    @Basic(optional = false)
    @Column(name = "prc_fecha_registro", nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date prcFechaRegistro;
    
    @Column(name = "prc_fecha_aprobacion")
    @Temporal(TemporalType.TIMESTAMP)
    private Date prcFechaAprobacion;
    
    @JoinColumn(name = "temas_titulacion", referencedColumnName = "tem_tit_codigo", nullable = false)
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private TemasTitulacion temasTitulacion;
    
    @JoinColumn(name = "persona", referencedColumnName = "per_codigo", nullable = false)
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Persona persona;
    
    @JoinColumn(name = "tipo_proceso", referencedColumnName = "tip_prc_codigo", nullable = false)
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private TipoProceso tipoProceso;
    																/*referencia faltante en original*/
    @JoinColumn(name = "periodos", referencedColumnName = "prd_codigo", nullable = false)
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Periodos periodos;
    
    @JoinColumn(name = "curso_titulacion", referencedColumnName = "cur_tit_codigo")
    @ManyToOne(fetch = FetchType.LAZY)
    private CursoTitulacion cursoTitulacion;
    																/*referencia faltante en original*/
    @JoinColumn(name = "institucion", referencedColumnName = "ins_codigo")
    @ManyToOne(fetch = FetchType.LAZY)
    private Institucion institucion;
    
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "proceso", fetch = FetchType.LAZY)
    private Collection<ParticipantesProceso> participantesProcesoList;
    
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "proceso", fetch = FetchType.LAZY)
    private Collection<AprobacionProceso> aprobacionProcesoList;
    
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "proceso", fetch = FetchType.LAZY)
    private Collection<MovimientoProceso> movimientoProcesoList;
    																/*referencia faltante en original*/
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "proceso", fetch = FetchType.LAZY)
    private Collection<Contenido> contenidoList;
    
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "proceso", fetch = FetchType.LAZY)
    private Collection<Archivo> archivoList;
    																/*referencia faltante en original*/
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "proceso", fetch = FetchType.LAZY)
    private Collection<Revision> revisionList;
    
    public Proceso() {
    }

    public Proceso(Integer prcCodigo) {
        this.prcCodigo = prcCodigo;
    }

    public Proceso(Integer prcCodigo, Date prcFechaRegistro) {
        this.prcCodigo = prcCodigo;
        this.prcFechaRegistro = prcFechaRegistro;
    }

	public Integer getPrcCodigo() {
		return prcCodigo;
	}

	public void setPrcCodigo(Integer prcCodigo) {
		this.prcCodigo = prcCodigo;
	}

	public Date getPrcFechaRegistro() {
		return prcFechaRegistro;
	}

	public void setPrcFechaRegistro(Date prcFechaRegistro) {
		this.prcFechaRegistro = prcFechaRegistro;
	}

	public Date getPrcFechaAprobacion() {
		return prcFechaAprobacion;
	}

	public void setPrcFechaAprobacion(Date prcFechaAprobacion) {
		this.prcFechaAprobacion = prcFechaAprobacion;
	}

	public TemasTitulacion getTemasTitulacion() {
		return temasTitulacion;
	}

	public void setTemasTitulacion(TemasTitulacion temasTitulacion) {
		this.temasTitulacion = temasTitulacion;
	}

	public Persona getPersona() {
		return persona;
	}

	public void setPersona(Persona persona) {
		this.persona = persona;
	}

	public TipoProceso getTipoProceso() {
		return tipoProceso;
	}

	public void setTipoProceso(TipoProceso tipoProceso) {
		this.tipoProceso = tipoProceso;
	}

	public Periodos getPeriodos() {
		return periodos;
	}

	public void setPeriodos(Periodos periodos) {
		this.periodos = periodos;
	}

	public CursoTitulacion getCursoTitulacion() {
		return cursoTitulacion;
	}

	public void setCursoTitulacion(CursoTitulacion cursoTitulacion) {
		this.cursoTitulacion = cursoTitulacion;
	}

	public Institucion getInstitucion() {
		return institucion;
	}

	public void setInstitucion(Institucion institucion) {
		this.institucion = institucion;
	}

	public Collection<ParticipantesProceso> getParticipantesProcesoList() {
		return participantesProcesoList;
	}

	public void setParticipantesProcesoList(
			Collection<ParticipantesProceso> participantesProcesoList) {
		this.participantesProcesoList = participantesProcesoList;
	}

	public Collection<AprobacionProceso> getAprobacionProcesoList() {
		return aprobacionProcesoList;
	}

	public void setAprobacionProcesoList(
			Collection<AprobacionProceso> aprobacionProcesoList) {
		this.aprobacionProcesoList = aprobacionProcesoList;
	}

	public Collection<MovimientoProceso> getMovimientoProcesoList() {
		return movimientoProcesoList;
	}

	public void setMovimientoProcesoList(
			Collection<MovimientoProceso> movimientoProcesoList) {
		this.movimientoProcesoList = movimientoProcesoList;
	}

	public Collection<Contenido> getContenidoList() {
		return contenidoList;
	}

	public void setContenidoList(Collection<Contenido> contenidoList) {
		this.contenidoList = contenidoList;
	}

	public Collection<Archivo> getArchivoList() {
		return archivoList;
	}

	public void setArchivoList(Collection<Archivo> archivoList) {
		this.archivoList = archivoList;
	}

	public Collection<Revision> getRevisionList() {
		return revisionList;
	}

	public void setRevisionList(Collection<Revision> revisionList) {
		this.revisionList = revisionList;
	}
    
    @Override
    public boolean equals(Object object) {
        if (!(object instanceof Proceso)) {
            return false;
        }
        Proceso other = (Proceso) object;
        if ((this.prcCodigo == null && other.prcCodigo != null) || (this.prcCodigo != null && !this.prcCodigo.equals(other.prcCodigo))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ec.edu.ute.saac.entidades.Proceso[ prcCodigo=" + prcCodigo + " ]";
    }
    
}
