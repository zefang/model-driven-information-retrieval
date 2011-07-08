<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_gJoKQOiaEd6gMtZRCjS81g" projectName="SPEM">
    <node className="ArtifactUsageName" id="_gJoKQ-iaEd6gMtZRCjS81g">
      <attribute>isInput</attribute>
      <attribute>isOutput</attribute>
      <attribute>hasWorkPerArtifact</attribute>
    </node>
    <node className="ProcessDefinitionElement" id="_gJoKROiaEd6gMtZRCjS81g"/>
    <node className="Guidance" id="_gJoKReiaEd6gMtZRCjS81g"/>
    <node className="ArtifactKind" id="_gJoKRuiaEd6gMtZRCjS81g"/>
    <node className="WorkItem" id="_gJoxUOiaEd6gMtZRCjS81g"/>
    <node className="RoleKind" id="_gJoxUeiaEd6gMtZRCjS81g"/>
    <node className="Condition" id="_gJoxUuiaEd6gMtZRCjS81g"/>
    <node className="ProcessComponent" id="_gJoxU-iaEd6gMtZRCjS81g"/>
    <node className="Goal" id="_gJoxVOiaEd6gMtZRCjS81g"/>
    <node className="Precondition" id="_gJoxVeiaEd6gMtZRCjS81g"/>
    <node className="WorkDefinition" id="_gJoxVuiaEd6gMtZRCjS81g"/>
    <node className="ActivityKind" id="_gJoxV-iaEd6gMtZRCjS81g"/>
    <node className="Iteration" id="_gJoxWOiaEd6gMtZRCjS81g"/>
    <node className="Phase" id="_gJoxWeiaEd6gMtZRCjS81g"/>
    <node className="Lifecycle" id="_gJoxWuiaEd6gMtZRCjS81g"/>
    <edge id="_gJoxauiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gJoxVuiaEd6gMtZRCjS81g" target="_gJoKQ-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">artifactUsageNames</attribute>
    </edge>
    <edge id="_gJoxauiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gJoKQ-iaEd6gMtZRCjS81g" target="_gJoxVuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gJoxbeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gJoxVuiaEd6gMtZRCjS81g" target="_gJoxVOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">goal</attribute>
    </edge>
    <edge id="_gJoxbeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gJoxVOiaEd6gMtZRCjS81g" target="_gJoxVuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gJoxcOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gJoxVuiaEd6gMtZRCjS81g" target="_gJoxVeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">precondition</attribute>
    </edge>
    <edge id="_gJoxcOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gJoxVeiaEd6gMtZRCjS81g" target="_gJoxVuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gJoxXuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gJoKQ-iaEd6gMtZRCjS81g" target="_gJoKRuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">artifactKind</attribute>
    </edge>
    <edge id="_gJoxXuiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gJoKRuiaEd6gMtZRCjS81g" target="_gJoKQ-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gJoxYeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gJoKROiaEd6gMtZRCjS81g" target="_gJoKReiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">guidances</attribute>
    </edge>
    <edge id="_gJoxYeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gJoKReiaEd6gMtZRCjS81g" target="_gJoKROiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gJoxZOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gJoKROiaEd6gMtZRCjS81g" target="_gJoxU-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">processComponents</attribute>
    </edge>
    <edge id="_gJoxZOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gJoxU-iaEd6gMtZRCjS81g" target="_gJoKROiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gJoxZ-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gJoKRuiaEd6gMtZRCjS81g" target="_gJoxUeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">responsible</attribute>
    </edge>
    <edge id="_gJoxZ-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gJoxUeiaEd6gMtZRCjS81g" target="_gJoKRuiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gJoxc-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gJoxV-iaEd6gMtZRCjS81g" target="_gJoxUeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">performer</attribute>
    </edge>
    <edge id="_gJoxc-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gJoxUeiaEd6gMtZRCjS81g" target="_gJoxV-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gJoxduiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gJoxV-iaEd6gMtZRCjS81g" target="_gJoxUeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">assistant</attribute>
    </edge>
    <edge id="_gJoxduiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gJoxUeiaEd6gMtZRCjS81g" target="_gJoxV-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gJpYYOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gJoKReiaEd6gMtZRCjS81g" target="_gJoKROiaEd6gMtZRCjS81g"/>
    <edge id="_gJpYYOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gJoKROiaEd6gMtZRCjS81g" target="_gJoKReiaEd6gMtZRCjS81g"/>
    <edge id="_gJpYYeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gJoKRuiaEd6gMtZRCjS81g" target="_gJoKROiaEd6gMtZRCjS81g"/>
    <edge id="_gJpYYeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gJoKROiaEd6gMtZRCjS81g" target="_gJoKRuiaEd6gMtZRCjS81g"/>
    <edge id="_gJpYYuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gJoxUOiaEd6gMtZRCjS81g" target="_gJoKROiaEd6gMtZRCjS81g"/>
    <edge id="_gJpYYuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gJoKROiaEd6gMtZRCjS81g" target="_gJoxUOiaEd6gMtZRCjS81g"/>
    <edge id="_gJpYY-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gJoxUeiaEd6gMtZRCjS81g" target="_gJoKROiaEd6gMtZRCjS81g"/>
    <edge id="_gJpYY-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gJoKROiaEd6gMtZRCjS81g" target="_gJoxUeiaEd6gMtZRCjS81g"/>
    <edge id="_gJpYZOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gJoxUuiaEd6gMtZRCjS81g" target="_gJoKROiaEd6gMtZRCjS81g"/>
    <edge id="_gJpYZOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gJoKROiaEd6gMtZRCjS81g" target="_gJoxUuiaEd6gMtZRCjS81g"/>
    <edge id="_gJpYZeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gJoxU-iaEd6gMtZRCjS81g" target="_gJoKROiaEd6gMtZRCjS81g"/>
    <edge id="_gJpYZeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gJoKROiaEd6gMtZRCjS81g" target="_gJoxU-iaEd6gMtZRCjS81g"/>
    <edge id="_gJpYZuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gJoxVOiaEd6gMtZRCjS81g" target="_gJoxUuiaEd6gMtZRCjS81g"/>
    <edge id="_gJpYZuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gJoxUuiaEd6gMtZRCjS81g" target="_gJoxVOiaEd6gMtZRCjS81g"/>
    <edge id="_gJpYZ-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gJoxVeiaEd6gMtZRCjS81g" target="_gJoxUuiaEd6gMtZRCjS81g"/>
    <edge id="_gJpYZ-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gJoxUuiaEd6gMtZRCjS81g" target="_gJoxVeiaEd6gMtZRCjS81g"/>
    <edge id="_gJpYaOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gJoxVuiaEd6gMtZRCjS81g" target="_gJoxUOiaEd6gMtZRCjS81g"/>
    <edge id="_gJpYaOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gJoxUOiaEd6gMtZRCjS81g" target="_gJoxVuiaEd6gMtZRCjS81g"/>
    <edge id="_gJpYaeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gJoxV-iaEd6gMtZRCjS81g" target="_gJoxVuiaEd6gMtZRCjS81g"/>
    <edge id="_gJpYaeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gJoxVuiaEd6gMtZRCjS81g" target="_gJoxV-iaEd6gMtZRCjS81g"/>
    <edge id="_gJp_cOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gJoxWOiaEd6gMtZRCjS81g" target="_gJoxVuiaEd6gMtZRCjS81g"/>
    <edge id="_gJp_cOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gJoxVuiaEd6gMtZRCjS81g" target="_gJoxWOiaEd6gMtZRCjS81g"/>
    <edge id="_gJp_ceiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gJoxWeiaEd6gMtZRCjS81g" target="_gJoxVuiaEd6gMtZRCjS81g"/>
    <edge id="_gJp_ceiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gJoxVuiaEd6gMtZRCjS81g" target="_gJoxWeiaEd6gMtZRCjS81g"/>
    <edge id="_gJp_cuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gJoxWuiaEd6gMtZRCjS81g" target="_gJoxVuiaEd6gMtZRCjS81g"/>
    <edge id="_gJp_cuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gJoxVuiaEd6gMtZRCjS81g" target="_gJoxWuiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
