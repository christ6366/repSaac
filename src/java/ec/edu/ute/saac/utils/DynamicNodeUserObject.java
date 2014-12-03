package ec.edu.ute.saac.utils;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import com.icesoft.faces.component.tree.IceUserObject;
import java.util.Enumeration;
import javax.faces.event.ActionEvent;
import javax.faces.event.ValueChangeEvent;
import javax.swing.tree.DefaultMutableTreeNode;

/**
 *
 * @author christian
 */
public class DynamicNodeUserObject extends IceUserObject {
    // panel stack which will be manipulated when a command links action is fired.

    private ArbolGenerico treeBean;
    private boolean selected;
    private static String nodeToolTip;
    private DefaultMutableTreeNode childNode;
    private Long idMenu;

    /**
     * Default contsructor for a PanelSelectUserObject object.  A reference
     * is made to a backing bean with the name "panelStack", if possible.
     * @param wrapper
     */
    public DynamicNodeUserObject(DefaultMutableTreeNode wrapper, ArbolGenerico tree) {
        super(wrapper);

        this.childNode = wrapper;

        treeBean = tree;

        setLeafIcon("xmlhttp/css/xp/css-images/tree_document.gif");
        setBranchContractedIcon("xmlhttp/css/xp/css-images/tree_folder_close.gif");
        setBranchExpandedIcon("xmlhttp/css/xp/css-images/tree_folder_open.gif");
        setText(tree.getNombre());
        setTooltip(nodeToolTip);
        setExpanded(true);
        setSelected(false);
        //setChecked(tree.getChecked());
    }

    public void checkChange(ValueChangeEvent event) {
        if (!getSelected()) {
            //setExpanded(false);
            checkSelectedBox(childNode, true);
            checkParentSelectedBox(childNode, true);
        } else {
            System.out.println("aqui es mas");
            checkSelectedBox(childNode, false);
        }

    }

    public void checkSelectedBox(DefaultMutableTreeNode node, boolean check) {
        if (node == null) {
            return;
        }

        DynamicNodeUserObject rtobj = (DynamicNodeUserObject) node.getUserObject();
        rtobj.setSelected(check);
        Enumeration enumer = node.children();
        while (enumer.hasMoreElements()) {
            DefaultMutableTreeNode childNode = (DefaultMutableTreeNode) enumer.nextElement();
            checkSelectedBox(childNode, check);
        }

    }

    public void checkParentSelectedBox(DefaultMutableTreeNode node, boolean check) {
        if (node == null) {
            return;
        }

        DynamicNodeUserObject rtobj = (DynamicNodeUserObject) node.getUserObject();
        //rtobj.setExpanded(false);
        rtobj.setSelected(check);
        System.out.println("checkParentSelectedBox: " + rtobj.getText());

        DefaultMutableTreeNode parentNode = (DefaultMutableTreeNode) node.getParent();
        checkParentSelectedBox(parentNode, check);


    }

    /**
     * Deletes this not from the parent tree.
     *
     * @param event that fired this method
     */
    public void deleteNode(ActionEvent event) {
        ((DefaultMutableTreeNode) getWrapper().getParent()).remove(getWrapper());
    }

    /**
     * Copies this node and adds a it as a child node.
     *
     * @param event that fired this method
     */
    public void copyNode(ActionEvent event) {
        DefaultMutableTreeNode clonedWrapper = new DefaultMutableTreeNode();
        DynamicNodeUserObject clonedUserObject = new DynamicNodeUserObject(clonedWrapper, treeBean);
        DynamicNodeUserObject originalUserObject = (DynamicNodeUserObject) getWrapper().getUserObject();
        clonedUserObject.setAction(originalUserObject.getAction());
        clonedUserObject.setBranchContractedIcon(originalUserObject.getBranchContractedIcon());
        clonedUserObject.setBranchExpandedIcon(originalUserObject.getBranchExpandedIcon());
        clonedUserObject.setExpanded(originalUserObject.isExpanded());
        clonedUserObject.setLeafIcon(originalUserObject.getLeafIcon());
        clonedWrapper.setUserObject(clonedUserObject);
        getWrapper().insert(clonedWrapper, 0);
    }

    /**
     * Registers a user click with this object and updates the selected node in the TreeBean.
     *
     * @param event that fired this method
     */
    public void nodeClicked(ActionEvent event) {
        treeBean.setSelectedNodeObject(this);
    }

    /**
     * @return the selected
     */
    public boolean getSelected() {
        return selected;
    }

    /**
     * @param selected the selected to set
     */
    public void setSelected(boolean selected) {
        this.selected = selected;
    }

    /**
     * @return the idMenu
     */
    public Long getIdMenu() {
        return idMenu;
    }

    /**
     * @param idMenu the idMenu to set
     */
    public void setIdMenu(Long idMenu) {
        this.idMenu = idMenu;
    }
}
