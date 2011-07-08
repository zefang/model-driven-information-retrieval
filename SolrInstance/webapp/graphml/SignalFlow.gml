<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_gQyiMOiaEd6gMtZRCjS81g" projectName="SignalFlow">
    <node className="RootFolder" id="_gQyiM-iaEd6gMtZRCjS81g"/>
    <node className="CompoundComponent" id="_gQyiNOiaEd6gMtZRCjS81g"/>
    <node className="PrimitiveComponent" id="_gQyiNeiaEd6gMtZRCjS81g"/>
    <node className="BaseComponent" id="_gQyiNuiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>position</attribute>
    </node>
    <node className="InputPort" id="_gQyiN-iaEd6gMtZRCjS81g"/>
    <node className="LocalPort" id="_gQyiOOiaEd6gMtZRCjS81g"/>
    <node className="OutputPort" id="_gQyiOeiaEd6gMtZRCjS81g"/>
    <node className="PortBase" id="_gQyiOuiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>position</attribute>
    </node>
    <node className="Signal" id="_gQyiO-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>position</attribute>
    </node>
    <node className="AssociationPortBase_PortBase" id="_gQyiPOiaEd6gMtZRCjS81g"/>
    <edge id="_gQyiQ-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gQyiM-iaEd6gMtZRCjS81g" target="_gQyiNOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">compoundComponent</attribute>
    </edge>
    <edge id="_gQyiQ-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gQyiNOiaEd6gMtZRCjS81g" target="_gQyiM-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gQzJQeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gQyiNOiaEd6gMtZRCjS81g" target="_gQyiNuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">baseComponent</attribute>
    </edge>
    <edge id="_gQzJQeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gQyiNuiaEd6gMtZRCjS81g" target="_gQyiNOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gQzJROiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gQyiNOiaEd6gMtZRCjS81g" target="_gQyiOOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">localPort</attribute>
    </edge>
    <edge id="_gQzJROiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gQyiOOiaEd6gMtZRCjS81g" target="_gQyiNOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gQzJR-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gQyiNuiaEd6gMtZRCjS81g" target="_gQyiO-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">signal</attribute>
    </edge>
    <edge id="_gQzJR-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gQyiO-iaEd6gMtZRCjS81g" target="_gQyiNuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gQzJSuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gQyiNuiaEd6gMtZRCjS81g" target="_gQyiOeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">outputPort</attribute>
    </edge>
    <edge id="_gQzJSuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gQyiOeiaEd6gMtZRCjS81g" target="_gQyiNuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gQzJTeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gQyiNuiaEd6gMtZRCjS81g" target="_gQyiN-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">inputPort</attribute>
    </edge>
    <edge id="_gQzJTeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gQyiN-iaEd6gMtZRCjS81g" target="_gQyiNuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gQzJUOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gQyiOuiaEd6gMtZRCjS81g" target="_gQyiPOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">associationPortBase_PortBasesrc</attribute>
    </edge>
    <edge id="_gQzJUOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gQyiPOiaEd6gMtZRCjS81g" target="_gQyiOuiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gQzJU-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gQyiOuiaEd6gMtZRCjS81g" target="_gQyiPOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">associationPortBase_PortBasedst</attribute>
    </edge>
    <edge id="_gQzJU-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gQyiPOiaEd6gMtZRCjS81g" target="_gQyiOuiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gQzJVuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gQyiO-iaEd6gMtZRCjS81g" target="_gQyiPOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">associationPortBase_PortBase</attribute>
    </edge>
    <edge id="_gQzJVuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gQyiPOiaEd6gMtZRCjS81g" target="_gQyiO-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gQzJW-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gQyiNOiaEd6gMtZRCjS81g" target="_gQyiNuiaEd6gMtZRCjS81g"/>
    <edge id="_gQzJW-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gQyiNuiaEd6gMtZRCjS81g" target="_gQyiNOiaEd6gMtZRCjS81g"/>
    <edge id="_gQzwUOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gQyiNeiaEd6gMtZRCjS81g" target="_gQyiNuiaEd6gMtZRCjS81g"/>
    <edge id="_gQzwUOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gQyiNuiaEd6gMtZRCjS81g" target="_gQyiNeiaEd6gMtZRCjS81g"/>
    <edge id="_gQzwUeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gQyiN-iaEd6gMtZRCjS81g" target="_gQyiOuiaEd6gMtZRCjS81g"/>
    <edge id="_gQzwUeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gQyiOuiaEd6gMtZRCjS81g" target="_gQyiN-iaEd6gMtZRCjS81g"/>
    <edge id="_gQzwUuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gQyiOOiaEd6gMtZRCjS81g" target="_gQyiOuiaEd6gMtZRCjS81g"/>
    <edge id="_gQzwUuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gQyiOuiaEd6gMtZRCjS81g" target="_gQyiOOiaEd6gMtZRCjS81g"/>
    <edge id="_gQzwU-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gQyiOeiaEd6gMtZRCjS81g" target="_gQyiOuiaEd6gMtZRCjS81g"/>
    <edge id="_gQzwU-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gQyiOuiaEd6gMtZRCjS81g" target="_gQyiOeiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
