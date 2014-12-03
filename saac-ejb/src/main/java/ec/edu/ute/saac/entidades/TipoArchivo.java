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
@Table(name = "tipo_archivo", catalog = "saac", schema = "", uniqueConstraints = {
	    @UniqueConstraint(columnNames = {"tip_arc_codigo"})})
public class TipoArchivo implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "tip_arc_codigo", nullable = false)
    private Integer tipArcCodigo;
    
    @Basic(optional = false)
    @Size(min = 1, max = 255)
    @Column(name = "tip_arc_nombre", nullable = false, length = 255)
    private String tipArcNombre;
    
    @Basic(optional = false)
    @Size(min = 1, max = 255)
    @Column(name = "tip_arc_descripcion", nullable = false, length = 255)
    private String tipArcDescripcion;
    
    @Column(name = "tip_arc_estado", nullable = false)
    private Boolean tipArcEstado;
    
    @JoinColumn(name = "tipo_proceso", referencedColumnName = "tip_prc_codigo", nullable = false)
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private TipoProceso tipoProceso;
    
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "tipoArchivo", fetch = FetchType.LAZY)
    private Collection<Archivo> archivoList;
    
    public TipoArchivo() {
    	
    	
    }

    public TipoArchivo(Integer tipArcCodigo) {
        this.tipArcCodigo = tipArcCodigo;
    }

	public Integer getTipArcCodigo() {
		return tipArcCodigo;
	}

	public void setTipArcCodigo(Integer tipArcCodigo) {
		this.tipArcCodigo = tipArcCodigo;
	}

	public String getTipArcNombre() {
		return tipArcNombre;
	}

	public void setTipArcNombre(String tipArcNombre) {
		this.tipArcNombre = tipArcNombre;
	}

	public String getTipArcDescripcion() {
		return tipArcDescripcion;
	}

	public void setTipArcDescripcion(String tipArcDescripcion) {
		this.tipArcDescripcion = tipArcDescripcion;
	}

	public Boolean getTipArcEstado() {
		return tipArcEstado;
	}

	public void setTipArcEstado(Boolean tipArcEstado) {
		this.tipArcEstado = tipArcEstado;
	}

	public TipoProceso getTipoProceso() {
		return tipoProceso;
	}

	public void setTipoProceso(TipoProceso tipoProceso) {
		this.tipoProceso = tipoProceso;
	}

	public Collection<Archivo> getArchivoList() {
		return archivoList;
	}

	public void setArchivoList(Collection<Archivo> archivoList) {
		this.archivoList = archivoList;
	}
    
    @Override
    public int hashCode() {
        int hash = 0;
        hash += (tipArcCodigo != null ? tipArcCodigo.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        if (!(object instanceof TipoArchivo)) {
            return false;
        }
        TipoArchivo other = (TipoArchivo) object;
        if ((this.tipArcCodigo == null && other.tipArcCodigo != null) || (this.tipArcCodigo != null && !this.tipArcCodigo.equals(other.tipArcCodigo))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ec.edu.ute.saac.entidades.TipoArchivo[ tipArcCodigo=" + tipArcCodigo + " ]";
    }

    
    
    
    

}
