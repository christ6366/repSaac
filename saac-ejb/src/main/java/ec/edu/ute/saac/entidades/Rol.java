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
import javax.validation.constraints.Size;

@Entity
@Table
public class Rol implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "rol_codigo", nullable = false)
    private Integer rolCodigo;
    
    @Basic(optional = false)
    @Size(min = 1, max = 255)
    @Column(name = "rol_nombre", nullable = false, length = 255)
    private String rolNombre;
    
    @Size(max = 255)
    @Column(name = "rol_descripcion", length = 255)
    private String rolDescripcion;
    
    @Basic(optional = false)
    @Column(name = "rol_estado", nullable = false)
    private boolean rolEstado;
    
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "rol", fetch = FetchType.LAZY)
    private Collection<UsuarioRol> usuarioRolList;
    
    public Rol() {
    	
    }

    public Integer getRolCodigo() {
		return rolCodigo;
	}

	public void setRolCodigo(Integer rolCodigo) {
		this.rolCodigo = rolCodigo;
	}

	public String getRolNombre() {
		return rolNombre;
	}

	public void setRolNombre(String rolNombre) {
		this.rolNombre = rolNombre;
	}

	public String getRolDescripcion() {
		return rolDescripcion;
	}

	public void setRolDescripcion(String rolDescripcion) {
		this.rolDescripcion = rolDescripcion;
	}

	public boolean isRolEstado() {
		return rolEstado;
	}

	public void setRolEstado(boolean rolEstado) {
		this.rolEstado = rolEstado;
	}

	public Collection<UsuarioRol> getUsuarioRolList() {
		return usuarioRolList;
	}

	public void setUsuarioRolList(Collection<UsuarioRol> usuarioRolList) {
		this.usuarioRolList = usuarioRolList;
	}

	public Rol(Integer rolCodigo) {
        this.rolCodigo = rolCodigo;
    }

    public Rol(Integer rolCodigo, String rolNombre, boolean rolEstado) {
        this.rolCodigo = rolCodigo;
        this.rolNombre = rolNombre;
        this.rolEstado = rolEstado;
    }
    
    
    @Override
    public int hashCode() {
        int hash = 0;
        hash += (rolCodigo != null ? rolCodigo.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        if (!(object instanceof Rol)) {
            return false;
        }
        Rol other = (Rol) object;
        if ((this.rolCodigo == null && other.rolCodigo != null) || (this.rolCodigo != null && !this.rolCodigo.equals(other.rolCodigo))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ec.edu.ute.saac.entidades.Rol[ rolCodigo=" + rolCodigo + " ]";
    }
    
    
	

}
