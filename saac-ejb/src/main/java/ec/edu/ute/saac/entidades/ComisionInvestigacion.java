package ec.edu.ute.saac.entidades;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Basic;
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
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.UniqueConstraint;


@Entity
@Table(name="comision_investigacion", catalog="saac",schema="",uniqueConstraints = {
	    @UniqueConstraint(columnNames = {"com_inv_codigo"})})
@NamedQueries({
    @NamedQuery(name = "ComisionInvestigacion.findAll", query = "SELECT c FROM ComisionInvestigacion c"),
    @NamedQuery(name = "ComisionInvestigacion.findByComInvCodigo", query = "SELECT c FROM ComisionInvestigacion c WHERE c.comInvCodigo = :comInvCodigo"),
    @NamedQuery(name = "ComisionInvestigacion.findByComInvFecha", query = "SELECT c FROM ComisionInvestigacion c WHERE c.comInvFecha = :comInvFecha")})
public class ComisionInvestigacion implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "com_inv_codigo", nullable = false)
	private Integer comInvCodigo;
	
	@Basic(optional = false)
	@Column(name = "com_inv_fecha", nullable = false)
	@Temporal(TemporalType.TIMESTAMP)
	private Date comInvFecha;
	
	@JoinColumn(name="carrera",referencedColumnName = "car_codigo", nullable = false)
	@ManyToOne(optional = false, fetch = FetchType.LAZY)
	private Carrera carrera;
	
	@JoinColumn(name = "persona", referencedColumnName = "per_codigo", nullable = false)
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
	private Persona persona;
	
	public ComisionInvestigacion() {
		
    }

    public ComisionInvestigacion(Integer comInvCodigo) {
        this.comInvCodigo = comInvCodigo;
    }
    
    public ComisionInvestigacion(Integer comInvCodigo, Date comInvFecha) {
        this.comInvCodigo = comInvCodigo;
        this.comInvFecha = comInvFecha;
    }

	public Integer getComInvCodigo() {
		return comInvCodigo;
	}

	public void setComInvCodigo(Integer comInvCodigo) {
		this.comInvCodigo = comInvCodigo;
	}

	public Date getComInvFecha() {
		return comInvFecha;
	}

	public void setComInvFecha(Date comInvFecha) {
		this.comInvFecha = comInvFecha;
	}

	public Carrera getCarrera() {
		return carrera;
	}

	public void setCarrera(Carrera carrera) {
		this.carrera = carrera;
	}

	public Persona getPersona() {
		return persona;
	}

	public void setPersona(Persona persona) {
		this.persona = persona;
	}
    
	@Override
	public int hashCode() {
		int hash = 0;
	    hash += (comInvCodigo != null ? comInvCodigo.hashCode() : 0);
	    return hash;
	}

	@Override
	public boolean equals(Object object) {
	// TODO: Warning - this method won't work in the case the id fields are not set
	if (!(object instanceof ComisionInvestigacion)) {
		return false;
	}
	ComisionInvestigacion other = (ComisionInvestigacion) object;
	if ((this.comInvCodigo == null && other.comInvCodigo != null) || (this.comInvCodigo != null && !this.comInvCodigo.equals(other.comInvCodigo))) {
		return false;
	}
	    return true;
	}

	@Override
	public String toString() {
		return "ec.edu.ute.saac.entidades.ComisionInvestigacion[ comInvCodigo=" + comInvCodigo + " ]";
	}
    

	

}
