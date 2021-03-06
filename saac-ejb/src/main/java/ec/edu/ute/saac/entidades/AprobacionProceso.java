/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ec.edu.ute.saac.entidades;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.*;

/**
 * 
 */
@Entity
@Table(name = "aprobacion_proceso", catalog = "saac", schema = "", 
		uniqueConstraints = { @UniqueConstraint(columnNames = {"apr_prc_codigo"})})
	@NamedQueries({
    @NamedQuery(name = "AprobacionProceso.findAll", query = "SELECT a FROM AprobacionProceso a"),
    @NamedQuery(name = "AprobacionProceso.findByAprPrcCodigo", query = "SELECT a FROM AprobacionProceso a WHERE a.aprPrcCodigo = :aprPrcCodigo"),
    @NamedQuery(name = "AprobacionProceso.findByAprPrcFecha", query = "SELECT a FROM AprobacionProceso a WHERE a.aprPrcFecha = :aprPrcFecha"),
    @NamedQuery(name = "AprobacionProceso.findByPersona", query = "SELECT a FROM AprobacionProceso a WHERE a.persona = :persona")})
public class AprobacionProceso implements Serializable {
    private static final long serialVersionUID = 1L;
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "apr_prc_codigo", nullable = false)
    private Integer aprPrcCodigo;
    
    @Basic
    @Column(name="apr_prc_fecha", nullable=false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date aprPrcFecha;
    																		/**cambiar fk en la base*/
    @JoinColumn(name="persona",referencedColumnName="prc_codigo", nullable=false)
    @ManyToOne(optional=false,fetch = FetchType.LAZY)
    private Persona persona;
    
    @JoinColumn(name="proceso", referencedColumnName="prc_codigo", nullable=false)
    @ManyToOne(optional=false,fetch = FetchType.LAZY)
    private Proceso proceso;
    
    public AprobacionProceso(){
    	
    }
    
    public AprobacionProceso(Integer aprPrcCodigo ){
    	this.aprPrcCodigo=aprPrcCodigo;
    	
    }
    
    public AprobacionProceso(Integer aprPrcCodigo, Date aprPrcFecha ){
    	this.aprPrcCodigo=aprPrcCodigo;
    	this.aprPrcFecha=aprPrcFecha;
    }

	public Integer getAprPrcCodigo() {
		return aprPrcCodigo;
	}

	public void setAprPrcCodigo(Integer aprPrcCodigo) {
		this.aprPrcCodigo = aprPrcCodigo;
	}

	public Date getAprPrcFecha() {
		return aprPrcFecha;
	}

	public void setAprPrcFecha(Date aprPrcFecha) {
		this.aprPrcFecha = aprPrcFecha;
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
	
	@Override
    public int hashCode() {
        int hash = 0;
        hash += (aprPrcCodigo != null ? aprPrcCodigo.hashCode() : 0);
        return hash;
    }
	
	@Override
    public boolean equals(Object object) {
        if (!(object instanceof AprobacionProceso)) {
            return false;
        }
        AprobacionProceso other = (AprobacionProceso) object;
        if ((this.aprPrcCodigo == null && other.aprPrcCodigo != null) || (this.aprPrcCodigo != null && !this.aprPrcCodigo.equals(other.aprPrcCodigo))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ec.edu.ute.saac.entidades.AprobacionProceso[ aprPrcCodigo=" + aprPrcCodigo + " ]";
    }
    
}
