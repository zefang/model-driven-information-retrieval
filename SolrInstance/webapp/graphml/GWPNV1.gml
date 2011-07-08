<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_ePUZsOiaEd6gMtZRCjS81g" projectName="PetriNet">
    <node className="Place" id="_ePVAwOiaEd6gMtZRCjS81g"/>
    <node className="Transition" id="_ePVAweiaEd6gMtZRCjS81g"/>
    <node className="Net" id="_ePVAwuiaEd6gMtZRCjS81g"/>
    <edge id="_ePVAyeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_ePVAwuiaEd6gMtZRCjS81g" target="_ePVAwOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">place</attribute>
    </edge>
    <edge id="_ePVAyeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_ePVAwOiaEd6gMtZRCjS81g" target="_ePVAwuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_ePVAzOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_ePVAwuiaEd6gMtZRCjS81g" target="_ePVAweiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">transition</attribute>
    </edge>
    <edge id="_ePVAzOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_ePVAweiaEd6gMtZRCjS81g" target="_ePVAwuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_ePVAw-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_ePVAwOiaEd6gMtZRCjS81g" target="_ePVAweiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">src</attribute>
    </edge>
    <edge id="_ePVAw-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_ePVAweiaEd6gMtZRCjS81g" target="_ePVAwOiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_ePVAxuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_ePVAwOiaEd6gMtZRCjS81g" target="_ePVAweiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">dst</attribute>
    </edge>
    <edge id="_ePVAxuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_ePVAweiaEd6gMtZRCjS81g" target="_ePVAwOiaEd6gMtZRCjS81g" upperValue="*"/>
  </graph>
</graphml>
