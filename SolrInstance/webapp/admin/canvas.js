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
				c.translate(canvas.width/2, canvas.height/2);
				c.rotate(angle*i);
				c.beginPath();
					//stroke arc
					c.moveTo(radius, 0);
					c.lineTo(100-radius, 0);
					c.stroke();
				c.closePath();
				c.save();
					//draw half arrow
					c.beginPath();
					c.translate(100-radius, 0);
					c.rotate(5/6*Math.PI);
					c.moveTo(0, 0);
					c.lineTo(10, 0);
					c.stroke();
					c.closePath();
				c.restore();
				c.save();
					//draw other half arrow
					c.beginPath();
					c.translate(100-radius, 0);
					c.rotate(-5/6*Math.PI);
					c.moveTo(0, 0);
					c.lineTo(10, 0);
					c.stroke();
					c.closePath();
				c.restore();
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
	
	var n = -1;
	var allNodes = ["LocatedElement", "NamedElement", "PetriNet", "Marking"];
	function changeNode() {
		n = n+1;
		if (n >= allNodes.length) {
			n = 0;
		}
		rootNodeClassName = allNodes[n];
		loadXMLDoc("../graphml/PetriNet_extended.gml", rootNodeClassName);
	}
	
	window.onload = function() {
		canvas = document.getElementById("canvas");
		context = canvas.getContext("2d");
		backCanvas = document.getElementById("backCanvas");
		backContext = backCanvas.getContext("2d");
		myStage = new Kinetic.Stage(canvas);
		
		//rootNodeClassName="NamedElement"; //default value
		//loadXMLDoc("../graphml/PetriNet_extended.gml", rootNodeClassName);
		
	}