// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package it.sister.statportal.odata.domain;

import it.sister.statportal.odata.domain.MdDataDim;
import it.sister.statportal.odata.domain.MdHierarchy;
import it.sister.statportal.odata.domain.MdRelHierNode;
import java.lang.Boolean;
import java.lang.Integer;
import java.lang.String;
import java.util.Date;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect MdHierNode_Roo_DbManaged {
    
    @OneToMany(mappedBy = "idHierNode")
    private Set<MdDataDim> MdHierNode.mdDataDims;
    
    @OneToMany(mappedBy = "idParentNode")
    private Set<MdRelHierNode> MdHierNode.mdRelHierNodes;
    
    @OneToMany(mappedBy = "idChildNode")
    private Set<MdRelHierNode> MdHierNode.mdRelHierNodes1;
    
    @ManyToOne
    @JoinColumn(name = "ID_HIERARCHY", referencedColumnName = "ID")
    private MdHierarchy MdHierNode.idHierarchy;
    
    @Column(name = "NAME", columnDefinition = "varchar", length = 100)
    private String MdHierNode.name;
    
    @Column(name = "TABLE_NAME", columnDefinition = "varchar", length = 100)
    private String MdHierNode.tableName;
    
    @Column(name = "PK_FIELD", columnDefinition = "varchar", length = 50)
    private String MdHierNode.pkField;
    
    @Column(name = "DESC_FIELD", columnDefinition = "varchar", length = 50)
    private String MdHierNode.descField;
    
    @Column(name = "DESCRIPTION", columnDefinition = "varchar", length = 250)
    private String MdHierNode.description;
    
    @Column(name = "NUM_ROWS", columnDefinition = "int4")
    private Integer MdHierNode.numRows;
    
    @Column(name = "ROW_SIZE", columnDefinition = "int4")
    private Integer MdHierNode.rowSize;
    
    @Column(name = "LAST_UPDATE", columnDefinition = "timestamp")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date MdHierNode.lastUpdate;
    
    @Column(name = "GENERIC_GRANTS", columnDefinition = "bool")
    private Boolean MdHierNode.genericGrants;
    
    @Column(name = "SORT_FIELD", columnDefinition = "varchar", length = 50)
    private String MdHierNode.sortField;
    
    @Column(name = "ID_USER_OWNER", columnDefinition = "int4")
    private Integer MdHierNode.idUserOwner;
    
    public Set<MdDataDim> MdHierNode.getMdDataDims() {
        return this.mdDataDims;
    }
    
    public void MdHierNode.setMdDataDims(Set<MdDataDim> mdDataDims) {
        this.mdDataDims = mdDataDims;
    }
    
    public Set<MdRelHierNode> MdHierNode.getMdRelHierNodes() {
        return this.mdRelHierNodes;
    }
    
    public void MdHierNode.setMdRelHierNodes(Set<MdRelHierNode> mdRelHierNodes) {
        this.mdRelHierNodes = mdRelHierNodes;
    }
    
    public Set<MdRelHierNode> MdHierNode.getMdRelHierNodes1() {
        return this.mdRelHierNodes1;
    }
    
    public void MdHierNode.setMdRelHierNodes1(Set<MdRelHierNode> mdRelHierNodes1) {
        this.mdRelHierNodes1 = mdRelHierNodes1;
    }
    
    public MdHierarchy MdHierNode.getIdHierarchy() {
        return this.idHierarchy;
    }
    
    public void MdHierNode.setIdHierarchy(MdHierarchy idHierarchy) {
        this.idHierarchy = idHierarchy;
    }
    
    public String MdHierNode.getName() {
        return this.name;
    }
    
    public void MdHierNode.setName(String name) {
        this.name = name;
    }
    
    public String MdHierNode.getTableName() {
        return this.tableName;
    }
    
    public void MdHierNode.setTableName(String tableName) {
        this.tableName = tableName;
    }
    
    public String MdHierNode.getPkField() {
        return this.pkField;
    }
    
    public void MdHierNode.setPkField(String pkField) {
        this.pkField = pkField;
    }
    
    public String MdHierNode.getDescField() {
        return this.descField;
    }
    
    public void MdHierNode.setDescField(String descField) {
        this.descField = descField;
    }
    
    public String MdHierNode.getDescription() {
        return this.description;
    }
    
    public void MdHierNode.setDescription(String description) {
        this.description = description;
    }
    
    public Integer MdHierNode.getNumRows() {
        return this.numRows;
    }
    
    public void MdHierNode.setNumRows(Integer numRows) {
        this.numRows = numRows;
    }
    
    public Integer MdHierNode.getRowSize() {
        return this.rowSize;
    }
    
    public void MdHierNode.setRowSize(Integer rowSize) {
        this.rowSize = rowSize;
    }
    
    public Date MdHierNode.getLastUpdate() {
        return this.lastUpdate;
    }
    
    public void MdHierNode.setLastUpdate(Date lastUpdate) {
        this.lastUpdate = lastUpdate;
    }
    
    public Boolean MdHierNode.getGenericGrants() {
        return this.genericGrants;
    }
    
    public boolean MdHierNode.isGenericGrants() {
        return this.genericGrants != null && this.genericGrants;
    }
    
    public void MdHierNode.setGenericGrants(Boolean genericGrants) {
        this.genericGrants = genericGrants;
    }
    
    public String MdHierNode.getSortField() {
        return this.sortField;
    }
    
    public void MdHierNode.setSortField(String sortField) {
        this.sortField = sortField;
    }
    
    public Integer MdHierNode.getIdUserOwner() {
        return this.idUserOwner;
    }
    
    public void MdHierNode.setIdUserOwner(Integer idUserOwner) {
        this.idUserOwner = idUserOwner;
    }
    
}
