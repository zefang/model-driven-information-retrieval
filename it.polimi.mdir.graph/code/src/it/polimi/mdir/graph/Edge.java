package it.polimi.mdir.graph;

import java.io.Serializable;

/**
 * This class represents an edge of a graph in the UML scenario.
 */
public class Edge implements Serializable {
	
	private static final long serialVersionUID = -862792027650369073L;
	
	private String id;
	private String relationType;
	private String associatedAttribute = null;
	private String upperValue;
	private String lowerValue;
	
	private String sourceId;
	private String targetId;
	
	/**
	 * Used during graph navigation to tell apart the edges which have been 
	 * already followed once. 
	 */
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
	
	/**
	 * Returns this edge's relationType.
	 */
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
	public void setLowerValue(String lowerValue) {
		this.lowerValue = lowerValue;
	}
	public String getLowerValue() {
		return lowerValue;
	}
	public void setUpperValue(String upperValue) {
		this.upperValue = upperValue;
	}
	public String getUpperValue() {
		return upperValue;
	}

}
