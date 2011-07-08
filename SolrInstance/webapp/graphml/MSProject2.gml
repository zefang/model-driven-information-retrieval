<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_e6lkQOiaEd6gMtZRCjS81g" projectName="MSProject">
    <node className="MSPProject" id="_e6lkQ-iaEd6gMtZRCjS81g"/>
    <node className="MSPTask" id="_e6lkROiaEd6gMtZRCjS81g">
      <attribute>finishDate</attribute>
      <attribute>startDate</attribute>
    </node>
    <node className="MSPLink" id="_e6lkReiaEd6gMtZRCjS81g"/>
    <node className="MSPAssignment" id="_e6lkRuiaEd6gMtZRCjS81g"/>
    <node className="MSPResource" id="_e6lkR-iaEd6gMtZRCjS81g">
      <attribute>cost</attribute>
    </node>
    <node className="MSPHumanResource" id="_e6lkSOiaEd6gMtZRCjS81g">
      <attribute>email</attribute>
    </node>
    <node className="MSPMachine" id="_e6lkSeiaEd6gMtZRCjS81g"/>
    <node className="Date" id="_e6lkSuiaEd6gMtZRCjS81g">
      <attribute>day</attribute>
      <attribute>month</attribute>
      <attribute>year</attribute>
    </node>
    <edge id="_e6lkUuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_e6lkQ-iaEd6gMtZRCjS81g" target="_e6lkR-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">resource</attribute>
    </edge>
    <edge id="_e6lkUuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_e6lkR-iaEd6gMtZRCjS81g" target="_e6lkQ-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_e6lkVeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_e6lkQ-iaEd6gMtZRCjS81g" target="_e6lkReiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">link</attribute>
    </edge>
    <edge id="_e6lkVeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_e6lkReiaEd6gMtZRCjS81g" target="_e6lkQ-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_e6lkWOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_e6lkQ-iaEd6gMtZRCjS81g" target="_e6lkROiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">task</attribute>
    </edge>
    <edge id="_e6lkWOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_e6lkROiaEd6gMtZRCjS81g" target="_e6lkQ-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_e6lkW-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_e6lkROiaEd6gMtZRCjS81g" target="_e6lkROiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">superTask</attribute>
    </edge>
    <edge id="_e6lkW-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_e6lkROiaEd6gMtZRCjS81g" target="_e6lkROiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_e6lkXuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_e6lkROiaEd6gMtZRCjS81g" target="_e6lkRuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">assignment</attribute>
    </edge>
    <edge id="_e6lkXuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_e6lkRuiaEd6gMtZRCjS81g" target="_e6lkROiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_e6lkYeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_e6lkROiaEd6gMtZRCjS81g" target="_e6lkReiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">inLink</attribute>
    </edge>
    <edge id="_e6lkYeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_e6lkReiaEd6gMtZRCjS81g" target="_e6lkROiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_e6mLUOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_e6lkROiaEd6gMtZRCjS81g" target="_e6lkReiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">outLink</attribute>
    </edge>
    <edge id="_e6mLUOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_e6lkReiaEd6gMtZRCjS81g" target="_e6lkROiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_e6mLU-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_e6lkRuiaEd6gMtZRCjS81g" target="_e6lkR-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">resource</attribute>
    </edge>
    <edge id="_e6mLU-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_e6lkR-iaEd6gMtZRCjS81g" target="_e6lkRuiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_e6mLWeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_e6lkSOiaEd6gMtZRCjS81g" target="_e6lkR-iaEd6gMtZRCjS81g"/>
    <edge id="_e6mLWeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_e6lkR-iaEd6gMtZRCjS81g" target="_e6lkSOiaEd6gMtZRCjS81g"/>
    <edge id="_e6mLWuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_e6lkSeiaEd6gMtZRCjS81g" target="_e6lkR-iaEd6gMtZRCjS81g"/>
    <edge id="_e6mLWuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_e6lkR-iaEd6gMtZRCjS81g" target="_e6lkSeiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
