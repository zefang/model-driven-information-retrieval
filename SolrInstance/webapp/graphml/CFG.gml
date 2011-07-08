<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_dqfOUOiaEd6gMtZRCjS81g" projectName="CFG">
    <node className="AbstractNode" id="_dqfOU-iaEd6gMtZRCjS81g"/>
    <node className="Node" id="_dqfOVOiaEd6gMtZRCjS81g"/>
    <node className="ConditionalNode" id="_dqfOVeiaEd6gMtZRCjS81g"/>
    <node className="Expression" id="_dqfOVuiaEd6gMtZRCjS81g">
      <attribute>expressionName</attribute>
    </node>
    <edge id="_dqfOWOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dqfOU-iaEd6gMtZRCjS81g" target="_dqfOVuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">expression</attribute>
    </edge>
    <edge id="_dqfOWOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dqfOVuiaEd6gMtZRCjS81g" target="_dqfOU-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dqfOW-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dqfOVOiaEd6gMtZRCjS81g" target="_dqfOVOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">inNode</attribute>
    </edge>
    <edge id="_dqfOW-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dqfOVOiaEd6gMtZRCjS81g" target="_dqfOVOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dqfOXuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dqfOVOiaEd6gMtZRCjS81g" target="_dqfOVOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">outNode</attribute>
    </edge>
    <edge id="_dqfOXuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dqfOVOiaEd6gMtZRCjS81g" target="_dqfOVOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dqfOYeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dqfOVeiaEd6gMtZRCjS81g" target="_dqfOVOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">trueConditionNode</attribute>
    </edge>
    <edge id="_dqfOYeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dqfOVOiaEd6gMtZRCjS81g" target="_dqfOVeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dqfOZOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dqfOVeiaEd6gMtZRCjS81g" target="_dqfOVOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">falseConditionNode</attribute>
    </edge>
    <edge id="_dqfOZOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dqfOVOiaEd6gMtZRCjS81g" target="_dqfOVeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dqf1YOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dqfOVOiaEd6gMtZRCjS81g" target="_dqfOU-iaEd6gMtZRCjS81g"/>
    <edge id="_dqf1YOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dqfOU-iaEd6gMtZRCjS81g" target="_dqfOVOiaEd6gMtZRCjS81g"/>
    <edge id="_dqf1YeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dqfOVeiaEd6gMtZRCjS81g" target="_dqfOU-iaEd6gMtZRCjS81g"/>
    <edge id="_dqf1YeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dqfOU-iaEd6gMtZRCjS81g" target="_dqfOVeiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
