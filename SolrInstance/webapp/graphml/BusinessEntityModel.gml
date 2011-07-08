<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_dnRiQOiaEd6gMtZRCjS81g" projectName="BusinessEntityModel">
    <node className="DataType" id="_dnRiQ-iaEd6gMtZRCjS81g"/>
    <node className="Action" id="_dnRiROiaEd6gMtZRCjS81g"/>
    <node className="Class" id="_dnRiReiaEd6gMtZRCjS81g"/>
    <node className="BusinessEntityPropertySet" id="_dnRiRuiaEd6gMtZRCjS81g"/>
    <node className="BusinessRole" id="_dnRiR-iaEd6gMtZRCjS81g"/>
    <node className="Task" id="_dnRiSOiaEd6gMtZRCjS81g"/>
    <node className="ArtifactRole" id="_dnRiSeiaEd6gMtZRCjS81g"/>
    <node className="PerformerRole" id="_dnRiSuiaEd6gMtZRCjS81g"/>
    <node className="OrganisationalUnit" id="_dnRiS-iaEd6gMtZRCjS81g"/>
    <node className="BusinessEntity" id="_dnRiTOiaEd6gMtZRCjS81g"/>
    <edge id="_dnRiTeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dnRiR-iaEd6gMtZRCjS81g" target="_dnRiRuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">characterisedby</attribute>
    </edge>
    <edge id="_dnRiTeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dnRiRuiaEd6gMtZRCjS81g" target="_dnRiR-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dnRiUOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dnRiR-iaEd6gMtZRCjS81g" target="_dnRiReiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">typ</attribute>
    </edge>
    <edge id="_dnRiUOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dnRiReiaEd6gMtZRCjS81g" target="_dnRiR-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dnRiU-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dnRiR-iaEd6gMtZRCjS81g" target="_dnRiSOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">task</attribute>
    </edge>
    <edge id="_dnRiU-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dnRiSOiaEd6gMtZRCjS81g" target="_dnRiR-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_dnRiVuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dnRiR-iaEd6gMtZRCjS81g" target="_dnRiTOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">fille</attribute>
    </edge>
    <edge id="_dnRiVuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dnRiTOiaEd6gMtZRCjS81g" target="_dnRiR-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_dnRiWeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dnRiSOiaEd6gMtZRCjS81g" target="_dnRiSeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">needs</attribute>
    </edge>
    <edge id="_dnRiWeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dnRiSeiaEd6gMtZRCjS81g" target="_dnRiSOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dnRiXOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dnRiSuiaEd6gMtZRCjS81g" target="_dnRiSOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">perform</attribute>
    </edge>
    <edge id="_dnRiXOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dnRiSOiaEd6gMtZRCjS81g" target="_dnRiSuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dnSJUOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dnRiRuiaEd6gMtZRCjS81g" target="_dnRiQ-iaEd6gMtZRCjS81g"/>
    <edge id="_dnSJUOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dnRiQ-iaEd6gMtZRCjS81g" target="_dnRiRuiaEd6gMtZRCjS81g"/>
    <edge id="_dnSJUeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dnRiR-iaEd6gMtZRCjS81g" target="_dnRiROiaEd6gMtZRCjS81g"/>
    <edge id="_dnSJUeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dnRiROiaEd6gMtZRCjS81g" target="_dnRiR-iaEd6gMtZRCjS81g"/>
    <edge id="_dnSJUuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dnRiSeiaEd6gMtZRCjS81g" target="_dnRiR-iaEd6gMtZRCjS81g"/>
    <edge id="_dnSJUuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dnRiR-iaEd6gMtZRCjS81g" target="_dnRiSeiaEd6gMtZRCjS81g"/>
    <edge id="_dnSJU-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dnRiSuiaEd6gMtZRCjS81g" target="_dnRiR-iaEd6gMtZRCjS81g"/>
    <edge id="_dnSJU-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dnRiR-iaEd6gMtZRCjS81g" target="_dnRiSuiaEd6gMtZRCjS81g"/>
    <edge id="_dnSJVOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dnRiS-iaEd6gMtZRCjS81g" target="_dnRiR-iaEd6gMtZRCjS81g"/>
    <edge id="_dnSJVOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dnRiR-iaEd6gMtZRCjS81g" target="_dnRiS-iaEd6gMtZRCjS81g"/>
    <edge id="_dnSJVeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dnRiTOiaEd6gMtZRCjS81g" target="_dnRiReiaEd6gMtZRCjS81g"/>
    <edge id="_dnSJVeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dnRiReiaEd6gMtZRCjS81g" target="_dnRiTOiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
