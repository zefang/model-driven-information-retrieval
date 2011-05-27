<graphml>
	<graph>
		<node id="A">
			<className>A</className>
			<attribute>attributoA</attribute>
		</node>
		<node id="B">
			<className>B</className>
			<attribute>attributoB</attribute>
		</node>
		<node id="C">
			<className>C</className>
			<attribute>attributoC</attribute>
		</node>
		<node id="D">
			<className>D</className>
			<attribute>attributoD</attribute>
		</node>
	
		<edge id="1" source="A" target="B">
			<relType>COMPOSITION_COMPOSITE_COMPONENT</relType>
		</edge>
		<edge id="2" source="A" target="C">
			<relType>ASSOCIATION</relType>
		</edge>
		<edge id="3" source="A" target="D">
			<relType>ASSOCIATION</relType>
		</edge>
		<edge id="4" source="D" target="C">
			<relType>ASSOCIATION</relType>
		</edge>
		
		<edge id="1-opposite" source="B" target="A">
			<relType>COMPOSITION_COMPONENT_COMPOSITE</relType>
		</edge>
		<edge id="2-opposite" source="C" target="B">
			<relType>ASSOCIATION</relType>
		</edge>
		<edge id="3-opposite" source="D" target="A">
			<relType>ASSOCIATION</relType>
		</edge>
		<edge id="4-opposite" source="C" target="D">
			<relType>ASSOCIATION</relType>
		</edge>

	</graph>
</graphml>