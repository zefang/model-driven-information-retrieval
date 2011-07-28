package it.polimi.mdir.graph.processing;


public class ImportCandidate {

	private String name;
	private float weight;
	private String callerNode; //used to tell under which branch this attribute was.
	
	/**
	 * This class represents an attribute which is candidated to be imported in a node.
	 */
	public ImportCandidate(String name, float weight, String callerNode) {
		setName(name);
		setWeight(weight);
		setCallerNode(callerNode);
	}
	
	/**
	 * @return
	 * The name and the weight of this attribute in the form:<br />
	 * name|weight
	 */
	public String getNameWeight() {
		return name + "|" + weight;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getName() {
		return name;
	}
	
	public void setWeight(float weight) {
		this.weight = weight;
	}

	public float getWeight() {
		return weight;
	}
	
	public void setCallerNode(String callerNode) {
		this.callerNode = callerNode;
	}
	
	public String getCallerNode() {
		return callerNode;
	}
	
}
