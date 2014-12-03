package ec.edu.ute.saac.entidades;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Basic;
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
import javax.persistence.Column;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name="participantes_proceso",catalog="saac",schema="",uniqueConstraints = {
	    @UniqueConstraint(columnNames = {"par_pro_codigo"})})
@NamedQueries({
    @NamedQuery(name = "ParticipantesProceso.findAll", query = "SELECT p FROM ParticipantesProceso p"),
    @NamedQuery(name = "ParticipantesProceso.findByParProCodigo", query = "SELECT p FROM ParticipantesProceso p WHERE p.parProCodigo = :parProCodigo"),
    @NamedQuery(name = "ParticipantesProceso.findByParProFecha", query = "SELECT p FROM ParticipantesProceso p WHERE p.parProFecha = :parProFecha")})
public class ParticipantesProceso implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name="par_pro_codigo",nullable=false)
    private Integer parProCodigo;
    
    @Basic(optional = false)
    @Column(name = "par_pro_fecha", nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date parProFecha;
    
    @JoinColumn(name = "proceso", referencedColumnName = "prc_codigo", nullable = false)
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Proceso proceso;
    
    @JoinColumn(name = "persona", referencedColumnName = "per_codigo", nullable = false)
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Persona persona;
    													/*no existe tabla comite*/
    /*@JoinColumn(name = "comite", referencedColumnName = "com_codigo")
    @ManyToOne(fetch = FetchType.LAZY)
    private Comite comite;*/
    
    public ParticipantesProceso() {
    }

    public ParticipantesProceso(Integer parProCodigo) {
        this.parProCodigo = parProCodigo;
    }

    public ParticipantesProceso(Integer parProCodigo, Date parProFecha) {
        this.parProCodigo = parProCodigo;
        this.parProFecha = parProFecha;
    }

	public Integer getParProCodigo() {
		return parProCodigo;
	}

	public void setParProCodigo(Integer parProCodigo) {
		this.parProCodigo = parProCodigo;
	}

	public Date getParProFecha() {
		return parProFecha;
	}

	public void setParProFecha(Date parProFecha) {
		this.parProFecha = parProFecha;
	}

	public Proceso getProceso() {
		return proceso;
	}

	public void setProceso(Proceso proceso) {
		this.proceso = proceso;
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
        hash += (parProCodigo != null ? parProCodigo.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        if (!(object instanceof ParticipantesProceso)) {
            return false;
        }
        ParticipantesProceso other = (ParticipantesProceso) object;
        if ((this.parProCodigo == null && other.parProCodigo != null) || (this.parProCodigo != null && !this.parProCodigo.equals(other.parProCodigo))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ec.edu.ute.saac.entidades.ParticipantesProceso[ parProCodigo=" + parProCodigo + " ]";
    }
    

}
