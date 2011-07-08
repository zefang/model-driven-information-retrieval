<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_fstkwOiaEd6gMtZRCjS81g" projectName="Pascal">
    <node className="Program" id="_fsuL0OiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Variable" id="_fsuL0eiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Type" id="_fsuL0uiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Parameter" id="_fsuL0-iaEd6gMtZRCjS81g"/>
    <node className="Instruction" id="_fsuL1OiaEd6gMtZRCjS81g"/>
    <node className="Calculation" id="_fsuL1eiaEd6gMtZRCjS81g"/>
    <node className="Control" id="_fsuL1uiaEd6gMtZRCjS81g"/>
    <node className="Assignment" id="_fsuL1-iaEd6gMtZRCjS81g"/>
    <node className="Block" id="_fsuL2OiaEd6gMtZRCjS81g"/>
    <node className="Conditional" id="_fsuL2eiaEd6gMtZRCjS81g"/>
    <node className="Loop" id="_fsuL2uiaEd6gMtZRCjS81g"/>
    <node className="Procedure" id="_fsuL2-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Function" id="_fsuL3OiaEd6gMtZRCjS81g"/>
    <node className="For" id="_fsuL3eiaEd6gMtZRCjS81g"/>
    <node className="While" id="_fsuL3uiaEd6gMtZRCjS81g"/>
    <node className="Repeat" id="_fsuL3-iaEd6gMtZRCjS81g"/>
    <edge id="_fsuL5OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fsuL0OiaEd6gMtZRCjS81g" target="_fsuL0eiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">variables</attribute>
    </edge>
    <edge id="_fsuL5OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fsuL0eiaEd6gMtZRCjS81g" target="_fsuL0OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fsuL5-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fsuL0OiaEd6gMtZRCjS81g" target="_fsuL0uiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">types</attribute>
    </edge>
    <edge id="_fsuL5-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fsuL0uiaEd6gMtZRCjS81g" target="_fsuL0OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fsuL6uiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fsuL0OiaEd6gMtZRCjS81g" target="_fsuL2-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">procedures</attribute>
    </edge>
    <edge id="_fsuL6uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fsuL2-iaEd6gMtZRCjS81g" target="_fsuL0OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fsuL8OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fsuL2OiaEd6gMtZRCjS81g" target="_fsuL1OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">instructions</attribute>
    </edge>
    <edge id="_fsuL8OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fsuL1OiaEd6gMtZRCjS81g" target="_fsuL2OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fsuL8-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fsuL2eiaEd6gMtZRCjS81g" target="_fsuL2OiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="2">blocks</attribute>
    </edge>
    <edge id="_fsuL8-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fsuL2OiaEd6gMtZRCjS81g" target="_fsuL2eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fsuL9uiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fsuL2uiaEd6gMtZRCjS81g" target="_fsuL2OiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">block_loop</attribute>
    </edge>
    <edge id="_fsuL9uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fsuL2OiaEd6gMtZRCjS81g" target="_fsuL2uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fsuL-eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fsuL2-iaEd6gMtZRCjS81g" target="_fsuL0eiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">variables</attribute>
    </edge>
    <edge id="_fsuL-eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fsuL0eiaEd6gMtZRCjS81g" target="_fsuL2-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fsuL_OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fsuL2-iaEd6gMtZRCjS81g" target="_fsuL0-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">parameters</attribute>
    </edge>
    <edge id="_fsuL_OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fsuL0-iaEd6gMtZRCjS81g" target="_fsuL2-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fsuL_-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fsuL2-iaEd6gMtZRCjS81g" target="_fsuL2OiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">block_procedure</attribute>
    </edge>
    <edge id="_fsuL_-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fsuL2OiaEd6gMtZRCjS81g" target="_fsuL2-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fsuL7eiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fsuL0eiaEd6gMtZRCjS81g" target="_fsuL0uiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">type</attribute>
    </edge>
    <edge id="_fsuL7eiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_fsuL0uiaEd6gMtZRCjS81g" target="_fsuL0eiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_fsuMAuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fsuL3OiaEd6gMtZRCjS81g" target="_fsuL0uiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">returnType</attribute>
    </edge>
    <edge id="_fsuMAuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fsuL0uiaEd6gMtZRCjS81g" target="_fsuL3OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fsuy4-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fsuL0-iaEd6gMtZRCjS81g" target="_fsuL0eiaEd6gMtZRCjS81g"/>
    <edge id="_fsuy4-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fsuL0eiaEd6gMtZRCjS81g" target="_fsuL0-iaEd6gMtZRCjS81g"/>
    <edge id="_fsuy5OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fsuL1eiaEd6gMtZRCjS81g" target="_fsuL1OiaEd6gMtZRCjS81g"/>
    <edge id="_fsuy5OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fsuL1OiaEd6gMtZRCjS81g" target="_fsuL1eiaEd6gMtZRCjS81g"/>
    <edge id="_fsuy5eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fsuL1uiaEd6gMtZRCjS81g" target="_fsuL1OiaEd6gMtZRCjS81g"/>
    <edge id="_fsuy5eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fsuL1OiaEd6gMtZRCjS81g" target="_fsuL1uiaEd6gMtZRCjS81g"/>
    <edge id="_fsvZ8OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fsuL1-iaEd6gMtZRCjS81g" target="_fsuL1OiaEd6gMtZRCjS81g"/>
    <edge id="_fsvZ8OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fsuL1OiaEd6gMtZRCjS81g" target="_fsuL1-iaEd6gMtZRCjS81g"/>
    <edge id="_fsvZ8eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fsuL2OiaEd6gMtZRCjS81g" target="_fsuL1OiaEd6gMtZRCjS81g"/>
    <edge id="_fsvZ8eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fsuL1OiaEd6gMtZRCjS81g" target="_fsuL2OiaEd6gMtZRCjS81g"/>
    <edge id="_fsvZ8uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fsuL2eiaEd6gMtZRCjS81g" target="_fsuL1uiaEd6gMtZRCjS81g"/>
    <edge id="_fsvZ8uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fsuL1uiaEd6gMtZRCjS81g" target="_fsuL2eiaEd6gMtZRCjS81g"/>
    <edge id="_fsvZ8-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fsuL2uiaEd6gMtZRCjS81g" target="_fsuL1uiaEd6gMtZRCjS81g"/>
    <edge id="_fsvZ8-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fsuL1uiaEd6gMtZRCjS81g" target="_fsuL2uiaEd6gMtZRCjS81g"/>
    <edge id="_fsvZ9OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fsuL2-iaEd6gMtZRCjS81g" target="_fsuL1uiaEd6gMtZRCjS81g"/>
    <edge id="_fsvZ9OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fsuL1uiaEd6gMtZRCjS81g" target="_fsuL2-iaEd6gMtZRCjS81g"/>
    <edge id="_fsvZ9eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fsuL3OiaEd6gMtZRCjS81g" target="_fsuL2-iaEd6gMtZRCjS81g"/>
    <edge id="_fsvZ9eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fsuL2-iaEd6gMtZRCjS81g" target="_fsuL3OiaEd6gMtZRCjS81g"/>
    <edge id="_fswBAOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fsuL3eiaEd6gMtZRCjS81g" target="_fsuL2uiaEd6gMtZRCjS81g"/>
    <edge id="_fswBAOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fsuL2uiaEd6gMtZRCjS81g" target="_fsuL3eiaEd6gMtZRCjS81g"/>
    <edge id="_fswBAeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fsuL3uiaEd6gMtZRCjS81g" target="_fsuL2uiaEd6gMtZRCjS81g"/>
    <edge id="_fswBAeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fsuL2uiaEd6gMtZRCjS81g" target="_fsuL3uiaEd6gMtZRCjS81g"/>
    <edge id="_fswBAuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fsuL3-iaEd6gMtZRCjS81g" target="_fsuL2uiaEd6gMtZRCjS81g"/>
    <edge id="_fswBAuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fsuL2uiaEd6gMtZRCjS81g" target="_fsuL3-iaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
