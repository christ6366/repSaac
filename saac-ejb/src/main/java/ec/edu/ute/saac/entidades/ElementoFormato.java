package ec.edu.ute.saac.entidades;

import java.io.Serializable;
import java.util.Collection;

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
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.Size;

@Entity
@Table(name = "elemento_formato", catalog = "saac", schema = "", uniqueConstraints = {
	    @UniqueConstraint(columnNames = {"elm_for_codigo"})})
public class ElementoFormato implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "elm_for_codigo", nullable = false)
    private Integer elmForCodigo;
    
    @Basic(optional = false)
    @Size(min = 1, max = 255)
    @Column(name = "elm_for_descripcion", nullable = false, length = 255)
    private String elmForDescripcion;
    
    @Column(name = "elm_for_valor_minimo")
    private Double elmForValorMinimo;
    
    @Column(name = "elm_for_estado", nullable = false)
    private Boolean elmForEstado;
    
    @JoinColumn(name = "formato_rec", referencedColumnName = "frm_rec_codigo", nullable = false)
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private FormatoRec formatoRec;
    
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "elementoFormato", fetch = FetchType.LAZY)
    private Collection<Revision> revisionList;
    
    public ElementoFormato() {
    }

    public ElementoFormato(Integer elmForCodigo) {
        this.elmForCodigo=elmForCodigo;
    }

	public Integer getElmForCodigo() {
		return elmForCodigo;
	}

	public void setElmForCodigo(Integer elmForCodigo) {
		this.elmForCodigo = elmForCodigo;
	}

	public String getElmForDescripcion() {
		return elmForDescripcion;
	}

	public void setElmForDescripcion(String elmForDescripcion) {
		this.elmForDescripcion = elmForDescripcion;
	}

	public Double getElmForValorMinimo() {
		return elmForValorMinimo;
	}

	public void setElmForValorMinimo(Double elmForValorMinimo) {
		this.elmForValorMinimo = elmForValorMinimo;
	}

	public Boolean getElmForEstado() {
		return elmForEstado;
	}

	public void setElmForEstado(Boolean elmForEstado) {
		this.elmForEstado = elmForEstado;
	}

	public FormatoRec getFormatoRec() {
		return formatoRec;
	}

	public void setFormatoRec(FormatoRec formatoRec) {
		this.formatoRec = formatoRec;
	}
    

	public Collection<Revision> getRevisionList() {
		return revisionList;
	}

	public void setRevisionList(Collection<Revision> revisionList) {
		this.revisionList = revisionList;
	}

	@Override
    public int hashCode() {
        int hash = 0;
        hash += (elmForCodigo != null ? elmForCodigo.hashCode() : 0);
        return hash;
    }
    
    @Override
    public boolean equals(Object object) {
        if (!(object instanceof ElementoFormato)) {
            return false;
        }
        ElementoFormato other = (ElementoFormato) object;
        if ((this.elmForCodigo == null && other.elmForCodigo != null) || (this.elmForCodigo != null && !this.elmForCodigo.equals(other.elmForCodigo))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ec.edu.ute.saac.entidades.ElementoFormato[ elmForCodigo=" + elmForCodigo + " ]";
    }
    

}
