// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package it.sister.statportal.odata.domain;

import it.sister.statportal.odata.domain.MdDataDim;
import it.sister.statportal.odata.utility.DBUtils;

import java.lang.Integer;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PersistenceContext;
import javax.persistence.Table;
import org.springframework.transaction.annotation.Transactional;

privileged aspect MdDataDim_Roo_Entity {
    
    declare @type: MdDataDim: @Entity;
    
    declare @type: MdDataDim: @Table(name = "MD_DATA_DIM", schema = "public");
    
    @PersistenceContext
    transient EntityManager MdDataDim.entityManager;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "ID", columnDefinition = "int4")
    private Integer MdDataDim.id;
    
    public Integer MdDataDim.getId() {
        return this.id;
    }
    
    public void MdDataDim.setId(Integer id) {
        this.id = id;
    }
    
    @Transactional
    public void MdDataDim.persist() throws OdataDomainException {
	validate();
	// se l'uid è vuoto si genera
	if(this.getUid() == null || this.getUid().isEmpty()){
	    this.setUid(DBUtils.generateUid());
	}
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void MdDataDim.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            MdDataDim attached = MdDataDim.findMdDataDim(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void MdDataDim.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void MdDataDim.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public MdDataDim MdDataDim.merge() throws OdataDomainException {
	validate();
        if (this.entityManager == null) this.entityManager = entityManager();
        MdDataDim merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager MdDataDim.entityManager() {
        EntityManager em = new MdDataDim().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long MdDataDim.countMdDataDims() {
        return entityManager().createQuery("SELECT COUNT(o) FROM MdDataDim o", Long.class).getSingleResult();
    }
    
    public static List<MdDataDim> MdDataDim.findAllMdDataDims() {
        return entityManager().createQuery("SELECT o FROM MdDataDim o", MdDataDim.class).getResultList();
    }
    
    public static MdDataDim MdDataDim.findMdDataDim(Integer id) {
        if (id == null) return null;
        return entityManager().find(MdDataDim.class, id);
    }
    
    public static List<MdDataDim> MdDataDim.findMdDataDimEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM MdDataDim o", MdDataDim.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
