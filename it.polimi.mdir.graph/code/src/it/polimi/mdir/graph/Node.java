package it.polimi.mdir.graph;

import java.io.Serializable;
import java.util.ArrayList;

/**
 * This class represents a node of a graph in the UML scenario.
 */
public class Node implements Serializable {

	private static final long serialVersionUID = -3496537477960329525L;
	
	private String id;
	private String className;
	private ArrayList<String> attributes = new ArrayList<String>();

	
	public void setId(String id) {
		this.id = id;
	}
	public String getId() {
		return id;
	}
	
	public void setClassName(String className) {
		this.className = className;
	}
	public String getClassName() {
		return className;
	}
	
	public void addAttribute(String attributeName) {
		this.attributes.add(attributeName);
	}
	
	public void setAttributes(ArrayList<String> attributes) {
		this.attributes = attributes;
	}
	public ArrayList<String> getAttributes() {
		return attributes;
	}
	
	/**
	 * Returns the className of this Node
	 */
	public String toString() {
		return this.className;
	}
	
}
