package HibernateDao;

import java.util.HashSet;
import java.util.Set;

/**
 * Location generated by MyEclipse Persistence Tools
 */

public class Location implements java.io.Serializable {

	// Fields

	private String locaId;

	private String locaDesc;

	private Set itemlocations = new HashSet(0);

	private Set physicsdatas = new HashSet(0);

	private Set inventorytags = new HashSet(0);

	private Set iusses = new HashSet(0);

	private Set eceipts = new HashSet(0);

	// Constructors

	/** default constructor */
	public Location() {
	}

	/** minimal constructor */
	public Location(String locaId) {
		this.locaId = locaId;
	}

	/** full constructor */
	public Location(String locaId, String locaDesc, Set itemlocations,
			Set physicsdatas, Set inventorytags, Set iusses, Set eceipts) {
		this.locaId = locaId;
		this.locaDesc = locaDesc;
		this.itemlocations = itemlocations;
		this.physicsdatas = physicsdatas;
		this.inventorytags = inventorytags;
		this.iusses = iusses;
		this.eceipts = eceipts;
	}

	// Property accessors

	public String getLocaId() {
		return this.locaId;
	}

	public void setLocaId(String locaId) {
		this.locaId = locaId;
	}

	public String getLocaDesc() {
		return this.locaDesc;
	}

	public void setLocaDesc(String locaDesc) {
		this.locaDesc = locaDesc;
	}

	public Set getItemlocations() {
		return this.itemlocations;
	}

	public void setItemlocations(Set itemlocations) {
		this.itemlocations = itemlocations;
	}

	public Set getPhysicsdatas() {
		return this.physicsdatas;
	}

	public void setPhysicsdatas(Set physicsdatas) {
		this.physicsdatas = physicsdatas;
	}

	public Set getInventorytags() {
		return this.inventorytags;
	}

	public void setInventorytags(Set inventorytags) {
		this.inventorytags = inventorytags;
	}

	public Set getIusses() {
		return this.iusses;
	}

	public void setIusses(Set iusses) {
		this.iusses = iusses;
	}

	public Set getEceipts() {
		return this.eceipts;
	}

	public void setEceipts(Set eceipts) {
		this.eceipts = eceipts;
	}

}