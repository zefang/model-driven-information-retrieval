<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_gR7KoOiaEd6gMtZRCjS81g" projectName="SimulinkStateFlow">
    <node className="Simulink" id="_gR7Ko-iaEd6gMtZRCjS81g"/>
    <node className="System" id="_gR7KpOiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Connector" id="_gR7KpeiaEd6gMtZRCjS81g"/>
    <node className="Line" id="_gR7KpuiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="BranchPoint" id="_gR7Kp-iaEd6gMtZRCjS81g"/>
    <node className="Port" id="_gR7KqOiaEd6gMtZRCjS81g">
      <attribute>units</attribute>
    </node>
    <node className="Block" id="_gR7KqeiaEd6gMtZRCjS81g">
      <attribute>description</attribute>
      <attribute>name</attribute>
      <attribute>priority</attribute>
      <attribute>natagme</attribute>
      <attribute>blockType</attribute>
    </node>
    <node className="BlockRef" id="_gR7KquiaEd6gMtZRCjS81g"/>
    <node className="Primitive" id="_gR7Kq-iaEd6gMtZRCjS81g">
      <attribute>deadLine</attribute>
      <attribute>period</attribute>
      <attribute>executionTime</attribute>
    </node>
    <node className="OutPut" id="_gR7KrOiaEd6gMtZRCjS81g">
      <attribute>number</attribute>
    </node>
    <node className="TriggerPort" id="_gR7KreiaEd6gMtZRCjS81g">
      <attribute>triggerType</attribute>
    </node>
    <node className="EnablePort" id="_gR7KruiaEd6gMtZRCjS81g">
      <attribute>statesWhenEnabling</attribute>
    </node>
    <node className="Reference" id="_gR7Kr-iaEd6gMtZRCjS81g">
      <attribute>sourceBlock</attribute>
      <attribute>sourceType</attribute>
    </node>
    <node className="Annotation" id="_gR7KsOiaEd6gMtZRCjS81g">
      <attribute>text</attribute>
    </node>
    <node className="Parameter" id="_gR7KseiaEd6gMtZRCjS81g">
      <attribute>value</attribute>
    </node>
    <edge id="_gR7KxOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gR7Ko-iaEd6gMtZRCjS81g" target="_gR7KpOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">subSystem</attribute>
    </edge>
    <edge id="_gR7KxOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gR7KpOiaEd6gMtZRCjS81g" target="_gR7Ko-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gR7xuOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gR7KpOiaEd6gMtZRCjS81g" target="_gR7KpOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">subSystem</attribute>
    </edge>
    <edge id="_gR7xuOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gR7KpOiaEd6gMtZRCjS81g" target="_gR7KpOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gR7xu-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gR7KqeiaEd6gMtZRCjS81g" target="_gR7KpuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">lines</attribute>
    </edge>
    <edge id="_gR7xu-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gR7KpuiaEd6gMtZRCjS81g" target="_gR7KqeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gR7xvuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gR7KqeiaEd6gMtZRCjS81g" target="_gR7KseiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">parameters</attribute>
    </edge>
    <edge id="_gR7xvuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gR7KseiaEd6gMtZRCjS81g" target="_gR7KqeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gR7xweiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gR7KqeiaEd6gMtZRCjS81g" target="_gR7KsOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">annotations</attribute>
    </edge>
    <edge id="_gR7xweiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gR7KsOiaEd6gMtZRCjS81g" target="_gR7KqeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gR7xxOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gR7KqeiaEd6gMtZRCjS81g" target="_gR7KquiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">blockRefs</attribute>
    </edge>
    <edge id="_gR7xxOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gR7KquiaEd6gMtZRCjS81g" target="_gR7KqeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gR7xsuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gR7KpOiaEd6gMtZRCjS81g" target="_gR7KqeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">blocks</attribute>
    </edge>
    <edge id="_gR7xsuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gR7KqeiaEd6gMtZRCjS81g" target="_gR7KpOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gR7xteiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gR7KpOiaEd6gMtZRCjS81g" target="_gR7KpuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">lines</attribute>
    </edge>
    <edge id="_gR7xteiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gR7KpuiaEd6gMtZRCjS81g" target="_gR7KpOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gR8YwOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gR7Kp-iaEd6gMtZRCjS81g" target="_gR7KpeiaEd6gMtZRCjS81g"/>
    <edge id="_gR8YwOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gR7KpeiaEd6gMtZRCjS81g" target="_gR7Kp-iaEd6gMtZRCjS81g"/>
    <edge id="_gR8YweiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gR7KqOiaEd6gMtZRCjS81g" target="_gR7KpeiaEd6gMtZRCjS81g"/>
    <edge id="_gR8YweiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gR7KpeiaEd6gMtZRCjS81g" target="_gR7KqOiaEd6gMtZRCjS81g"/>
    <edge id="_gR8YwuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gR7Kq-iaEd6gMtZRCjS81g" target="_gR7KqeiaEd6gMtZRCjS81g"/>
    <edge id="_gR8YwuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gR7KqeiaEd6gMtZRCjS81g" target="_gR7Kq-iaEd6gMtZRCjS81g"/>
    <edge id="_gR8Yw-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gR7KrOiaEd6gMtZRCjS81g" target="_gR7KqOiaEd6gMtZRCjS81g"/>
    <edge id="_gR8Yw-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gR7KqOiaEd6gMtZRCjS81g" target="_gR7KrOiaEd6gMtZRCjS81g"/>
    <edge id="_gR8_0OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gR7KreiaEd6gMtZRCjS81g" target="_gR7KqOiaEd6gMtZRCjS81g"/>
    <edge id="_gR8_0OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gR7KqOiaEd6gMtZRCjS81g" target="_gR7KreiaEd6gMtZRCjS81g"/>
    <edge id="_gR8_0eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gR7KruiaEd6gMtZRCjS81g" target="_gR7KqOiaEd6gMtZRCjS81g"/>
    <edge id="_gR8_0eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gR7KqOiaEd6gMtZRCjS81g" target="_gR7KruiaEd6gMtZRCjS81g"/>
    <edge id="_gR8_0uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gR7Kr-iaEd6gMtZRCjS81g" target="_gR7KqeiaEd6gMtZRCjS81g"/>
    <edge id="_gR8_0uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gR7KqeiaEd6gMtZRCjS81g" target="_gR7Kr-iaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
