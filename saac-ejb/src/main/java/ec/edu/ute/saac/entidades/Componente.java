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
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.Size;

@Entity
@Table(name = "componente", catalog = "saac", schema = "", uniqueConstraints = {
	    @UniqueConstraint(columnNames = {"com_codigo"})})
public class Componente implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "com_codigo", nullable = false)
    private Integer comCodigo;	
    
    @Basic(optional = false)
    @Size(min = 1, max = 255)
    @Column(name = "com_nombre", nullable = false, length = 255)
    private String comNombre;
    
    @Basic(optional = false)
    @Size(min = 1, max = 255)
    @Column(name = "com_descripcion", nullable = false, length = 255)
    private String comDescripcion;
    																/*cambiar a tinyint en la base y boolean aqui*/
    @Basic(optional = false)
    @Size(min = 1, max = 255)
    @Column(name = "com_estado", nullable = false, length = 255)
    private String comEstado;
    
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "componente", fetch = FetchType.LAZY)
    private Collection<Contenido> contenidoList;
    
    public Componente() {
    	
    }

    public Componente(Integer comCodigo) {
        this.comCodigo = comCodigo;
    }

	public Integer getComCodigo() {
		return comCodigo;
	}

	public void setComCodigo(Integer comCodigo) {
		this.comCodigo = comCodigo;
	}

	public String getComNombre() {
		return comNombre;
	}

	public void setComNombre(String comNombre) {
		this.comNombre = comNombre;
	}

	public String getComDescripcion() {
		return comDescripcion;
	}

	public void setComDescripcion(String comDescripcion) {
		this.comDescripcion = comDescripcion;
	}

	public String getComEstado() {
		return comEstado;
	}

	public void setComEstado(String comEstado) {
		this.comEstado = comEstado;
	}

	public Collection<Contenido> getContenidoList() {
		return contenidoList;
	}

	public void setContenidoList(Collection<Contenido> contenidoList) {
		this.contenidoList = contenidoList;
	}
    
    @Override
    public int hashCode() {
        int hash = 0;
        hash += (comCodigo != null ? comCodigo.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        if (!(object instanceof Componente)) {
            return false;
        }
        Componente other = (Componente) object;
        if ((this.comCodigo == null && other.comCodigo != null) || (this.comCodigo != null && !this.comCodigo.equals(other.comCodigo))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ec.edu.ute.saac.entidades.Componente[ comCodigo=" + comCodigo + " ]";
    }

}
