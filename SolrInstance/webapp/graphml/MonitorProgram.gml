<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_fTrZsOiaEd6gMtZRCjS81g" projectName="MonitorProgram">
    <node className="LocatedElement" id="_fTrZs-iaEd6gMtZRCjS81g">
      <attribute>location</attribute>
    </node>
    <node className="NamedElement" id="_fTrZtOiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Structure" id="_fTrZteiaEd6gMtZRCjS81g"/>
    <node className="ProcContainerElement" id="_fTrZtuiaEd6gMtZRCjS81g"/>
    <node className="Program" id="_fTrZt-iaEd6gMtZRCjS81g"/>
    <node className="Monitor" id="_fTrZuOiaEd6gMtZRCjS81g"/>
    <node className="Procedure" id="_fTrZueiaEd6gMtZRCjS81g"/>
    <node className="VariableDeclaration" id="_fTrZuuiaEd6gMtZRCjS81g"/>
    <node className="Parameter" id="_fTrZu-iaEd6gMtZRCjS81g">
      <attribute>direction</attribute>
    </node>
    <node className="Type" id="_fTrZvOiaEd6gMtZRCjS81g"/>
    <node className="Expression" id="_fTrZveiaEd6gMtZRCjS81g"/>
    <node className="VariableExp" id="_fTrZvuiaEd6gMtZRCjS81g"/>
    <node className="PropertyCallExp" id="_fTrZv-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="OperatorCallExp" id="_fTrZwOiaEd6gMtZRCjS81g"/>
    <node className="AttributeCallExp" id="_fTrZweiaEd6gMtZRCjS81g"/>
    <node className="ProcedureCallExp" id="_fTrZwuiaEd6gMtZRCjS81g"/>
    <node className="LiteralExp" id="_fTrZw-iaEd6gMtZRCjS81g"/>
    <node className="BooleanExp" id="_fTrZxOiaEd6gMtZRCjS81g">
      <attribute>symbol</attribute>
    </node>
    <node className="IntegerExp" id="_fTrZxeiaEd6gMtZRCjS81g">
      <attribute>symbol</attribute>
    </node>
    <node className="Statement" id="_fTrZxuiaEd6gMtZRCjS81g"/>
    <node className="AssignmentStat" id="_fTrZx-iaEd6gMtZRCjS81g"/>
    <node className="ConditionalStat" id="_fTrZyOiaEd6gMtZRCjS81g"/>
    <node className="WhileStat" id="_fTrZyeiaEd6gMtZRCjS81g"/>
    <node className="ExpressionStat" id="_fTrZyuiaEd6gMtZRCjS81g"/>
    <edge id="_fTrZ0eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fTrZteiaEd6gMtZRCjS81g" target="_fTrZuuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">variables</attribute>
    </edge>
    <edge id="_fTrZ0eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fTrZuuiaEd6gMtZRCjS81g" target="_fTrZteiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fTrZ1OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fTrZtuiaEd6gMtZRCjS81g" target="_fTrZueiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">procedures</attribute>
    </edge>
    <edge id="_fTrZ1OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fTrZueiaEd6gMtZRCjS81g" target="_fTrZtuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fTrZ1-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fTrZt-iaEd6gMtZRCjS81g" target="_fTrZuOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">monitors</attribute>
    </edge>
    <edge id="_fTrZ1-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fTrZuOiaEd6gMtZRCjS81g" target="_fTrZt-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fTrZ2uiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fTrZueiaEd6gMtZRCjS81g" target="_fTrZu-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">parameters</attribute>
    </edge>
    <edge id="_fTrZ2uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fTrZu-iaEd6gMtZRCjS81g" target="_fTrZueiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fTrZ3eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fTrZueiaEd6gMtZRCjS81g" target="_fTrZxuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">statements</attribute>
    </edge>
    <edge id="_fTrZ3eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fTrZxuiaEd6gMtZRCjS81g" target="_fTrZueiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fTsAxOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fTrZuuiaEd6gMtZRCjS81g" target="_fTrZveiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">initialValue</attribute>
    </edge>
    <edge id="_fTsAxOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fTrZveiaEd6gMtZRCjS81g" target="_fTrZuuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fTsAyuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fTrZv-iaEd6gMtZRCjS81g" target="_fTrZveiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">source</attribute>
    </edge>
    <edge id="_fTsAyuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fTrZveiaEd6gMtZRCjS81g" target="_fTrZv-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fTsAzeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fTrZwOiaEd6gMtZRCjS81g" target="_fTrZveiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">right</attribute>
    </edge>
    <edge id="_fTsAzeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fTrZveiaEd6gMtZRCjS81g" target="_fTrZwOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fTsA0OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fTrZwuiaEd6gMtZRCjS81g" target="_fTrZveiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">arguments</attribute>
    </edge>
    <edge id="_fTsA0OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fTrZveiaEd6gMtZRCjS81g" target="_fTrZwuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fTsA0-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fTrZx-iaEd6gMtZRCjS81g" target="_fTrZvuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">target</attribute>
    </edge>
    <edge id="_fTsA0-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fTrZvuiaEd6gMtZRCjS81g" target="_fTrZx-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fTsA1uiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fTrZx-iaEd6gMtZRCjS81g" target="_fTrZveiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">value</attribute>
    </edge>
    <edge id="_fTsA1uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fTrZveiaEd6gMtZRCjS81g" target="_fTrZx-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fTsA2eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fTrZyOiaEd6gMtZRCjS81g" target="_fTrZveiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">condition</attribute>
    </edge>
    <edge id="_fTsA2eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fTrZveiaEd6gMtZRCjS81g" target="_fTrZyOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fTsA3OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fTrZyOiaEd6gMtZRCjS81g" target="_fTrZxuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">thenStats</attribute>
    </edge>
    <edge id="_fTsA3OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fTrZxuiaEd6gMtZRCjS81g" target="_fTrZyOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fTsA3-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fTrZyOiaEd6gMtZRCjS81g" target="_fTrZxuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">elseStats</attribute>
    </edge>
    <edge id="_fTsA3-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fTrZxuiaEd6gMtZRCjS81g" target="_fTrZyOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fTsA4uiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fTrZyeiaEd6gMtZRCjS81g" target="_fTrZveiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">condition</attribute>
    </edge>
    <edge id="_fTsA4uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fTrZveiaEd6gMtZRCjS81g" target="_fTrZyeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fTsA5eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fTrZyeiaEd6gMtZRCjS81g" target="_fTrZxuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">doStats</attribute>
    </edge>
    <edge id="_fTsA5eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fTrZxuiaEd6gMtZRCjS81g" target="_fTrZyeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fTsA6OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fTrZyuiaEd6gMtZRCjS81g" target="_fTrZveiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">expression</attribute>
    </edge>
    <edge id="_fTsA6OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fTrZveiaEd6gMtZRCjS81g" target="_fTrZyuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fTsAweiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fTrZuuiaEd6gMtZRCjS81g" target="_fTrZvOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">type</attribute>
    </edge>
    <edge id="_fTsAweiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fTrZvOiaEd6gMtZRCjS81g" target="_fTrZuuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fTsAx-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fTrZvuiaEd6gMtZRCjS81g" target="_fTrZuuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">declaration</attribute>
    </edge>
    <edge id="_fTsAx-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fTrZuuiaEd6gMtZRCjS81g" target="_fTrZvuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fTsn1OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fTrZtOiaEd6gMtZRCjS81g" target="_fTrZs-iaEd6gMtZRCjS81g"/>
    <edge id="_fTsn1OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fTrZs-iaEd6gMtZRCjS81g" target="_fTrZtOiaEd6gMtZRCjS81g"/>
    <edge id="_fTsn1eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fTrZteiaEd6gMtZRCjS81g" target="_fTrZtOiaEd6gMtZRCjS81g"/>
    <edge id="_fTsn1eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fTrZtOiaEd6gMtZRCjS81g" target="_fTrZteiaEd6gMtZRCjS81g"/>
    <edge id="_fTtO4OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fTrZtuiaEd6gMtZRCjS81g" target="_fTrZteiaEd6gMtZRCjS81g"/>
    <edge id="_fTtO4OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fTrZteiaEd6gMtZRCjS81g" target="_fTrZtuiaEd6gMtZRCjS81g"/>
    <edge id="_fTtO4eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fTrZt-iaEd6gMtZRCjS81g" target="_fTrZtuiaEd6gMtZRCjS81g"/>
    <edge id="_fTtO4eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fTrZtuiaEd6gMtZRCjS81g" target="_fTrZt-iaEd6gMtZRCjS81g"/>
    <edge id="_fTtO4uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fTrZuOiaEd6gMtZRCjS81g" target="_fTrZtuiaEd6gMtZRCjS81g"/>
    <edge id="_fTtO4uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fTrZtuiaEd6gMtZRCjS81g" target="_fTrZuOiaEd6gMtZRCjS81g"/>
    <edge id="_fTtO4-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fTrZueiaEd6gMtZRCjS81g" target="_fTrZteiaEd6gMtZRCjS81g"/>
    <edge id="_fTtO4-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fTrZteiaEd6gMtZRCjS81g" target="_fTrZueiaEd6gMtZRCjS81g"/>
    <edge id="_fTtO5OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fTrZuuiaEd6gMtZRCjS81g" target="_fTrZtOiaEd6gMtZRCjS81g"/>
    <edge id="_fTtO5OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fTrZtOiaEd6gMtZRCjS81g" target="_fTrZuuiaEd6gMtZRCjS81g"/>
    <edge id="_fTtO5eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fTrZu-iaEd6gMtZRCjS81g" target="_fTrZuuiaEd6gMtZRCjS81g"/>
    <edge id="_fTtO5eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fTrZuuiaEd6gMtZRCjS81g" target="_fTrZu-iaEd6gMtZRCjS81g"/>
    <edge id="_fTtO5uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fTrZvOiaEd6gMtZRCjS81g" target="_fTrZtOiaEd6gMtZRCjS81g"/>
    <edge id="_fTtO5uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fTrZtOiaEd6gMtZRCjS81g" target="_fTrZvOiaEd6gMtZRCjS81g"/>
    <edge id="_fTtO5-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fTrZveiaEd6gMtZRCjS81g" target="_fTrZs-iaEd6gMtZRCjS81g"/>
    <edge id="_fTtO5-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fTrZs-iaEd6gMtZRCjS81g" target="_fTrZveiaEd6gMtZRCjS81g"/>
    <edge id="_fTtO6OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fTrZvuiaEd6gMtZRCjS81g" target="_fTrZveiaEd6gMtZRCjS81g"/>
    <edge id="_fTtO6OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fTrZveiaEd6gMtZRCjS81g" target="_fTrZvuiaEd6gMtZRCjS81g"/>
    <edge id="_fTtO6eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fTrZv-iaEd6gMtZRCjS81g" target="_fTrZveiaEd6gMtZRCjS81g"/>
    <edge id="_fTtO6eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fTrZveiaEd6gMtZRCjS81g" target="_fTrZv-iaEd6gMtZRCjS81g"/>
    <edge id="_fTtO6uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fTrZwOiaEd6gMtZRCjS81g" target="_fTrZv-iaEd6gMtZRCjS81g"/>
    <edge id="_fTtO6uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fTrZv-iaEd6gMtZRCjS81g" target="_fTrZwOiaEd6gMtZRCjS81g"/>
    <edge id="_fTtO6-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fTrZweiaEd6gMtZRCjS81g" target="_fTrZv-iaEd6gMtZRCjS81g"/>
    <edge id="_fTtO6-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fTrZv-iaEd6gMtZRCjS81g" target="_fTrZweiaEd6gMtZRCjS81g"/>
    <edge id="_fTtO7OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fTrZwuiaEd6gMtZRCjS81g" target="_fTrZv-iaEd6gMtZRCjS81g"/>
    <edge id="_fTtO7OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fTrZv-iaEd6gMtZRCjS81g" target="_fTrZwuiaEd6gMtZRCjS81g"/>
    <edge id="_fTtO7eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fTrZw-iaEd6gMtZRCjS81g" target="_fTrZveiaEd6gMtZRCjS81g"/>
    <edge id="_fTtO7eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fTrZveiaEd6gMtZRCjS81g" target="_fTrZw-iaEd6gMtZRCjS81g"/>
    <edge id="_fTtO7uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fTrZxOiaEd6gMtZRCjS81g" target="_fTrZw-iaEd6gMtZRCjS81g"/>
    <edge id="_fTtO7uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fTrZw-iaEd6gMtZRCjS81g" target="_fTrZxOiaEd6gMtZRCjS81g"/>
    <edge id="_fTt18OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fTrZxeiaEd6gMtZRCjS81g" target="_fTrZw-iaEd6gMtZRCjS81g"/>
    <edge id="_fTt18OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fTrZw-iaEd6gMtZRCjS81g" target="_fTrZxeiaEd6gMtZRCjS81g"/>
    <edge id="_fTt18eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fTrZxuiaEd6gMtZRCjS81g" target="_fTrZs-iaEd6gMtZRCjS81g"/>
    <edge id="_fTt18eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fTrZs-iaEd6gMtZRCjS81g" target="_fTrZxuiaEd6gMtZRCjS81g"/>
    <edge id="_fTt18uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fTrZx-iaEd6gMtZRCjS81g" target="_fTrZxuiaEd6gMtZRCjS81g"/>
    <edge id="_fTt18uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fTrZxuiaEd6gMtZRCjS81g" target="_fTrZx-iaEd6gMtZRCjS81g"/>
    <edge id="_fTt18-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fTrZyOiaEd6gMtZRCjS81g" target="_fTrZxuiaEd6gMtZRCjS81g"/>
    <edge id="_fTt18-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fTrZxuiaEd6gMtZRCjS81g" target="_fTrZyOiaEd6gMtZRCjS81g"/>
    <edge id="_fTt19OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fTrZyeiaEd6gMtZRCjS81g" target="_fTrZxuiaEd6gMtZRCjS81g"/>
    <edge id="_fTt19OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fTrZxuiaEd6gMtZRCjS81g" target="_fTrZyeiaEd6gMtZRCjS81g"/>
    <edge id="_fTt19eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fTrZyuiaEd6gMtZRCjS81g" target="_fTrZxuiaEd6gMtZRCjS81g"/>
    <edge id="_fTt19eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fTrZxuiaEd6gMtZRCjS81g" target="_fTrZyuiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
