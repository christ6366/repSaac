package ec.edu.ute.saac.utils;



/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */



public class ArbolGenerico {

    private Long id;
    private String nombre;
    private int labelCount = 0;
    private DynamicNodeUserObject selectedNodeObject = null;

    public ArbolGenerico() {
    }

    public ArbolGenerico(Long id, String nombre) {
        this.id = id;
        this.nombre = nombre;
    }

    /**
     * @return the id
     */
    public Long getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(Long id) {
        this.id = id;
    }

    public int getIncreasedLabelCount() {
        return ++labelCount;
    }

    public boolean isCopyDisabled() {
        return selectedNodeObject == null;
    }

    public boolean isDeleteDisabled() {
        //can't delete the root node
        return selectedNodeObject == null
                || selectedNodeObject.getText().equals("");
    }

    public DynamicNodeUserObject getSelectedNodeObject() {
        return selectedNodeObject;
    }

    /**
     * Sets the tree node.
     *
     * @param selectedNodeObject the new tree node
     */
    public void setSelectedNodeObject(DynamicNodeUserObject selectedNodeObject) {
        this.selectedNodeObject = selectedNodeObject;
    }

    /**
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    @Override
    public String toString() {
        return getNombre();
    }

}
