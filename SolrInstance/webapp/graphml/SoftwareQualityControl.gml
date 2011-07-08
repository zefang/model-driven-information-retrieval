<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_gSkD0OiaEd6gMtZRCjS81g" projectName="SoftwareQualityControl">
    <node className="DateType" id="_gSkD0-iaEd6gMtZRCjS81g">
      <attribute>day</attribute>
      <attribute>month</attribute>
      <attribute>year</attribute>
    </node>
    <node className="ControlsSequence" id="_gSkD1OiaEd6gMtZRCjS81g"/>
    <node className="Control" id="_gSkD1eiaEd6gMtZRCjS81g">
      <attribute>responsible</attribute>
      <attribute>component</attribute>
      <attribute>developmentPhase</attribute>
      <attribute>scope</attribute>
      <attribute>controlledElt</attribute>
      <attribute>eltRef</attribute>
      <attribute>eltAuthor</attribute>
      <attribute>formRef</attribute>
    </node>
    <node className="ControlType" id="_gSkD1uiaEd6gMtZRCjS81g"/>
    <node className="BugTracking" id="_gSkD1-iaEd6gMtZRCjS81g"/>
    <node className="Bug" id="_gSkD2OiaEd6gMtZRCjS81g">
      <attribute>number</attribute>
      <attribute>componentVersion</attribute>
      <attribute>description</attribute>
      <attribute>status</attribute>
      <attribute>originator</attribute>
      <attribute>responsible</attribute>
      <attribute>commentsAnswers</attribute>
      <attribute>openDate</attribute>
      <attribute>closeDate</attribute>
    </node>
    <edge id="_gSkD7eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gSkD1OiaEd6gMtZRCjS81g" target="_gSkD1eiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">controls</attribute>
    </edge>
    <edge id="_gSkD7eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gSkD1eiaEd6gMtZRCjS81g" target="_gSkD1OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gSkD8OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gSkD1eiaEd6gMtZRCjS81g" target="_gSkD0-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">date</attribute>
    </edge>
    <edge id="_gSkD8OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gSkD0-iaEd6gMtZRCjS81g" target="_gSkD1eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gSkD8-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gSkD1eiaEd6gMtZRCjS81g" target="_gSkD1uiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">type</attribute>
    </edge>
    <edge id="_gSkD8-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gSkD1uiaEd6gMtZRCjS81g" target="_gSkD1eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gSkD9uiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gSkD1-iaEd6gMtZRCjS81g" target="_gSkD2OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">bugs</attribute>
    </edge>
    <edge id="_gSkD9uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gSkD2OiaEd6gMtZRCjS81g" target="_gSkD1-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gSkq5-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gSkD1-iaEd6gMtZRCjS81g" target="_gSkD1uiaEd6gMtZRCjS81g"/>
    <edge id="_gSkq5-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gSkD1uiaEd6gMtZRCjS81g" target="_gSkD1-iaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
