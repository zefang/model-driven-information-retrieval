<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_gJBtUOiaEd6gMtZRCjS81g" projectName="SEEDesign">
    <node className="LogFile" id="_gJBtU-iaEd6gMtZRCjS81g">
      <attribute>file</attribute>
    </node>
    <node className="Logger" id="_gJBtVOiaEd6gMtZRCjS81g"/>
    <node className="Expression" id="_gJBtVeiaEd6gMtZRCjS81g">
      <attribute>loggingOn</attribute>
    </node>
    <node className="Literal" id="_gJBtVuiaEd6gMtZRCjS81g">
      <attribute>value</attribute>
    </node>
    <node className="VariableExpression" id="_gJBtV-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="NumberExpression" id="_gJBtWOiaEd6gMtZRCjS81g"/>
    <node className="UnaryOperator" id="_gJBtWeiaEd6gMtZRCjS81g"/>
    <node className="UnaryPlusOp" id="_gJBtWuiaEd6gMtZRCjS81g"/>
    <node className="UnaryMinusOp" id="_gJBtW-iaEd6gMtZRCjS81g"/>
    <node className="BinaryOperator" id="_gJBtXOiaEd6gMtZRCjS81g"/>
    <node className="PlusOperator" id="_gJBtXeiaEd6gMtZRCjS81g"/>
    <node className="MinusOperator" id="_gJBtXuiaEd6gMtZRCjS81g"/>
    <edge id="_gJCUYeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gJBtWeiaEd6gMtZRCjS81g" target="_gJBtVeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">operand</attribute>
    </edge>
    <edge id="_gJCUYeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gJBtVeiaEd6gMtZRCjS81g" target="_gJBtWeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gJCUZOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gJBtXOiaEd6gMtZRCjS81g" target="_gJBtVeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">operand1</attribute>
    </edge>
    <edge id="_gJCUZOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gJBtVeiaEd6gMtZRCjS81g" target="_gJBtXOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gJCUZ-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gJBtXOiaEd6gMtZRCjS81g" target="_gJBtVeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">operand2</attribute>
    </edge>
    <edge id="_gJCUZ-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gJBtVeiaEd6gMtZRCjS81g" target="_gJBtXOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gJBtY-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gJBtU-iaEd6gMtZRCjS81g" target="_gJBtU-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">instance</attribute>
    </edge>
    <edge id="_gJBtY-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gJBtU-iaEd6gMtZRCjS81g" target="_gJBtU-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gJBtZuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gJBtU-iaEd6gMtZRCjS81g" target="_gJBtVOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">logger</attribute>
    </edge>
    <edge id="_gJBtZuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gJBtVOiaEd6gMtZRCjS81g" target="_gJBtU-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gJBtaeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gJBtVOiaEd6gMtZRCjS81g" target="_gJBtVOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">instance</attribute>
    </edge>
    <edge id="_gJBtaeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gJBtVOiaEd6gMtZRCjS81g" target="_gJBtVOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gJBtbOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gJBtVOiaEd6gMtZRCjS81g" target="_gJBtVeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">expression</attribute>
    </edge>
    <edge id="_gJBtbOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gJBtVeiaEd6gMtZRCjS81g" target="_gJBtVOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gJCUbeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gJBtVuiaEd6gMtZRCjS81g" target="_gJBtVeiaEd6gMtZRCjS81g"/>
    <edge id="_gJCUbeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gJBtVeiaEd6gMtZRCjS81g" target="_gJBtVuiaEd6gMtZRCjS81g"/>
    <edge id="_gJCUbuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gJBtV-iaEd6gMtZRCjS81g" target="_gJBtVuiaEd6gMtZRCjS81g"/>
    <edge id="_gJCUbuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gJBtVuiaEd6gMtZRCjS81g" target="_gJBtV-iaEd6gMtZRCjS81g"/>
    <edge id="_gJC7cOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gJBtWOiaEd6gMtZRCjS81g" target="_gJBtVuiaEd6gMtZRCjS81g"/>
    <edge id="_gJC7cOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gJBtVuiaEd6gMtZRCjS81g" target="_gJBtWOiaEd6gMtZRCjS81g"/>
    <edge id="_gJC7ceiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gJBtWeiaEd6gMtZRCjS81g" target="_gJBtVeiaEd6gMtZRCjS81g"/>
    <edge id="_gJC7ceiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gJBtVeiaEd6gMtZRCjS81g" target="_gJBtWeiaEd6gMtZRCjS81g"/>
    <edge id="_gJC7cuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gJBtWuiaEd6gMtZRCjS81g" target="_gJBtWeiaEd6gMtZRCjS81g"/>
    <edge id="_gJC7cuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gJBtWeiaEd6gMtZRCjS81g" target="_gJBtWuiaEd6gMtZRCjS81g"/>
    <edge id="_gJC7c-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gJBtW-iaEd6gMtZRCjS81g" target="_gJBtWeiaEd6gMtZRCjS81g"/>
    <edge id="_gJC7c-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gJBtWeiaEd6gMtZRCjS81g" target="_gJBtW-iaEd6gMtZRCjS81g"/>
    <edge id="_gJC7dOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gJBtXOiaEd6gMtZRCjS81g" target="_gJBtVeiaEd6gMtZRCjS81g"/>
    <edge id="_gJC7dOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gJBtVeiaEd6gMtZRCjS81g" target="_gJBtXOiaEd6gMtZRCjS81g"/>
    <edge id="_gJC7deiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gJBtXeiaEd6gMtZRCjS81g" target="_gJBtXOiaEd6gMtZRCjS81g"/>
    <edge id="_gJC7deiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gJBtXOiaEd6gMtZRCjS81g" target="_gJBtXeiaEd6gMtZRCjS81g"/>
    <edge id="_gJC7duiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gJBtXuiaEd6gMtZRCjS81g" target="_gJBtXOiaEd6gMtZRCjS81g"/>
    <edge id="_gJC7duiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gJBtXOiaEd6gMtZRCjS81g" target="_gJBtXuiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
