<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_gEmgUOiaEd6gMtZRCjS81g" projectName="Reqtify">
    <node className="Project" id="_gEmgU-iaEd6gMtZRCjS81g"/>
    <node className="TypedElement" id="_gEmgVOiaEd6gMtZRCjS81g">
      <attribute>type</attribute>
    </node>
    <node className="ElementWithIL" id="_gEmgVeiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>label</attribute>
    </node>
    <node className="Document" id="_gEmgVuiaEd6gMtZRCjS81g"/>
    <node className="TextElement" id="_gEnHYOiaEd6gMtZRCjS81g">
      <attribute>description</attribute>
    </node>
    <node className="Section" id="_gEnHYeiaEd6gMtZRCjS81g"/>
    <node className="AbstractRequirement" id="_gEnHYuiaEd6gMtZRCjS81g"/>
    <node className="Requirement" id="_gEnHY-iaEd6gMtZRCjS81g"/>
    <node className="MacroRequirement" id="_gEnHZOiaEd6gMtZRCjS81g"/>
    <node className="CoverLink" id="_gEnHZeiaEd6gMtZRCjS81g"/>
    <node className="Attribute" id="_gEnHZuiaEd6gMtZRCjS81g">
      <attribute>value</attribute>
    </node>
    <edge id="_gEnHbOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gEmgU-iaEd6gMtZRCjS81g" target="_gEmgVuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">documents</attribute>
    </edge>
    <edge id="_gEnHbOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gEmgVuiaEd6gMtZRCjS81g" target="_gEmgU-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gEnHb-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gEmgVuiaEd6gMtZRCjS81g" target="_gEnHYeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">sections</attribute>
    </edge>
    <edge id="_gEnHb-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gEnHYeiaEd6gMtZRCjS81g" target="_gEmgVuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gEnHcuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gEnHYeiaEd6gMtZRCjS81g" target="_gEnHYeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">sectionChildren</attribute>
    </edge>
    <edge id="_gEnHcuiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gEnHYeiaEd6gMtZRCjS81g" target="_gEnHYeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gEnHdeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gEnHYeiaEd6gMtZRCjS81g" target="_gEnHYuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">requirements</attribute>
    </edge>
    <edge id="_gEnHdeiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gEnHYuiaEd6gMtZRCjS81g" target="_gEnHYeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gEnHeOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gEnHYuiaEd6gMtZRCjS81g" target="_gEnHZeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">coverLinks</attribute>
    </edge>
    <edge id="_gEnHeOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gEnHZeiaEd6gMtZRCjS81g" target="_gEnHYuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gEnHe-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gEnHYuiaEd6gMtZRCjS81g" target="_gEnHZuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">attribute</attribute>
    </edge>
    <edge id="_gEnHe-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gEnHZuiaEd6gMtZRCjS81g" target="_gEnHYuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gEnHfuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gEnHZOiaEd6gMtZRCjS81g" target="_gEnHYuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">contains</attribute>
    </edge>
    <edge id="_gEnHfuiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gEnHYuiaEd6gMtZRCjS81g" target="_gEnHZOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gEnHgeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gEnHZeiaEd6gMtZRCjS81g" target="_gEnHYuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">linkWith</attribute>
    </edge>
    <edge id="_gEnHgeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gEnHYuiaEd6gMtZRCjS81g" target="_gEnHZeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gEnucOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gEmgVeiaEd6gMtZRCjS81g" target="_gEmgVOiaEd6gMtZRCjS81g"/>
    <edge id="_gEnucOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gEmgVOiaEd6gMtZRCjS81g" target="_gEmgVeiaEd6gMtZRCjS81g"/>
    <edge id="_gEnuceiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gEmgVuiaEd6gMtZRCjS81g" target="_gEmgVeiaEd6gMtZRCjS81g"/>
    <edge id="_gEnuceiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gEmgVeiaEd6gMtZRCjS81g" target="_gEmgVuiaEd6gMtZRCjS81g"/>
    <edge id="_gEnucuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gEnHYOiaEd6gMtZRCjS81g" target="_gEmgVeiaEd6gMtZRCjS81g"/>
    <edge id="_gEnucuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gEmgVeiaEd6gMtZRCjS81g" target="_gEnHYOiaEd6gMtZRCjS81g"/>
    <edge id="_gEnuc-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gEnHYeiaEd6gMtZRCjS81g" target="_gEnHYOiaEd6gMtZRCjS81g"/>
    <edge id="_gEnuc-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gEnHYOiaEd6gMtZRCjS81g" target="_gEnHYeiaEd6gMtZRCjS81g"/>
    <edge id="_gEnudOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gEnHYuiaEd6gMtZRCjS81g" target="_gEnHYOiaEd6gMtZRCjS81g"/>
    <edge id="_gEnudOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gEnHYOiaEd6gMtZRCjS81g" target="_gEnHYuiaEd6gMtZRCjS81g"/>
    <edge id="_gEnudeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gEnHY-iaEd6gMtZRCjS81g" target="_gEnHYuiaEd6gMtZRCjS81g"/>
    <edge id="_gEnudeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gEnHYuiaEd6gMtZRCjS81g" target="_gEnHY-iaEd6gMtZRCjS81g"/>
    <edge id="_gEnuduiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gEnHZOiaEd6gMtZRCjS81g" target="_gEnHYuiaEd6gMtZRCjS81g"/>
    <edge id="_gEnuduiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gEnHYuiaEd6gMtZRCjS81g" target="_gEnHZOiaEd6gMtZRCjS81g"/>
    <edge id="_gEnud-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gEnHZeiaEd6gMtZRCjS81g" target="_gEmgVOiaEd6gMtZRCjS81g"/>
    <edge id="_gEnud-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gEmgVOiaEd6gMtZRCjS81g" target="_gEnHZeiaEd6gMtZRCjS81g"/>
    <edge id="_gEnueOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gEnHZuiaEd6gMtZRCjS81g" target="_gEmgVOiaEd6gMtZRCjS81g"/>
    <edge id="_gEnueOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gEmgVOiaEd6gMtZRCjS81g" target="_gEnHZuiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
