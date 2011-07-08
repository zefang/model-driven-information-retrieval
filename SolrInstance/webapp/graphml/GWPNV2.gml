<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_eP1XEOiaEd6gMtZRCjS81g" projectName="PetriNet">
    <node className="Place" id="_eP1XEuiaEd6gMtZRCjS81g"/>
    <node className="Transition" id="_eP1XE-iaEd6gMtZRCjS81g"/>
    <node className="Net" id="_eP1XFOiaEd6gMtZRCjS81g"/>
    <node className="PTArc" id="_eP1XFeiaEd6gMtZRCjS81g"/>
    <node className="TPArc" id="_eP1XFuiaEd6gMtZRCjS81g"/>
    <edge id="_eP1-LOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eP1XFOiaEd6gMtZRCjS81g" target="_eP1XEuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">place</attribute>
    </edge>
    <edge id="_eP1-LOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eP1XEuiaEd6gMtZRCjS81g" target="_eP1XFOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eP1-L-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eP1XFOiaEd6gMtZRCjS81g" target="_eP1XE-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">transition</attribute>
    </edge>
    <edge id="_eP1-L-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eP1XE-iaEd6gMtZRCjS81g" target="_eP1XFOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eP1-IOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eP1XEuiaEd6gMtZRCjS81g" target="_eP1XFeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">out</attribute>
    </edge>
    <edge id="_eP1-IOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eP1XFeiaEd6gMtZRCjS81g" target="_eP1XEuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eP1-I-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eP1XEuiaEd6gMtZRCjS81g" target="_eP1XFuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">in</attribute>
    </edge>
    <edge id="_eP1-I-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eP1XFuiaEd6gMtZRCjS81g" target="_eP1XEuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eP1-JuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eP1XE-iaEd6gMtZRCjS81g" target="_eP1XFeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">in</attribute>
    </edge>
    <edge id="_eP1-JuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eP1XFeiaEd6gMtZRCjS81g" target="_eP1XE-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eP1-KeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eP1XE-iaEd6gMtZRCjS81g" target="_eP1XFuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">out</attribute>
    </edge>
    <edge id="_eP1-KeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eP1XFuiaEd6gMtZRCjS81g" target="_eP1XE-iaEd6gMtZRCjS81g" upperValue="1"/>
  </graph>
</graphml>
