<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_f9WBwOiaEd6gMtZRCjS81g" projectName="QoSCharacteristic">
    <node className="QoSCharacteristic" id="_f9WBw-iaEd6gMtZRCjS81g"/>
    <node className="BooleanExpression" id="_f9WBxOiaEd6gMtZRCjS81g">
      <attribute>value</attribute>
    </node>
    <node className="MappingExpression" id="_f9WBxeiaEd6gMtZRCjS81g">
      <attribute>value</attribute>
    </node>
    <node className="StatisticalAttributekindKind" id="_f9WBxuiaEd6gMtZRCjS81g"/>
    <node className="Parameter" id="_f9WBx-iaEd6gMtZRCjS81g"/>
    <node className="DataType" id="_f9WByOiaEd6gMtZRCjS81g"/>
    <node className="Domain" id="_f9WByeiaEd6gMtZRCjS81g"/>
    <node className="DirectionKind" id="_f9WByuiaEd6gMtZRCjS81g">
      <attribute>value</attribute>
    </node>
    <node className="Numeric" id="_f9WBy-iaEd6gMtZRCjS81g"/>
    <node className="Set" id="_f9WBzOiaEd6gMtZRCjS81g"/>
    <node className="Enumeration" id="_f9WBzeiaEd6gMtZRCjS81g"/>
    <node className="StringSet" id="_f9WBzuiaEd6gMtZRCjS81g">
      <attribute>string</attribute>
    </node>
    <edge id="_f9Wo0OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_f9WBw-iaEd6gMtZRCjS81g" target="_f9WBxuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">statisticalAttribute</attribute>
    </edge>
    <edge id="_f9Wo0OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_f9WBxuiaEd6gMtZRCjS81g" target="_f9WBw-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_f9Wo0-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_f9WBw-iaEd6gMtZRCjS81g" target="_f9WBx-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">parameter</attribute>
    </edge>
    <edge id="_f9Wo0-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_f9WBx-iaEd6gMtZRCjS81g" target="_f9WBw-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_f9Wo3OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_f9WBzOiaEd6gMtZRCjS81g" target="_f9WBzuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">stringSet</attribute>
    </edge>
    <edge id="_f9Wo3OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_f9WBzuiaEd6gMtZRCjS81g" target="_f9WBzOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_f9WB0-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_f9WBw-iaEd6gMtZRCjS81g" target="_f9WBxOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">invariant</attribute>
    </edge>
    <edge id="_f9WB0-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_f9WBxOiaEd6gMtZRCjS81g" target="_f9WBw-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_f9WB1uiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_f9WBw-iaEd6gMtZRCjS81g" target="_f9WBxeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">parallel_and_composition</attribute>
    </edge>
    <edge id="_f9WB1uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_f9WBxeiaEd6gMtZRCjS81g" target="_f9WBw-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_f9WB2eiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_f9WBw-iaEd6gMtZRCjS81g" target="_f9WBxeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">parallel_or_composition</attribute>
    </edge>
    <edge id="_f9WB2eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_f9WBxeiaEd6gMtZRCjS81g" target="_f9WBw-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_f9WB3OiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_f9WBw-iaEd6gMtZRCjS81g" target="_f9WBxeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">sequential_composition</attribute>
    </edge>
    <edge id="_f9WB3OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_f9WBxeiaEd6gMtZRCjS81g" target="_f9WBw-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_f9WB3-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_f9WBw-iaEd6gMtZRCjS81g" target="_f9WBxeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">values</attribute>
    </edge>
    <edge id="_f9WB3-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_f9WBxeiaEd6gMtZRCjS81g" target="_f9WBw-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_f9Wo1uiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_f9WBw-iaEd6gMtZRCjS81g" target="_f9WByeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">domain</attribute>
    </edge>
    <edge id="_f9Wo1uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_f9WByeiaEd6gMtZRCjS81g" target="_f9WBw-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_f9Wo2eiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_f9WByeiaEd6gMtZRCjS81g" target="_f9WByuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">direction</attribute>
    </edge>
    <edge id="_f9Wo2eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_f9WByuiaEd6gMtZRCjS81g" target="_f9WByeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_f9XP4OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_f9WByeiaEd6gMtZRCjS81g" target="_f9WByOiaEd6gMtZRCjS81g"/>
    <edge id="_f9XP4OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_f9WByOiaEd6gMtZRCjS81g" target="_f9WByeiaEd6gMtZRCjS81g"/>
    <edge id="_f9XP4eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_f9WBy-iaEd6gMtZRCjS81g" target="_f9WByeiaEd6gMtZRCjS81g"/>
    <edge id="_f9XP4eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_f9WByeiaEd6gMtZRCjS81g" target="_f9WBy-iaEd6gMtZRCjS81g"/>
    <edge id="_f9XP4uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_f9WBzOiaEd6gMtZRCjS81g" target="_f9WByeiaEd6gMtZRCjS81g"/>
    <edge id="_f9XP4uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_f9WByeiaEd6gMtZRCjS81g" target="_f9WBzOiaEd6gMtZRCjS81g"/>
    <edge id="_f9XP4-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_f9WBzeiaEd6gMtZRCjS81g" target="_f9WByeiaEd6gMtZRCjS81g"/>
    <edge id="_f9XP4-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_f9WByeiaEd6gMtZRCjS81g" target="_f9WBzeiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
