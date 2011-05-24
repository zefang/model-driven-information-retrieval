package it.polimi.mdir.graph;

public class Edge {
	
	private String id;
	private String relationType;
	private String associatedAttribute = null;
	
	private String sourceId;
	private String targetId;
	
	private boolean hasBeenFollowed = false;
	
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
	
	public void setSourceId(String sourceId) {
		this.sourceId = sourceId;
	}
	public String getSourceId() {
		return sourceId;
	}
	public void setTargetId(String targetId) {
		this.targetId = targetId;
	}
	public String getTargetId() {
		return targetId;
	}
	public void setFollowed(boolean hasBeenFollowed) {
		this.hasBeenFollowed = hasBeenFollowed;
	}
	public boolean hasBeenFollowed() {
		return hasBeenFollowed;
	}

}
