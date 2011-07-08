<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_frfcwOiaEd6gMtZRCjS81g" projectName="PrimitiveTypes">
    <node className="Element" id="_frfcxuiaEd6gMtZRCjS81g">
      <attribute>location</attribute>
      <attribute>commentsBefore</attribute>
      <attribute>commentsAfter</attribute>
    </node>
    <node className="NamedElement" id="_frfcx-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="RuleSet" id="_frfcyOiaEd6gMtZRCjS81g"/>
    <node className="Rule" id="_frfcyeiaEd6gMtZRCjS81g"/>
    <node className="RuleAction" id="_frfcyuiaEd6gMtZRCjS81g"/>
    <node className="RuleCondition" id="_frfcy-iaEd6gMtZRCjS81g"/>
    <node className="Binding" id="_frfczOiaEd6gMtZRCjS81g"/>
    <node className="RuleVariable" id="_frfczeiaEd6gMtZRCjS81g"/>
    <node className="DeleteAction" id="_frfczuiaEd6gMtZRCjS81g"/>
    <node className="CreateAction" id="_frfcz-iaEd6gMtZRCjS81g"/>
    <node className="AssignAction" id="_frfc0OiaEd6gMtZRCjS81g"/>
    <node className="InvokeAction" id="_frfc0eiaEd6gMtZRCjS81g"/>
    <node className="PropertyCallExp" id="_frfc0uiaEd6gMtZRCjS81g"/>
    <node className="OclExpression" id="_frfc0-iaEd6gMtZRCjS81g"/>
    <node className="IteratorExp" id="_frfc1OiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="LoopExp" id="_frfc1eiaEd6gMtZRCjS81g"/>
    <node className="OperatorCallExp" id="_frfc1uiaEd6gMtZRCjS81g"/>
    <node className="OperationCallExp" id="_frfc1-iaEd6gMtZRCjS81g">
      <attribute>operationName</attribute>
      <attribute>signature</attribute>
    </node>
    <node className="CollectionOperationCallExp" id="_frfc2OiaEd6gMtZRCjS81g"/>
    <node className="StringExp" id="_frfc2eiaEd6gMtZRCjS81g">
      <attribute>stringSymbol</attribute>
    </node>
    <node className="BooleanExp" id="_frfc2uiaEd6gMtZRCjS81g">
      <attribute>booleanSymbol</attribute>
    </node>
    <node className="NumericExp" id="_frfc2-iaEd6gMtZRCjS81g"/>
    <node className="IntegerExp" id="_frgD0OiaEd6gMtZRCjS81g">
      <attribute>integerSymbol</attribute>
    </node>
    <node className="RealExp" id="_frgD0eiaEd6gMtZRCjS81g">
      <attribute>realSymbol</attribute>
    </node>
    <node className="PrimitiveExp" id="_frgD0uiaEd6gMtZRCjS81g"/>
    <node className="NavigationOrAttributeCallExp" id="_frgD0-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Iterator" id="_frgD1OiaEd6gMtZRCjS81g"/>
    <node className="VariableDeclaration" id="_frgD1eiaEd6gMtZRCjS81g">
      <attribute>varName</attribute>
    </node>
    <node className="VariableExp" id="_frgD1uiaEd6gMtZRCjS81g"/>
    <node className="TypeExp" id="_frgD1-iaEd6gMtZRCjS81g"/>
    <node className="AllInstanceExp" id="_frgD2OiaEd6gMtZRCjS81g"/>
    <node className="OclType" id="_frgD2eiaEd6gMtZRCjS81g"/>
    <node className="StringType" id="_frgD2uiaEd6gMtZRCjS81g"/>
    <node className="Primitive" id="_frgD2-iaEd6gMtZRCjS81g"/>
    <node className="RealType" id="_frgD3OiaEd6gMtZRCjS81g"/>
    <node className="BooleanType" id="_frgD3eiaEd6gMtZRCjS81g"/>
    <node className="NumericType" id="_frgD3uiaEd6gMtZRCjS81g"/>
    <node className="IntegerType" id="_frgD3-iaEd6gMtZRCjS81g"/>
    <edge id="_frgD7eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_frfcyOiaEd6gMtZRCjS81g" target="_frfcyeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">rules</attribute>
    </edge>
    <edge id="_frgD7eiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_frfcyeiaEd6gMtZRCjS81g" target="_frfcyOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_frgD8OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_frfcyeiaEd6gMtZRCjS81g" target="_frfczOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">binding</attribute>
    </edge>
    <edge id="_frgD8OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_frfczOiaEd6gMtZRCjS81g" target="_frfcyeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_frgD8-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_frfcyeiaEd6gMtZRCjS81g" target="_frfcy-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">condition</attribute>
    </edge>
    <edge id="_frgD8-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_frfcy-iaEd6gMtZRCjS81g" target="_frfcyeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_frgD9uiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_frfcyeiaEd6gMtZRCjS81g" target="_frfcyuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">actions</attribute>
    </edge>
    <edge id="_frgD9uiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_frfcyuiaEd6gMtZRCjS81g" target="_frfcyeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_frgD-eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_frfcy-iaEd6gMtZRCjS81g" target="_frfc0-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">conditionExp</attribute>
    </edge>
    <edge id="_frgD-eiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_frfc0-iaEd6gMtZRCjS81g" target="_frfcy-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_frgD_OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_frfczOiaEd6gMtZRCjS81g" target="_frfczeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">ruleVariable</attribute>
    </edge>
    <edge id="_frgD_OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_frfczeiaEd6gMtZRCjS81g" target="_frfczOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_frgD_-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_frfczeiaEd6gMtZRCjS81g" target="_frfc0-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">filter</attribute>
    </edge>
    <edge id="_frgD_-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_frfc0-iaEd6gMtZRCjS81g" target="_frfczeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_frgEAuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_frfczuiaEd6gMtZRCjS81g" target="_frfc0-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">objValue</attribute>
    </edge>
    <edge id="_frgEAuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_frfc0-iaEd6gMtZRCjS81g" target="_frfczuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_frgEBeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_frfcz-iaEd6gMtZRCjS81g" target="_frfc0-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">insertArguments</attribute>
    </edge>
    <edge id="_frgEBeiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_frfc0-iaEd6gMtZRCjS81g" target="_frfcz-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_frgq4eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_frfc0OiaEd6gMtZRCjS81g" target="_frfc0-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">objValue</attribute>
    </edge>
    <edge id="_frgq4eiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_frfc0-iaEd6gMtZRCjS81g" target="_frfc0OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_frgq5OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_frfc0OiaEd6gMtZRCjS81g" target="_frfc0-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">aValue</attribute>
    </edge>
    <edge id="_frgq5OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_frfc0-iaEd6gMtZRCjS81g" target="_frfc0OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_frgq5-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_frfc0eiaEd6gMtZRCjS81g" target="_frfc0-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">invocation</attribute>
    </edge>
    <edge id="_frgq5-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_frfc0-iaEd6gMtZRCjS81g" target="_frfc0eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_frgq6uiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_frfc0uiaEd6gMtZRCjS81g" target="_frfc0-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">source</attribute>
    </edge>
    <edge id="_frgq6uiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_frfc0-iaEd6gMtZRCjS81g" target="_frfc0uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_frgq7eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_frfc0-iaEd6gMtZRCjS81g" target="_frgD2eiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">type</attribute>
    </edge>
    <edge id="_frgq7eiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_frgD2eiaEd6gMtZRCjS81g" target="_frfc0-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_frgq8OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_frfc1eiaEd6gMtZRCjS81g" target="_frfc0-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">body</attribute>
    </edge>
    <edge id="_frgq8OiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_frfc0-iaEd6gMtZRCjS81g" target="_frfc1eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_frgq8-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_frfc1eiaEd6gMtZRCjS81g" target="_frgD1OiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">iterators</attribute>
    </edge>
    <edge id="_frgq8-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_frgD1OiaEd6gMtZRCjS81g" target="_frfc1eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_frgq9uiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_frfc1-iaEd6gMtZRCjS81g" target="_frfc0-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">arguments</attribute>
    </edge>
    <edge id="_frgq9uiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_frfc0-iaEd6gMtZRCjS81g" target="_frfc1-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_frgq-eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_frgD1eiaEd6gMtZRCjS81g" target="_frgD2eiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">type</attribute>
    </edge>
    <edge id="_frgq-eiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_frgD2eiaEd6gMtZRCjS81g" target="_frgD1eiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_frgq_-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_frgD1-iaEd6gMtZRCjS81g" target="_frgD2eiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">referredType</attribute>
    </edge>
    <edge id="_frgq_-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_frgD2eiaEd6gMtZRCjS81g" target="_frgD1-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_frgrAuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_frgD2OiaEd6gMtZRCjS81g" target="_frgD2eiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">sourceType</attribute>
    </edge>
    <edge id="_frgrAuiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_frgD2eiaEd6gMtZRCjS81g" target="_frgD2OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_frgq_OiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_frgD1eiaEd6gMtZRCjS81g" target="_frgD1uiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">variableExp</attribute>
    </edge>
    <edge id="_frgq_OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_frgD1uiaEd6gMtZRCjS81g" target="_frgD1eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_frhR8OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_frfcx-iaEd6gMtZRCjS81g" target="_frfcxuiaEd6gMtZRCjS81g"/>
    <edge id="_frhR8OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_frfcxuiaEd6gMtZRCjS81g" target="_frfcx-iaEd6gMtZRCjS81g"/>
    <edge id="_frh5AOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_frfcyOiaEd6gMtZRCjS81g" target="_frfcxuiaEd6gMtZRCjS81g"/>
    <edge id="_frh5AOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_frfcxuiaEd6gMtZRCjS81g" target="_frfcyOiaEd6gMtZRCjS81g"/>
    <edge id="_frh5AeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_frfcyeiaEd6gMtZRCjS81g" target="_frfcx-iaEd6gMtZRCjS81g"/>
    <edge id="_frh5AeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_frfcx-iaEd6gMtZRCjS81g" target="_frfcyeiaEd6gMtZRCjS81g"/>
    <edge id="_frh5AuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_frfcyuiaEd6gMtZRCjS81g" target="_frfcxuiaEd6gMtZRCjS81g"/>
    <edge id="_frh5AuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_frfcxuiaEd6gMtZRCjS81g" target="_frfcyuiaEd6gMtZRCjS81g"/>
    <edge id="_frh5A-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_frfcy-iaEd6gMtZRCjS81g" target="_frfcxuiaEd6gMtZRCjS81g"/>
    <edge id="_frh5A-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_frfcxuiaEd6gMtZRCjS81g" target="_frfcy-iaEd6gMtZRCjS81g"/>
    <edge id="_frh5BOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_frfczOiaEd6gMtZRCjS81g" target="_frfcxuiaEd6gMtZRCjS81g"/>
    <edge id="_frh5BOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_frfcxuiaEd6gMtZRCjS81g" target="_frfczOiaEd6gMtZRCjS81g"/>
    <edge id="_frh5BeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_frfczeiaEd6gMtZRCjS81g" target="_frgD1eiaEd6gMtZRCjS81g"/>
    <edge id="_frh5BeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_frgD1eiaEd6gMtZRCjS81g" target="_frfczeiaEd6gMtZRCjS81g"/>
    <edge id="_frh5BuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_frfczuiaEd6gMtZRCjS81g" target="_frfcyuiaEd6gMtZRCjS81g"/>
    <edge id="_frh5BuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_frfcyuiaEd6gMtZRCjS81g" target="_frfczuiaEd6gMtZRCjS81g"/>
    <edge id="_frh5B-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_frfcz-iaEd6gMtZRCjS81g" target="_frfcyuiaEd6gMtZRCjS81g"/>
    <edge id="_frh5B-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_frfcyuiaEd6gMtZRCjS81g" target="_frfcz-iaEd6gMtZRCjS81g"/>
    <edge id="_frh5COiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_frfcz-iaEd6gMtZRCjS81g" target="_frgD1eiaEd6gMtZRCjS81g"/>
    <edge id="_frh5COiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_frgD1eiaEd6gMtZRCjS81g" target="_frfcz-iaEd6gMtZRCjS81g"/>
    <edge id="_frh5CeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_frfc0OiaEd6gMtZRCjS81g" target="_frfcyuiaEd6gMtZRCjS81g"/>
    <edge id="_frh5CeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_frfcyuiaEd6gMtZRCjS81g" target="_frfc0OiaEd6gMtZRCjS81g"/>
    <edge id="_frh5CuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_frfc0eiaEd6gMtZRCjS81g" target="_frfcyuiaEd6gMtZRCjS81g"/>
    <edge id="_frh5CuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_frfcyuiaEd6gMtZRCjS81g" target="_frfc0eiaEd6gMtZRCjS81g"/>
    <edge id="_frh5C-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_frfc0uiaEd6gMtZRCjS81g" target="_frfc0-iaEd6gMtZRCjS81g"/>
    <edge id="_frh5C-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_frfc0-iaEd6gMtZRCjS81g" target="_frfc0uiaEd6gMtZRCjS81g"/>
    <edge id="_frh5DOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_frfc0-iaEd6gMtZRCjS81g" target="_frfcxuiaEd6gMtZRCjS81g"/>
    <edge id="_frh5DOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_frfcxuiaEd6gMtZRCjS81g" target="_frfc0-iaEd6gMtZRCjS81g"/>
    <edge id="_frigEOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_frfc1OiaEd6gMtZRCjS81g" target="_frfc1eiaEd6gMtZRCjS81g"/>
    <edge id="_frigEOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_frfc1eiaEd6gMtZRCjS81g" target="_frfc1OiaEd6gMtZRCjS81g"/>
    <edge id="_frigEeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_frfc1eiaEd6gMtZRCjS81g" target="_frfc0uiaEd6gMtZRCjS81g"/>
    <edge id="_frigEeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_frfc0uiaEd6gMtZRCjS81g" target="_frfc1eiaEd6gMtZRCjS81g"/>
    <edge id="_frigEuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_frfc1uiaEd6gMtZRCjS81g" target="_frfc1-iaEd6gMtZRCjS81g"/>
    <edge id="_frigEuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_frfc1-iaEd6gMtZRCjS81g" target="_frfc1uiaEd6gMtZRCjS81g"/>
    <edge id="_frigE-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_frfc1-iaEd6gMtZRCjS81g" target="_frfc0uiaEd6gMtZRCjS81g"/>
    <edge id="_frigE-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_frfc0uiaEd6gMtZRCjS81g" target="_frfc1-iaEd6gMtZRCjS81g"/>
    <edge id="_frigFOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_frfc2OiaEd6gMtZRCjS81g" target="_frfc1-iaEd6gMtZRCjS81g"/>
    <edge id="_frigFOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_frfc1-iaEd6gMtZRCjS81g" target="_frfc2OiaEd6gMtZRCjS81g"/>
    <edge id="_frigFeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_frfc2eiaEd6gMtZRCjS81g" target="_frgD0uiaEd6gMtZRCjS81g"/>
    <edge id="_frigFeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_frgD0uiaEd6gMtZRCjS81g" target="_frfc2eiaEd6gMtZRCjS81g"/>
    <edge id="_frigFuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_frfc2uiaEd6gMtZRCjS81g" target="_frgD0uiaEd6gMtZRCjS81g"/>
    <edge id="_frigFuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_frgD0uiaEd6gMtZRCjS81g" target="_frfc2uiaEd6gMtZRCjS81g"/>
    <edge id="_frigF-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_frfc2-iaEd6gMtZRCjS81g" target="_frgD0uiaEd6gMtZRCjS81g"/>
    <edge id="_frigF-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_frgD0uiaEd6gMtZRCjS81g" target="_frfc2-iaEd6gMtZRCjS81g"/>
    <edge id="_frigGOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_frgD0OiaEd6gMtZRCjS81g" target="_frfc2-iaEd6gMtZRCjS81g"/>
    <edge id="_frigGOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_frfc2-iaEd6gMtZRCjS81g" target="_frgD0OiaEd6gMtZRCjS81g"/>
    <edge id="_frigGeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_frgD0eiaEd6gMtZRCjS81g" target="_frfc2-iaEd6gMtZRCjS81g"/>
    <edge id="_frigGeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_frfc2-iaEd6gMtZRCjS81g" target="_frgD0eiaEd6gMtZRCjS81g"/>
    <edge id="_frigGuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_frgD0uiaEd6gMtZRCjS81g" target="_frfc0-iaEd6gMtZRCjS81g"/>
    <edge id="_frigGuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_frfc0-iaEd6gMtZRCjS81g" target="_frgD0uiaEd6gMtZRCjS81g"/>
    <edge id="_frigG-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_frgD0-iaEd6gMtZRCjS81g" target="_frfc0uiaEd6gMtZRCjS81g"/>
    <edge id="_frigG-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_frfc0uiaEd6gMtZRCjS81g" target="_frgD0-iaEd6gMtZRCjS81g"/>
    <edge id="_frigHOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_frgD1OiaEd6gMtZRCjS81g" target="_frgD1eiaEd6gMtZRCjS81g"/>
    <edge id="_frigHOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_frgD1eiaEd6gMtZRCjS81g" target="_frgD1OiaEd6gMtZRCjS81g"/>
    <edge id="_frigHeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_frgD1eiaEd6gMtZRCjS81g" target="_frfcxuiaEd6gMtZRCjS81g"/>
    <edge id="_frigHeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_frfcxuiaEd6gMtZRCjS81g" target="_frgD1eiaEd6gMtZRCjS81g"/>
    <edge id="_frigHuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_frgD1uiaEd6gMtZRCjS81g" target="_frfc0-iaEd6gMtZRCjS81g"/>
    <edge id="_frigHuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_frfc0-iaEd6gMtZRCjS81g" target="_frgD1uiaEd6gMtZRCjS81g"/>
    <edge id="_frjHIOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_frgD1-iaEd6gMtZRCjS81g" target="_frfc0-iaEd6gMtZRCjS81g"/>
    <edge id="_frjHIOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_frfc0-iaEd6gMtZRCjS81g" target="_frgD1-iaEd6gMtZRCjS81g"/>
    <edge id="_frjHIeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_frgD2OiaEd6gMtZRCjS81g" target="_frfc0-iaEd6gMtZRCjS81g"/>
    <edge id="_frjHIeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_frfc0-iaEd6gMtZRCjS81g" target="_frgD2OiaEd6gMtZRCjS81g"/>
    <edge id="_frjHIuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_frgD2eiaEd6gMtZRCjS81g" target="_frfcx-iaEd6gMtZRCjS81g"/>
    <edge id="_frjHIuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_frfcx-iaEd6gMtZRCjS81g" target="_frgD2eiaEd6gMtZRCjS81g"/>
    <edge id="_frjHI-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_frgD2uiaEd6gMtZRCjS81g" target="_frgD2-iaEd6gMtZRCjS81g"/>
    <edge id="_frjHI-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_frgD2-iaEd6gMtZRCjS81g" target="_frgD2uiaEd6gMtZRCjS81g"/>
    <edge id="_frjHJOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_frgD2-iaEd6gMtZRCjS81g" target="_frgD2eiaEd6gMtZRCjS81g"/>
    <edge id="_frjHJOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_frgD2eiaEd6gMtZRCjS81g" target="_frgD2-iaEd6gMtZRCjS81g"/>
    <edge id="_frjHJeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_frgD3OiaEd6gMtZRCjS81g" target="_frgD3uiaEd6gMtZRCjS81g"/>
    <edge id="_frjHJeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_frgD3uiaEd6gMtZRCjS81g" target="_frgD3OiaEd6gMtZRCjS81g"/>
    <edge id="_frjHJuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_frgD3eiaEd6gMtZRCjS81g" target="_frgD2-iaEd6gMtZRCjS81g"/>
    <edge id="_frjHJuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_frgD2-iaEd6gMtZRCjS81g" target="_frgD3eiaEd6gMtZRCjS81g"/>
    <edge id="_frjHJ-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_frgD3uiaEd6gMtZRCjS81g" target="_frgD2-iaEd6gMtZRCjS81g"/>
    <edge id="_frjHJ-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_frgD2-iaEd6gMtZRCjS81g" target="_frgD3uiaEd6gMtZRCjS81g"/>
    <edge id="_frjHKOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_frgD3-iaEd6gMtZRCjS81g" target="_frgD3uiaEd6gMtZRCjS81g"/>
    <edge id="_frjHKOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_frgD3uiaEd6gMtZRCjS81g" target="_frgD3-iaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
