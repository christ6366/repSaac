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
@Table(name="linea_investigacion", catalog="saac",schema="",uniqueConstraints = {
	    @UniqueConstraint(columnNames = {"lin_inv_codigo"})})
@NamedQueries({
    @NamedQuery(name = "LineaInvestigacion.findAll", query = "SELECT l FROM LineaInvestigacion l"),
    @NamedQuery(name = "LineaInvestigacion.findByLinInvCodigo", query = "SELECT l FROM LineaInvestigacion l WHERE l.linInvCodigo = :linInvCodigo"),
    @NamedQuery(name = "LineaInvestigacion.findByLinInvNombre", query = "SELECT l FROM LineaInvestigacion l WHERE l.linInvNombre = :linInvNombre"),
    @NamedQuery(name = "LineaInvestigacion.findByLinInvDescripcion", query = "SELECT l FROM LineaInvestigacion l WHERE l.linInvDescripcion = :linInvDescripcion"),
    @NamedQuery(name = "LineaInvestigacion.findByLinInvEstado", query = "SELECT l FROM LineaInvestigacion l WHERE l.linInvEstado = :linInvEstado"),
    @NamedQuery(name = "LineaInvestigacion.buscarPorCarrera", query = "SELECT l FROM LineaInvestigacion l WHERE l.carrera = :carrera")})
public class LineaInvestigacion implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
	@Column(name="lin_inv_codigo",nullable=false)
	private Integer linInvCodigo;
	
    @Basic(optional = false)
    @Size(min = 1, max = 255)
    @Column(name = "lin_inv_nombre", nullable = false, length = 255)
    private String linInvNombre;
	
    @Size(max = 255)
    @Column(name = "lin_inv_descripcion", length = 255)
    private String linInvDescripcion;
    
    @Basic(optional = false)
    @Column(name = "lin_inv_estado", nullable = false)
    private boolean linInvEstado;
    
    @JoinColumn(name = "carrera", referencedColumnName = "car_codigo", nullable = false)
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Carrera carrera;
    
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "lineaInvestigacion", fetch = FetchType.LAZY)
    private Collection<AreaInvestigacion> areaInvestigacionList;
   

	public LineaInvestigacion() {
    	
    	
    }

    public LineaInvestigacion(Integer linInvCodigo) {
        this.linInvCodigo = linInvCodigo;
    }

    public LineaInvestigacion(Integer linInvCodigo, String linInvNombre, boolean linInvEstado) {
        this.linInvCodigo = linInvCodigo;
        this.linInvNombre = linInvNombre;
        this.linInvEstado = linInvEstado;
    }

	public Integer getLinInvCodigo() {
		return linInvCodigo;
	}

	public void setLinInvCodigo(Integer linInvCodigo) {
		this.linInvCodigo = linInvCodigo;
	}

	public String getLinInvNombre() {
		return linInvNombre;
	}

	public void setLinInvNombre(String linInvNombre) {
		this.linInvNombre = linInvNombre;
	}

	public String getLinInvDescripcion() {
		return linInvDescripcion;
	}

	public void setLinInvDescripcion(String linInvDescripcion) {
		this.linInvDescripcion = linInvDescripcion;
	}

	public boolean isLinInvEstado() {
		return linInvEstado;
	}

	public void setLinInvEstado(boolean linInvEstado) {
		this.linInvEstado = linInvEstado;
	}

	public Carrera getCarrera() {
		return carrera;
	}

	public void setCarrera(Carrera carrera) {
		this.carrera = carrera;
	}

	 public Collection<AreaInvestigacion> getAreaInvestigacionList() {
			return areaInvestigacionList;
		}

		public void setAreaInvestigacionList(
				Collection<AreaInvestigacion> areaInvestigacionList) {
			this.areaInvestigacionList = areaInvestigacionList;
		}
    
    @Override
    public int hashCode() {
        int hash = 0;
        hash += (linInvCodigo != null ? linInvCodigo.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        if (!(object instanceof LineaInvestigacion)) {
            return false;
        }
        LineaInvestigacion other = (LineaInvestigacion) object;
        if ((this.linInvCodigo == null && other.linInvCodigo != null) || (this.linInvCodigo != null && !this.linInvCodigo.equals(other.linInvCodigo))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ec.edu.ute.saac.entidades.LineaInvestigacion[ linInvCodigo=" + linInvCodigo + " ]";
    }
	

}
