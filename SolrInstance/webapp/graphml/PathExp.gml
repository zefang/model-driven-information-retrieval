<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_ftRlcOiaEd6gMtZRCjS81g" projectName="PathExp">
    <node className="Element" id="_ftSMguiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="PathExp" id="_ftSMg-iaEd6gMtZRCjS81g"/>
    <node className="State" id="_ftSMhOiaEd6gMtZRCjS81g"/>
    <node className="Transition" id="_ftSMheiaEd6gMtZRCjS81g"/>
    <edge id="_ftSMh-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_ftSMg-iaEd6gMtZRCjS81g" target="_ftSMhOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">states</attribute>
    </edge>
    <edge id="_ftSMh-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_ftSMhOiaEd6gMtZRCjS81g" target="_ftSMg-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_ftSMiuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_ftSMg-iaEd6gMtZRCjS81g" target="_ftSMheiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">transitions</attribute>
    </edge>
    <edge id="_ftSMiuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_ftSMheiaEd6gMtZRCjS81g" target="_ftSMg-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_ftSMjeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_ftSMhOiaEd6gMtZRCjS81g" target="_ftSMheiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">incoming</attribute>
    </edge>
    <edge id="_ftSMjeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_ftSMheiaEd6gMtZRCjS81g" target="_ftSMhOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_ftSMkOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_ftSMhOiaEd6gMtZRCjS81g" target="_ftSMheiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">outgoing</attribute>
    </edge>
    <edge id="_ftSMkOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_ftSMheiaEd6gMtZRCjS81g" target="_ftSMhOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_ftSMlOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_ftSMg-iaEd6gMtZRCjS81g" target="_ftSMguiaEd6gMtZRCjS81g"/>
    <edge id="_ftSMlOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_ftSMguiaEd6gMtZRCjS81g" target="_ftSMg-iaEd6gMtZRCjS81g"/>
    <edge id="_ftSMleiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_ftSMheiaEd6gMtZRCjS81g" target="_ftSMguiaEd6gMtZRCjS81g"/>
    <edge id="_ftSMleiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_ftSMguiaEd6gMtZRCjS81g" target="_ftSMheiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
