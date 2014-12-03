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
import javax.validation.constraints.Size;

@Entity
@Table(name = "revision", catalog = "saac", schema = "", uniqueConstraints = {
	    @UniqueConstraint(columnNames = {"rev_codigo"})})
@NamedQueries({
	@NamedQuery(name = "Revision.findAll", query = "SELECT r FROM Revision r"),
	@NamedQuery(name = "Revision.findByRevCodigo", query = "SELECT r FROM Revision r WHERE r.revCodigo = :revCodigo"),
	@NamedQuery(name = "Revision.findByRevFecha", query = "SELECT r FROM Revision r WHERE r.revFecha = :revFecha")})
public class Revision implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "rev_codigo", nullable = false)
    private Integer revCodigo;
    
    @Basic(optional = false)
    @Column(name = "rev_fecha", nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date revFecha;
    																	/*referencia no existe en original*/
    @Column(name = "rev_cumple", nullable = false)
    private Boolean revCumple;
    																	/*referencia no existe en original*/
    @Column(name = "rev_nota")
    private Double revNota;
    																	/*referencia no existe en original*/
    @Basic(optional = false)
    @Size(min = 1, max = 1000)
    @Column(name = "rev_observacion")
    private String observacion;
    																	/*referencia cambiada de movimiento_proceso a proceso*/
    @JoinColumn(name = "proceso", referencedColumnName = "prc_codigo", nullable = false)
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Proceso proceso;
    																	/*referencia no existe en original*/
    @JoinColumn(name = "elemento_formato", referencedColumnName = "elm_for_codigo", nullable = false)
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private ElementoFormato elementoFormato;
    
    public Revision() {
    }

    public Revision(Integer revCodigo) {
        this.revCodigo = revCodigo;
    }

    public Revision(Integer revCodigo, Date revFecha) {
        this.revCodigo = revCodigo;
        this.revFecha = revFecha;
    }

	public Integer getRevCodigo() {
		return revCodigo;
	}

	public void setRevCodigo(Integer revCodigo) {
		this.revCodigo = revCodigo;
	}

	public Date getRevFecha() {
		return revFecha;
	}

	public void setRevFecha(Date revFecha) {
		this.revFecha = revFecha;
	}

	public Boolean getRevCumple() {
		return revCumple;
	}

	public void setRevCumple(Boolean revCumple) {
		this.revCumple = revCumple;
	}

	public Double getRevNota() {
		return revNota;
	}

	public void setRevNota(Double revNota) {
		this.revNota = revNota;
	}

	public String getObservacion() {
		return observacion;
	}

	public void setObservacion(String observacion) {
		this.observacion = observacion;
	}

	public Proceso getProceso() {
		return proceso;
	}

	public void setProceso(Proceso proceso) {
		this.proceso = proceso;
	}

	public ElementoFormato getElementoFormato() {
		return elementoFormato;
	}

	public void setElementoFormato(ElementoFormato elementoFormato) {
		this.elementoFormato = elementoFormato;
	}
    
	
    @Override
    public int hashCode() {
        int hash = 0;
        hash += (revCodigo != null ? revCodigo.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        if (!(object instanceof Revision)) {
            return false;
        }
        Revision other = (Revision) object;
        if ((this.revCodigo == null && other.revCodigo != null) || (this.revCodigo != null && !this.revCodigo.equals(other.revCodigo))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ec.edu.ute.saac.entidades.Revision[ revCodigo=" + revCodigo + " ]";
    }
    
	

}
