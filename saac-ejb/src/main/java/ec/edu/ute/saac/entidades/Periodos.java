package ec.edu.ute.saac.entidades;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name="periodos",catalog="saac",schema="",uniqueConstraints = {
	    @UniqueConstraint(columnNames = {"prd_codigo"})})
@NamedQueries({
    @NamedQuery(name = "Periodos.findAll", query = "SELECT p FROM Periodos p"),
    @NamedQuery(name = "Periodos.findByPrdCodigo", query = "SELECT p FROM Periodos p WHERE p.prdCodigo = :prdCodigo"),
    @NamedQuery(name = "Periodos.findByPrdFechaInicio", query = "SELECT p FROM Periodos p WHERE p.prdFechaInicio = :prdFechaInicio"),
    @NamedQuery(name = "Periodos.findByPrdFechaFinal", query = "SELECT p FROM Periodos p WHERE p.prdFechaFinal = :prdFechaFinal"),
    @NamedQuery(name = "Periodos.findByPrdEstado", query = "SELECT p FROM Periodos p WHERE p.prdEstado = :prdEstado")})
public class Periodos implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "prd_codigo", nullable = false)
    private Integer prdCodigo;
    
    @Basic(optional = false)
    @Column(name = "prd_fecha_inicio", nullable = false)
    @Temporal(TemporalType.DATE)
    private Date prdFechaInicio;
    
    @Basic(optional = false)
    @Column(name = "prd_fecha_final", nullable = false)
    @Temporal(TemporalType.DATE)
    private Date prdFechaFinal;
    
    @Basic(optional = false)
    @Column(name = "prd_estado", nullable = false)
    private boolean prdEstado;
    
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "periodos", fetch = FetchType.LAZY)
    private Collection<CursoTitulacion> cursoTitulacionList;
    																	/*lista faltante en original*/
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "periodos", fetch = FetchType.LAZY)
    private Collection<Proceso> procesoList;
    
    @Override
    public int hashCode() {
        int hash = 0;
        hash += (prdCodigo != null ? prdCodigo.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        if (!(object instanceof Periodos)) {
            return false;
        }
        Periodos other = (Periodos) object;
        if ((this.prdCodigo == null && other.prdCodigo != null) || (this.prdCodigo != null && !this.prdCodigo.equals(other.prdCodigo))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ec.edu.ute.saac.entidades.Periodos[ prdCodigo=" + prdCodigo + " ]";
    }
    
  
}
