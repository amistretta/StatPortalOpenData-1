// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package it.sister.statportal.odata.domain;

import java.lang.Integer;
import java.lang.String;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect DbTable_Roo_DbManaged {
    
    @Column(name = "NAME", columnDefinition = "varchar", length = 100)
    private String DbTable.name;
    
    @Column(name = "DESCRIPTION", columnDefinition = "varchar", length = 250)
    private String DbTable.description;
    
    @Column(name = "DB_NAME", columnDefinition = "varchar", length = 50)
    private String DbTable.dbName;
    
    @Column(name = "TABLE_NAME", columnDefinition = "varchar", length = 100)
    private String DbTable.tableName;
    
    @Column(name = "NUM_ROWS", columnDefinition = "int4")
    private Integer DbTable.numRows;
    
    @Column(name = "LAST_UPDATE", columnDefinition = "timestamp")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date DbTable.lastUpdate;
    
    public String DbTable.getName() {
        return this.name;
    }
    
    public void DbTable.setName(String name) {
        this.name = name;
    }
    
    public String DbTable.getDescription() {
        return this.description;
    }
    
    public void DbTable.setDescription(String description) {
        this.description = description;
    }
    
    public String DbTable.getDbName() {
        return this.dbName;
    }
    
    public void DbTable.setDbName(String dbName) {
        this.dbName = dbName;
    }
    
    public String DbTable.getTableName() {
        return this.tableName;
    }
    
    public void DbTable.setTableName(String tableName) {
        this.tableName = tableName;
    }
    
    public Integer DbTable.getNumRows() {
        return this.numRows;
    }
    
    public void DbTable.setNumRows(Integer numRows) {
        this.numRows = numRows;
    }
    
    public Date DbTable.getLastUpdate() {
        return this.lastUpdate;
    }
    
    public void DbTable.setLastUpdate(Date lastUpdate) {
        this.lastUpdate = lastUpdate;
    }
    
}