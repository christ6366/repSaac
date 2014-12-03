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
@Table(name = "institucion", catalog = "saac", schema = "", uniqueConstraints = {
	    @UniqueConstraint(columnNames = {"ins_codigo"})})
public class Institucion implements Serializable
{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ins_codigo", nullable = false)
    private Integer insCodigo;
    
    @Basic(optional = false)
    @Size(min = 1, max = 255)
    @Column(name = "ins_nombre", nullable = false, length = 255)
    private String insNombre;
    
    @Basic(optional = false)
    @Size(min = 1, max = 255)
    @Column(name = "ins_direccion", nullable = false, length = 255)
    private String insDireccion;
    
    @Basic(optional = false)
    @Size(min = 1, max = 255)
    @Column(name = "ins_telefono", nullable = false, length = 255)
    private String insTelefono;
    
    @Basic(optional = false)
    @Size(min = 1, max = 255)
    @Column(name = "ins_representante", nullable = false, length = 255)
    private String insRepresentante;
    																				/*ver en la base*/
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "institucion", fetch = FetchType.LAZY)
    private Collection<Proceso> procesoList;
    
    public Institucion() {
    	
    }

    public Institucion(Integer insCodigo) {
        this.insCodigo = insCodigo;
    }

	public Integer getInsCodigo() {
		return insCodigo;
	}

	public void setInsCodigo(Integer insCodigo) {
		this.insCodigo = insCodigo;
	}

	public String getInsNombre() {
		return insNombre;
	}

	public void setInsNombre(String insNombre) {
		this.insNombre = insNombre;
	}

	public String getInsDireccion() {
		return insDireccion;
	}

	public void setInsDireccion(String insDireccion) {
		this.insDireccion = insDireccion;
	}

	public String getInsTelefono() {
		return insTelefono;
	}

	public void setInsTelefono(String insTelefono) {
		this.insTelefono = insTelefono;
	}

	public String getInsRepresentante() {
		return insRepresentante;
	}

	public void setInsRepresentante(String insRepresentante) {
		this.insRepresentante = insRepresentante;
	}
	
    
    public Collection<Proceso> getProcesoList() {
		return procesoList;
	}

	public void setProcesoList(Collection<Proceso> procesoList) {
		this.procesoList = procesoList;
	}

	@Override
    public int hashCode() {
        int hash = 0;
        hash += (insCodigo != null ? insCodigo.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        if (!(object instanceof Institucion)) {
            return false;
        }
        Institucion other = (Institucion) object;
        if ((this.insCodigo == null && other.insCodigo != null) || (this.insCodigo != null && !this.insCodigo.equals(other.insCodigo))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ec.edu.ute.saac.entidades.Institucion[ insCodigo=" + insCodigo + " ]";
    }
    
    

}
