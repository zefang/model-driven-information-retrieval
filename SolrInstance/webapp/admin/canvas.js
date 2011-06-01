	/**
	 * Constants
	 */
	var GENERALIZATION_FATHER_CHILD = "GENERALIZATION_FATHER_CHILD";
	var GENERALIZATION_CHILD_FATHER = "GENERALIZATION_CHILD_FATHER";
	var ASSOCIATION = "ASSOCIATION";
	var COMPOSITION_COMPOSITE_COMPONENT = "COMPOSITION_COMPOSITE_COMPONENT";
	var COMPOSITION_COMPONENT_COMPOSITE = "COMPOSITION_COMPONENT_COMPOSITE"; 

	var canvas = null;
	var backCanvas = null;
	var context = null;
	var backContext = null;
	var myStage = null;
	
	var xmlHttpReq = null;
	
	var coordX = null;
	var coordY = null;
	
	var xmlDoc = null;
	var rootNodeClassName;
	
	var radius = 20;

	function drawPopup(coordX, coordY) {
		var c = context; 
		c.clearRect(0, 0, canvas.width, canvas.height);
		c.fillStyle = "black";
		c.beginPath();
		c.lineWidth = 1;
		c.strokeStyle = "black";
		c.fillStyle = "yellow";
		c.rect(coordX, coordY, 100, 50);
		c.fill();
		c.stroke();
		c.closePath();
	}
	
	function clearPopup(coordX, coordY) {
		context.clearRect(0, 0, canvas.width, canvas.height);
	}
	
	function findNodeById(id, collection) {
		for (var i = 0; i < collection.length; i++) {
			if (collection[i].getAttribute("id") == id) {
				return collection[i];
			}
		}
	}
	
	function findNodeByClassName(className, collection) {
		for (var i = 0; i < collection.length; i++) {
			if (collection[i].getAttribute("className") == className) {
				return collection[i];
			}
		}
	}
	
	/**
	 * 
	 * @param {Object} label
	 * The label to attach to this node.
	 * @param {Object} angle
	 * The angle to compensate
	 */
	function drawNode(label, angle, c) {
		myStage.setContext(c);
		c.beginPath();
			c.lineWidth = 1;
			c.strokeStyle = "black";
			c.fillStyle = "#8ED6FF";
			c.arc(0, 0, radius, 0, 2*Math.PI, true);
			c.stroke();
			c.fill();
		c.closePath();
	
		c.save()
			c.rotate(-angle);
			c.translate(0,-1.2*radius);
			c.font = "15px sans-serif";
			c.fillStyle = "#000000";
			c.fillText(label, 0, 0);
		c.restore();
		
		myStage.addRegionEventListener("onmousemove", function() {
			var mousePosition = myStage.getMousePos();
			drawPopup(mousePosition.x, mousePosition.y);
		});
		myStage.addRegionEventListener("onmouseout", function() {
			var mousePosition = myStage.getMousePos();
			clearPopup(mousePosition.x, mousePosition.y);
		});
	}
	
	/**
	 * Draws a white triangle for generalization
	 * @param x
	 * x coordinate of where to draw.
	 * @param y 
	 * y coordinate of where to draw.
	 * @param angle 
	 * angle of rotation of the white triangle
	 * @param c
	 * context
	 */
	function drawGeneralizationCap(x, y, angle, c) {
		c.save()
			c.beginPath();
			c.translate(x, y);
			c.rotate(angle);
			c.fillStyle = "white";
			c.strokeStyle = "black";
			c.moveTo(0, 0);
			c.lineTo(10, 0);
			c.lineTo(0, 10);
			c.lineTo(0, 0);
			c.fill();
			c.stroke();
			c.closePath();
		c.restore();
	}
	
	/**
	 * Draws a black square as in compositions
	 * @param x
	 * x coordinate of where to draw.
	 * @param y 
	 * y coordinate of where to draw.
	 * @param angle 
	 * angle of rotation of the black square
	 * @param c
	 * context
	 */
	function drawCompositionCap(x, y, angle, c) {
		c.save()
			c.beginPath();
			c.translate(x, y);
			c.rotate(angle);
			c.fillStyle = "black";
			c.fillRect(0, 0, 10, 10);
			c.closePath();
		c.restore();
	}
	
	/**
	 * Draws an empty arrow cap like ->
	 * @param x
	 * x coordinate of where to draw.
	 * @param y 
	 * y coordinate of where to draw.
	 * @param c
	 * context
	 */
	function drawArrowCap(x, y, c) {
		//draw first half
		c.save()
			c.beginPath();
			c.translate(x, y);
			c.rotate(5/6*Math.PI);
			c.moveTo(0, 0);
			c.lineTo(10, 0);
			c.stroke();
			c.closePath();
		c.restore();
		
		//draw other half arrow
		c.save()
			c.beginPath();
			c.translate(x, y);
			c.rotate(-5/6*Math.PI);
			c.moveTo(0, 0);
			c.lineTo(10, 0);
			c.stroke();
			c.closePath();
		c.restore();
	}
	
	/**
	 * Draws an edge
	 * @param relType
	 * The type of the edge. Can be:
	 * "GENERALIZATION_FATHER_CHILD", "GENERALIZATION_CHILD_FATHER", "ASSOCIATION",
	 * "COMPOSITION_COMPOSITE_COMPONENT", "COMPOSITION_COMPONENT_COMPOSITE".
	 * ecc.
	 * @param angle
	 * angle of rotation of the matrix.
	 * @param c
	 * context
	 */
	function drawEdge(relType, angle, c) {
		c.translate(canvas.width/2, canvas.height/2);
		c.rotate(angle);
		c.beginPath();
			//stroke arc
			c.moveTo(radius, 0);
			c.lineTo(100-radius, 0);
			c.stroke();
		c.closePath();
		c.save();
			switch(relType) {
				case GENERALIZATION_FATHER_CHILD:
						drawGeneralizationCap(radius, 0, -1/4*Math.PI, c);
						break;
				 
				case GENERALIZATION_CHILD_FATHER:
						drawGeneralizationCap(100-radius, 0, -5/4*Math.PI, c);
						break;
				
				case ASSOCIATION: break;
				
				case COMPOSITION_COMPOSITE_COMPONENT: 
						drawCompositionCap(radius, 0, -1/4*Math.PI, c); 
						break;
						
				case COMPOSITION_COMPONENT_COMPOSITE:
						drawCompositionCap(100-radius, 0, -5/4*Math.PI, c); 
						break;
						
				default: drawArrowCap(100-radius, 0, c);
			}
		c.restore();
	}
	
	function drawNodes(rootNodeClassName, c) {
		//draw root node
		var nodes = xmlDoc.documentElement.getElementsByTagName("node");
		var rootNode = findNodeByClassName(rootNodeClassName, nodes);
		myStage.beginRegion();
			c.save();
				c.translate(canvas.width/2, canvas.height/2);
				drawNode(rootNodeClassName, 0, c);
			c.restore();
		myStage.closeRegion();
		
		//draw neighbours of the node
		var edges = xmlDoc.documentElement.getElementsByTagName("edge");
		var outgoingEdges = new Array();
		var k = 0;
		for (var i = 0; i < edges.length; i++) {
			if (edges[i].getAttribute("source") == rootNode.getAttribute("id")) {
				outgoingEdges[k++] = edges[i]; 
			}
		}
		var angle = 2*Math.PI / outgoingEdges.length;
		for (var i = 0; i < outgoingEdges.length; i++) {
			//draw arc
			c.save();
				drawEdge(outgoingEdges[i].getAttribute("relType"), angle*i, c);
			c.restore();	
			
			//draw node
			myStage.beginRegion();
				c.save()
					c.translate(canvas.width/2, canvas.height/2);
					c.rotate(angle*i);				
					c.translate(100, 0);					
					drawNode(findNodeById(outgoingEdges[i].getAttribute("target"),nodes).getAttribute("className"), angle*i, c);
				c.restore();		
			myStage.closeRegion();
		}
	}
	
	function loadXMLDoc(url, rootNodeClassName) {
		xmlHttpReq = new XMLHttpRequest();
		xmlHttpReq.onreadystatechange = function() {
			if (xmlHttpReq.readyState == 4 && xmlHttpReq.status == 200) {
				xmlDoc = xmlHttpReq.responseXML;
				myStage.setDrawStage( function() {
					backContext.clearRect(0, 0, canvas.width, canvas.height);
					context.clearRect(0, 0, canvas.width, canvas.height);
					var mousePos = myStage.getMousePos();
            		if (mousePos != null) {
                		var eventDisplay = "Mouse position: " + mousePos.x +"," +mousePos.y;
						//context.fillText(eventDisplay, 10, 10);
						//backContext.fillText(eventDisplay, 20, 20);
            		}
					drawNodes(rootNodeClassName, backContext);
					myStage.setContext(context);
				});
			}
		}
		xmlHttpReq.open("GET",url,true);
		xmlHttpReq.send();
	}
	
	function changeNode(graphPath, rootNodeClassName) {
		loadXMLDoc(graphPath, rootNodeClassName);
	}
	
	window.onload = function() {
		canvas = document.getElementById("canvas");
		context = canvas.getContext("2d");
		backCanvas = document.getElementById("backCanvas");
		backContext = backCanvas.getContext("2d");
		myStage = new Kinetic.Stage(canvas);
	}