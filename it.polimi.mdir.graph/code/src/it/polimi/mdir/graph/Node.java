package it.polimi.mdir.graph;

import java.util.ArrayList;

public class Node {

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
	
	public String toString() {
		return this.className;
	}
	
}
