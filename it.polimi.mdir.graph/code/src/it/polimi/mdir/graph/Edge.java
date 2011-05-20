package it.polimi.mdir.graph;

public class Edge {
	
	private String id;
	private String relationType;
	private String associatedAttribute;
	
	public void setId(String id) {
		this.id = id;
	}
	public String getId() {
		return id;
	}
	
	public void setRelationType(String relationType) {
		this.relationType = relationType;
	}
	public String getRelationType() {
		return relationType;
	}
	
	public void setAssociatedAttribute(String associatedAttribute) {
		this.associatedAttribute = associatedAttribute;
	}
	public String getAssociatedAttribute() {
		return associatedAttribute;
	}
	
	public String toString() {
		return this.relationType;
	}

}
