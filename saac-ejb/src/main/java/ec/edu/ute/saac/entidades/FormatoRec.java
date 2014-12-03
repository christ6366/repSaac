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
@Table(name = "formato_rec", catalog = "saac", schema = "", uniqueConstraints = {
	    @UniqueConstraint(columnNames = {"frm_rec_codigo"})})
public class FormatoRec implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "frm_rec_codigo", nullable = false)
    private Integer frmRecCodigo;
    
    @Basic(optional = false)
    @Size(min = 1, max = 255)
    @Column(name = "frm_rec_nombre", nullable = false, length = 255)
    private String frmRecNombre;
    
    @Basic(optional = false)
    @Size(min = 1, max = 255)
    @Column(name = "frm_rec_descripcion", nullable = false, length = 255)
    private String frmRecDescripcion;
    
    @Column(name = "frm_rec_estado", nullable = false)
    private Boolean frmRecEstado;
    
    @JoinColumn(name = "tipo_proceso", referencedColumnName = "tip_prc_codigo", nullable = false)
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private TipoProceso tipoProceso;
    
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "formatoRec", fetch = FetchType.LAZY)
    private Collection<ElementoFormato> elementoFormatoList;
    
    public FormatoRec() {
    	
    }

    public FormatoRec(Integer frmRecCodigo) {
        this.frmRecCodigo = frmRecCodigo;
    }

	public Integer getFrmRecCodigo() {
		return frmRecCodigo;
	}

	public void setFrmRecCodigo(Integer frmRecCodigo) {
		this.frmRecCodigo = frmRecCodigo;
	}

	public String getFrmRecNombre() {
		return frmRecNombre;
	}

	public void setFrmRecNombre(String frmRecNombre) {
		this.frmRecNombre = frmRecNombre;
	}

	public String getFrmRecDescripcion() {
		return frmRecDescripcion;
	}

	public void setFrmRecDescripcion(String frmRecDescripcion) {
		this.frmRecDescripcion = frmRecDescripcion;
	}

	public Boolean getFrmRecEstado() {
		return frmRecEstado;
	}

	public void setFrmRecEstado(Boolean frmRecEstado) {
		this.frmRecEstado = frmRecEstado;
	}

	public TipoProceso getTipoProceso() {
		return tipoProceso;
	}

	public void setTipoProceso(TipoProceso tipoProceso) {
		this.tipoProceso = tipoProceso;
	}

	public Collection<ElementoFormato> getElementoFormatoList() {
		return elementoFormatoList;
	}

	public void setElementoFormatoList(
			Collection<ElementoFormato> elementoFormatoList) {
		this.elementoFormatoList = elementoFormatoList;
	}
    
    @Override
    public int hashCode() {
        int hash = 0;
        hash += (frmRecCodigo != null ? frmRecCodigo.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        if (!(object instanceof FormatoRec)) {
            return false;
        }
        FormatoRec other = (FormatoRec) object;
        if ((this.frmRecCodigo == null && other.frmRecCodigo != null) || (this.frmRecCodigo != null && !this.frmRecCodigo.equals(other.frmRecCodigo))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ec.edu.ute.saac.entidades.FormatoRec[ frmRecCodigo=" + frmRecCodigo + " ]";
    }
    
    
    

}
