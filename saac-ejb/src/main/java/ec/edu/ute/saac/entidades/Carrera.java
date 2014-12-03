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
@Table(name="carrera",catalog="saac",schema="",uniqueConstraints = {
	    @UniqueConstraint(columnNames = {"car_codigo"})})
@NamedQueries({
    @NamedQuery(name = "Carrera.findAll", query = "SELECT c FROM Carrera c"),
    @NamedQuery(name = "Carrera.findByCarCodigo", query = "SELECT c FROM Carrera c WHERE c.carCodigo = :carCodigo"),
    @NamedQuery(name = "Carrera.findByCarNombre", query = "SELECT c FROM Carrera c WHERE c.carNombre = :carNombre"),
    @NamedQuery(name = "Carrera.findByCarDescripcion", query = "SELECT c FROM Carrera c WHERE c.carDescripcion = :carDescripcion"),
    @NamedQuery(name = "Carrera.findByCarEstado", query = "SELECT c FROM Carrera c WHERE c.carEstado = :carEstado"),
    @NamedQuery(name = "Carrera.obtenerPorFacultad", query = "SELECT c FROM Carrera c WHERE c.facultad = :facultad")})
public class Carrera implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
	@Column(name="car_codigo",nullable=false)
	private Integer carCodigo;
	
	@Basic(optional = false)
    @Size(min = 1, max = 255)
    @Column(name = "car_nombre", nullable = false, length = 255)
	private String carNombre;
	
	@Size(max = 255)
	@Column(name = "car_descripcion", length = 255)
	private String carDescripcion;
	 
	@Basic(optional = false)
	@Column(name = "car_estado", nullable = false)
	private boolean carEstado;
	
	@JoinColumn(name = "facultad", referencedColumnName = "fac_codigo", nullable = false)
	@ManyToOne(optional = false, fetch = FetchType.LAZY)
	private Facultad facultad;
	
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "carrera", fetch = FetchType.LAZY)
    private Collection<PersonaCarrera> personaCarreraList;
	
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "carrera", fetch = FetchType.LAZY)
    private Collection<LineaInvestigacion> lineaInvestigacionList;
    
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "carrera", fetch = FetchType.LAZY)
    private Collection<ComisionInvestigacion> comisionInvestigacionList;
	
    public Carrera() {
    }

    public Carrera(Integer carCodigo) {
        this.carCodigo = carCodigo;
    }

    public Carrera(Integer carCodigo, String carNombre, boolean carEstado) {
        this.carCodigo = carCodigo;
        this.carNombre = carNombre;
        this.carEstado = carEstado;
    }

	public Integer getCarCodigo() {
		return carCodigo;
	}

	public void setCarCodigo(Integer carCodigo) {
		this.carCodigo = carCodigo;
	}

	public String getCarNombre() {
		return carNombre;
	}

	public void setCarNombre(String carNombre) {
		this.carNombre = carNombre;
	}

	public String getCarDescripcion() {
		return carDescripcion;
	}

	public void setCarDescripcion(String carDescripcion) {
		this.carDescripcion = carDescripcion;
	}

	public boolean isCarEstado() {
		return carEstado;
	}

	public void setCarEstado(boolean carEstado) {
		this.carEstado = carEstado;
	}

	public Facultad getFacultad() {
		return facultad;
	}

	public void setFacultad(Facultad facultad) {
		this.facultad = facultad;
	}

	public Collection<PersonaCarrera> getPersonaCarreraList() {
		return personaCarreraList;
	}

	public void setPersonaCarreraList(Collection<PersonaCarrera> personaCarreraList) {
		this.personaCarreraList = personaCarreraList;
	}

	public Collection<LineaInvestigacion> getLineaInvestigacionList() {
		return lineaInvestigacionList;
	}

	public void setLineaInvestigacionList(
			Collection<LineaInvestigacion> lineaInvestigacionList) {
		this.lineaInvestigacionList = lineaInvestigacionList;
	}

	public Collection<ComisionInvestigacion> getComisionInvestigacionList() {
		return comisionInvestigacionList;
	}

	public void setComisionInvestigacionList(
			Collection<ComisionInvestigacion> comisionInvestigacionList) {
		this.comisionInvestigacionList = comisionInvestigacionList;
	}
	
	@Override
    public int hashCode() {
        int hash = 0;
        hash += (carCodigo != null ? carCodigo.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        if (!(object instanceof Carrera)) {
            return false;
        }
        Carrera other = (Carrera) object;
        if ((this.carCodigo == null && other.carCodigo != null) || (this.carCodigo != null && !this.carCodigo.equals(other.carCodigo))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ec.edu.ute.saac.entidades.Carrera[ carCodigo=" + carCodigo + " ]";
    }
	
	
	
}
