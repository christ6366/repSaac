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
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.Size;


@Entity
@Table(name = "area_investigacion", catalog = "saac", schema = "", uniqueConstraints = {
	    @UniqueConstraint(columnNames = {"are_inv_codigo"})})
@NamedQueries({
    @NamedQuery(name = "AreaInvestigacion.findAll", query = "SELECT a FROM AreaInvestigacion a"),
    @NamedQuery(name = "AreaInvestigacion.findByAreInvCodigo", query = "SELECT a FROM AreaInvestigacion a WHERE a.areInvCodigo = :areInvCodigo"),
    @NamedQuery(name = "AreaInvestigacion.findByAreInvNombre", query = "SELECT a FROM AreaInvestigacion a WHERE a.areInvNombre = :areInvNombre"),
    @NamedQuery(name = "AreaInvestigacion.findByAreInvDescripcion", query = "SELECT a FROM AreaInvestigacion a WHERE a.areInvDescripcion = :areInvDescripcion"),
    @NamedQuery(name = "AreaInvestigacion.findByAreInvEstado", query = "SELECT a FROM AreaInvestigacion a WHERE a.areInvEstado = :areInvEstado")})
public class AreaInvestigacion implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Basic(optional=false)
	@Column(name="are_inv_codigo", nullable=false)
	private Integer areInvCodigo;
	
	@Basic(optional=false)
	@Size(min = 1, max = 255)
	@Column(name="are_inv_nombre",nullable = false, length = 255)
	private String areInvNombre;
	
	@Size(max = 255)
    @Column(name = "are_inv_descripcion", length = 255)
    private String areInvDescripcion;
																/*tipo tinyint en la base*/
	@Basic(optional = false)
    @Column(name = "are_inv_estado", nullable = false)
    private boolean areInvEstado;
	
	@JoinColumn(name = "linea_investigacion", referencedColumnName = "lin_inv_codigo", nullable = false)
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private LineaInvestigacion lineaInvestigacion;
	
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "areaInvestigacion", fetch = FetchType.LAZY)
    private Collection<TemasTitulacion> temasTitulacionList;
	
	public AreaInvestigacion() {
    }
	
	public AreaInvestigacion(Integer areInvCodigo) {
		this.areInvCodigo = areInvCodigo;
	}
	
	public AreaInvestigacion(Integer areInvCodigo, String areInvNombre, boolean areInvEstado){
		this.areInvCodigo = areInvCodigo;
        this.areInvNombre = areInvNombre;
        this.areInvEstado = areInvEstado;
	}

	public Integer getAreInvCodigo() {
		return areInvCodigo;
	}

	public void setAreInvCodigo(Integer areInvCodigo) {
		this.areInvCodigo = areInvCodigo;
	}

	public String getAreInvNombre() {
		return areInvNombre;
	}

	public void setAreInvNombre(String areInvNombre) {
		this.areInvNombre = areInvNombre;
	}

	public String getAreInvDescripcion() {
		return areInvDescripcion;
	}

	public void setAreInvDescripcion(String areInvDescripcion) {
		this.areInvDescripcion = areInvDescripcion;
	}

	public boolean isAreInvEstado() {
		return areInvEstado;
	}

	public void setAreInvEstado(boolean areInvEstado) {
		this.areInvEstado = areInvEstado;
	}

	public LineaInvestigacion getLineaInvestigacion() {
		return lineaInvestigacion;
	}

	public void setLineaInvestigacion(LineaInvestigacion lineaInvestigacion) {
		this.lineaInvestigacion = lineaInvestigacion;
	}

	public Collection<TemasTitulacion> getTemasTitulacionList() {
		return temasTitulacionList;
	}

	public void setTemasTitulacionList(Collection<TemasTitulacion> temasTitulacionList) {
		this.temasTitulacionList = temasTitulacionList;
	}
	
	 @Override
	    public int hashCode() {
	        int hash = 0;
	        hash += (areInvCodigo != null ? areInvCodigo.hashCode() : 0);
	        return hash;
	    }
	 
	 
	 @Override
	    public boolean equals(Object object) {
	        if (!(object instanceof AreaInvestigacion)) {
	            return false;
	        }
	        AreaInvestigacion other = (AreaInvestigacion) object;
	        if ((this.areInvCodigo == null && other.areInvCodigo != null) || (this.areInvCodigo != null && !this.areInvCodigo.equals(other.areInvCodigo))) {
	            return false;
	        }
	        return true;
	    }
	 
	 
	 @Override
	    public String toString() {
	        return "ec.edu.ute.saac.entidades.AreaInvestigacion[ areInvCodigo=" + areInvCodigo + " ]";
	    }
	
}
