<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_eO0DYOiaEd6gMtZRCjS81g" projectName="PetriNet">
    <node className="Place" id="_eO0DYuiaEd6gMtZRCjS81g"/>
    <node className="Transition" id="_eO0DY-iaEd6gMtZRCjS81g"/>
    <node className="Net" id="_eO0DZOiaEd6gMtZRCjS81g"/>
    <edge id="_eO0qdOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eO0DZOiaEd6gMtZRCjS81g" target="_eO0DYuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">place</attribute>
    </edge>
    <edge id="_eO0qdOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eO0DYuiaEd6gMtZRCjS81g" target="_eO0DZOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eO0qd-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eO0DZOiaEd6gMtZRCjS81g" target="_eO0DY-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">transition</attribute>
    </edge>
    <edge id="_eO0qd-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eO0DY-iaEd6gMtZRCjS81g" target="_eO0DZOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eO0DZeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eO0DYuiaEd6gMtZRCjS81g" target="_eO0DY-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">src</attribute>
    </edge>
    <edge id="_eO0DZeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eO0DY-iaEd6gMtZRCjS81g" target="_eO0DYuiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_eO0qceiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eO0DYuiaEd6gMtZRCjS81g" target="_eO0DY-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">dst</attribute>
    </edge>
    <edge id="_eO0qceiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eO0DY-iaEd6gMtZRCjS81g" target="_eO0DYuiaEd6gMtZRCjS81g" upperValue="*"/>
  </graph>
</graphml>
