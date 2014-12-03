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
@Table(name="movimiento_proceso",catalog="saac",schema="",uniqueConstraints = {
	    @UniqueConstraint(columnNames = {"mov_prc_codigo"})})
@NamedQueries({
    @NamedQuery(name = "MovimientoProceso.findAll", query = "SELECT m FROM MovimientoProceso m"),
    @NamedQuery(name = "MovimientoProceso.findByMovPrcCodigo", query = "SELECT m FROM MovimientoProceso m WHERE m.movPrcCodigo = :movPrcCodigo"),
    @NamedQuery(name = "MovimientoProceso.findByMovPrcFechaInicio", query = "SELECT m FROM MovimientoProceso m WHERE m.movPrcFechaInicio = :movPrcFechaInicio"),
    @NamedQuery(name = "MovimientoProceso.findByMovPrcFechaFin", query = "SELECT m FROM MovimientoProceso m WHERE m.movPrcFechaFin = :movPrcFechaFin"),
    @NamedQuery(name = "MovimientoProceso.findByMovPrcEstado", query = "SELECT m FROM MovimientoProceso m WHERE m.movPrcEstado = :movPrcEstado")})
public class MovimientoProceso implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
	@Column(name="mov_prc_codigo",nullable=false)
	private Integer movPrcCodigo;
	
    @Basic(optional = false)
    @Column(name = "mov_prc_fecha_inicio", nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date movPrcFechaInicio;
    
    @Basic(optional = false)
    @Column(name = "mov_prc_fecha_fin", nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date movPrcFechaFin;
    
    @Basic(optional = false)
    @Column(name = "mov_prc_estado", nullable = false)
    private boolean movPrcEstado;
    
    @JoinColumn(name = "persona", referencedColumnName = "per_codigo", nullable = false)
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Persona persona;
    
    @JoinColumn(name = "proceso", referencedColumnName = "prc_codigo", nullable = false)
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Proceso proceso;
    															/*hace referencia a revision en la orininal*/
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "movimientoProceso", fetch = FetchType.LAZY)
    private Collection<Observacion> observacionList;
    
    public MovimientoProceso() {
    }

    public MovimientoProceso(Integer movPrcCodigo) {
        this.movPrcCodigo = movPrcCodigo;
    }

    public MovimientoProceso(Integer movPrcCodigo, Date movPrcFechaInicio, Date movPrcFechaFin, boolean movPrcEstado) {
        this.movPrcCodigo = movPrcCodigo;
        this.movPrcFechaInicio = movPrcFechaInicio;
        this.movPrcFechaFin = movPrcFechaFin;
        this.movPrcEstado = movPrcEstado;
    }

	public Integer getMovPrcCodigo() {
		return movPrcCodigo;
	}

	public void setMovPrcCodigo(Integer movPrcCodigo) {
		this.movPrcCodigo = movPrcCodigo;
	}

	public Date getMovPrcFechaInicio() {
		return movPrcFechaInicio;
	}

	public void setMovPrcFechaInicio(Date movPrcFechaInicio) {
		this.movPrcFechaInicio = movPrcFechaInicio;
	}

	public Date getMovPrcFechaFin() {
		return movPrcFechaFin;
	}

	public void setMovPrcFechaFin(Date movPrcFechaFin) {
		this.movPrcFechaFin = movPrcFechaFin;
	}

	public boolean isMovPrcEstado() {
		return movPrcEstado;
	}

	public void setMovPrcEstado(boolean movPrcEstado) {
		this.movPrcEstado = movPrcEstado;
	}

	public Persona getPersona() {
		return persona;
	}

	public void setPersona(Persona persona) {
		this.persona = persona;
	}

	public Proceso getProceso() {
		return proceso;
	}

	public void setProceso(Proceso proceso) {
		this.proceso = proceso;
	}

	public Collection<Observacion> getObservacionList() {
		return observacionList;
	}

	public void setObservacionList(Collection<Observacion> observacionList) {
		this.observacionList = observacionList;
	}
    
    @Override
    public int hashCode() {
        int hash = 0;
        hash += (movPrcCodigo != null ? movPrcCodigo.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        if (!(object instanceof MovimientoProceso)) {
            return false;
        }
        MovimientoProceso other = (MovimientoProceso) object;
        if ((this.movPrcCodigo == null && other.movPrcCodigo != null) || (this.movPrcCodigo != null && !this.movPrcCodigo.equals(other.movPrcCodigo))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ec.edu.ute.saac.entidades.MovimientoProceso[ movPrcCodigo=" + movPrcCodigo + " ]";
    }
	
}
