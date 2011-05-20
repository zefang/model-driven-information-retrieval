package it.polimi.mdir.graph;

public class ImportCandidate {

	private String name;
	private float weight;
	private String callerNode;
	
	public ImportCandidate(String name, float weight, String callerNode) {
		setName(name);
		setWeight(weight);
		setCallerNode(callerNode);
	}
	
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
