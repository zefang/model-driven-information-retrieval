<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_gbc6EOiaEd6gMtZRCjS81g" projectName="UEML">
    <node className="UEMLObject" id="_gbc6EuiaEd6gMtZRCjS81g"/>
    <node className="UEMLModel" id="_gbc6E-iaEd6gMtZRCjS81g"/>
    <node className="Geometry" id="_gbc6FOiaEd6gMtZRCjS81g"/>
    <node className="Port" id="_gbc6FeiaEd6gMtZRCjS81g"/>
    <node className="Flow" id="_gbc6FuiaEd6gMtZRCjS81g"/>
    <node className="Activity" id="_gbc6F-iaEd6gMtZRCjS81g"/>
    <node className="Object" id="_gbc6GOiaEd6gMtZRCjS81g"/>
    <node className="InformationObject" id="_gbc6GeiaEd6gMtZRCjS81g"/>
    <node className="Resource" id="_gbc6GuiaEd6gMtZRCjS81g"/>
    <node className="MaterialResource" id="_gbc6G-iaEd6gMtZRCjS81g"/>
    <node className="HumanResource" id="_gbc6HOiaEd6gMtZRCjS81g"/>
    <node className="ResourceFlow" id="_gbc6HeiaEd6gMtZRCjS81g"/>
    <node className="IOFlow" id="_gbc6HuiaEd6gMtZRCjS81g"/>
    <node className="ControlFlow" id="_gbc6H-iaEd6gMtZRCjS81g"/>
    <node className="TriggerFlow" id="_gbc6IOiaEd6gMtZRCjS81g"/>
    <node className="ConstraintFlow" id="_gbc6IeiaEd6gMtZRCjS81g"/>
    <node className="ResourceRole" id="_gbc6IuiaEd6gMtZRCjS81g"/>
    <node className="RoleType" id="_gbc6I-iaEd6gMtZRCjS81g"/>
    <node className="Anchor" id="_gbc6JOiaEd6gMtZRCjS81g"/>
    <node className="OutputPort" id="_gbc6JeiaEd6gMtZRCjS81g"/>
    <node className="InputPort" id="_gbc6JuiaEd6gMtZRCjS81g"/>
    <node className="ConnectionOperator" id="_gbc6J-iaEd6gMtZRCjS81g"/>
    <node className="AssociationConnector" id="_gbc6KOiaEd6gMtZRCjS81g"/>
    <node className="Task" id="_gbc6KeiaEd6gMtZRCjS81g"/>
    <node className="FlowObject" id="_gbc6KuiaEd6gMtZRCjS81g"/>
    <node className="Event" id="_gbc6K-iaEd6gMtZRCjS81g"/>
    <node className="Process" id="_gbc6LOiaEd6gMtZRCjS81g"/>
    <edge id="_gbc6MOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gbc6E-iaEd6gMtZRCjS81g" target="_gbc6EuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">contains</attribute>
    </edge>
    <edge id="_gbc6MOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gbc6EuiaEd6gMtZRCjS81g" target="_gbc6E-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gbdhJOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gbc6F-iaEd6gMtZRCjS81g" target="_gbc6JeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">hasOutput</attribute>
    </edge>
    <edge id="_gbdhJOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gbc6JeiaEd6gMtZRCjS81g" target="_gbc6F-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gbdhJ-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gbc6F-iaEd6gMtZRCjS81g" target="_gbc6JuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">hasInput</attribute>
    </edge>
    <edge id="_gbdhJ-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gbc6JuiaEd6gMtZRCjS81g" target="_gbc6F-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gbdhP-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gbc6LOiaEd6gMtZRCjS81g" target="_gbc6F-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">child</attribute>
    </edge>
    <edge id="_gbdhP-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gbc6F-iaEd6gMtZRCjS81g" target="_gbc6LOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gbc6LeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gbc6EuiaEd6gMtZRCjS81g" target="_gbc6FOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">has</attribute>
    </edge>
    <edge id="_gbc6LeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gbc6FOiaEd6gMtZRCjS81g" target="_gbc6EuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gbc6M-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gbc6FuiaEd6gMtZRCjS81g" target="_gbc6KOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">associationConnector</attribute>
    </edge>
    <edge id="_gbc6M-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gbc6KOiaEd6gMtZRCjS81g" target="_gbc6FuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gbdhIeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gbc6F-iaEd6gMtZRCjS81g" target="_gbc6IuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">resourceRole</attribute>
    </edge>
    <edge id="_gbdhIeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gbc6IuiaEd6gMtZRCjS81g" target="_gbc6F-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gbdhKuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gbc6GOiaEd6gMtZRCjS81g" target="_gbc6HuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">ioFlow</attribute>
    </edge>
    <edge id="_gbdhKuiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gbc6HuiaEd6gMtZRCjS81g" target="_gbc6GOiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gbdhLeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gbc6GeiaEd6gMtZRCjS81g" target="_gbc6H-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">controlFlow</attribute>
    </edge>
    <edge id="_gbdhLeiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gbc6H-iaEd6gMtZRCjS81g" target="_gbc6GeiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gbdhMOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gbc6GuiaEd6gMtZRCjS81g" target="_gbc6HeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">carries</attribute>
    </edge>
    <edge id="_gbdhMOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gbc6HeiaEd6gMtZRCjS81g" target="_gbc6GuiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gbdhM-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gbc6GuiaEd6gMtZRCjS81g" target="_gbc6IuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">plays</attribute>
    </edge>
    <edge id="_gbdhM-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gbc6IuiaEd6gMtZRCjS81g" target="_gbc6GuiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gbdhNuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gbc6IuiaEd6gMtZRCjS81g" target="_gbc6I-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">roleQualifier</attribute>
    </edge>
    <edge id="_gbdhNuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gbc6I-iaEd6gMtZRCjS81g" target="_gbc6IuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gbdhOeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gbc6KOiaEd6gMtZRCjS81g" target="_gbc6KuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">origin</attribute>
    </edge>
    <edge id="_gbdhOeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gbc6KuiaEd6gMtZRCjS81g" target="_gbc6KOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gbdhPOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gbc6KOiaEd6gMtZRCjS81g" target="_gbc6KuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">target</attribute>
    </edge>
    <edge id="_gbdhPOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gbc6KuiaEd6gMtZRCjS81g" target="_gbc6KOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gbeIMOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gbc6E-iaEd6gMtZRCjS81g" target="_gbc6EuiaEd6gMtZRCjS81g"/>
    <edge id="_gbeIMOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gbc6EuiaEd6gMtZRCjS81g" target="_gbc6E-iaEd6gMtZRCjS81g"/>
    <edge id="_gbeIMeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gbc6FeiaEd6gMtZRCjS81g" target="_gbc6EuiaEd6gMtZRCjS81g"/>
    <edge id="_gbeIMeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gbc6EuiaEd6gMtZRCjS81g" target="_gbc6FeiaEd6gMtZRCjS81g"/>
    <edge id="_gbevQOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gbc6FuiaEd6gMtZRCjS81g" target="_gbc6EuiaEd6gMtZRCjS81g"/>
    <edge id="_gbevQOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gbc6EuiaEd6gMtZRCjS81g" target="_gbc6FuiaEd6gMtZRCjS81g"/>
    <edge id="_gbevQeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gbc6F-iaEd6gMtZRCjS81g" target="_gbc6EuiaEd6gMtZRCjS81g"/>
    <edge id="_gbevQeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gbc6EuiaEd6gMtZRCjS81g" target="_gbc6F-iaEd6gMtZRCjS81g"/>
    <edge id="_gbevQuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gbc6F-iaEd6gMtZRCjS81g" target="_gbc6KuiaEd6gMtZRCjS81g"/>
    <edge id="_gbevQuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gbc6KuiaEd6gMtZRCjS81g" target="_gbc6F-iaEd6gMtZRCjS81g"/>
    <edge id="_gbevQ-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gbc6GOiaEd6gMtZRCjS81g" target="_gbc6EuiaEd6gMtZRCjS81g"/>
    <edge id="_gbevQ-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gbc6EuiaEd6gMtZRCjS81g" target="_gbc6GOiaEd6gMtZRCjS81g"/>
    <edge id="_gbevROiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gbc6GeiaEd6gMtZRCjS81g" target="_gbc6GOiaEd6gMtZRCjS81g"/>
    <edge id="_gbevROiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gbc6GOiaEd6gMtZRCjS81g" target="_gbc6GeiaEd6gMtZRCjS81g"/>
    <edge id="_gbevReiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gbc6GuiaEd6gMtZRCjS81g" target="_gbc6GOiaEd6gMtZRCjS81g"/>
    <edge id="_gbevReiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gbc6GOiaEd6gMtZRCjS81g" target="_gbc6GuiaEd6gMtZRCjS81g"/>
    <edge id="_gbevRuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gbc6G-iaEd6gMtZRCjS81g" target="_gbc6GuiaEd6gMtZRCjS81g"/>
    <edge id="_gbevRuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gbc6GuiaEd6gMtZRCjS81g" target="_gbc6G-iaEd6gMtZRCjS81g"/>
    <edge id="_gbevR-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gbc6HOiaEd6gMtZRCjS81g" target="_gbc6GuiaEd6gMtZRCjS81g"/>
    <edge id="_gbevR-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gbc6GuiaEd6gMtZRCjS81g" target="_gbc6HOiaEd6gMtZRCjS81g"/>
    <edge id="_gbevSOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gbc6HeiaEd6gMtZRCjS81g" target="_gbc6FuiaEd6gMtZRCjS81g"/>
    <edge id="_gbevSOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gbc6FuiaEd6gMtZRCjS81g" target="_gbc6HeiaEd6gMtZRCjS81g"/>
    <edge id="_gbevSeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gbc6HuiaEd6gMtZRCjS81g" target="_gbc6FuiaEd6gMtZRCjS81g"/>
    <edge id="_gbevSeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gbc6FuiaEd6gMtZRCjS81g" target="_gbc6HuiaEd6gMtZRCjS81g"/>
    <edge id="_gbevSuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gbc6H-iaEd6gMtZRCjS81g" target="_gbc6FuiaEd6gMtZRCjS81g"/>
    <edge id="_gbevSuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gbc6FuiaEd6gMtZRCjS81g" target="_gbc6H-iaEd6gMtZRCjS81g"/>
    <edge id="_gbevS-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gbc6IOiaEd6gMtZRCjS81g" target="_gbc6H-iaEd6gMtZRCjS81g"/>
    <edge id="_gbevS-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gbc6H-iaEd6gMtZRCjS81g" target="_gbc6IOiaEd6gMtZRCjS81g"/>
    <edge id="_gbevTOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gbc6IeiaEd6gMtZRCjS81g" target="_gbc6H-iaEd6gMtZRCjS81g"/>
    <edge id="_gbevTOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gbc6H-iaEd6gMtZRCjS81g" target="_gbc6IeiaEd6gMtZRCjS81g"/>
    <edge id="_gbevTeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gbc6IuiaEd6gMtZRCjS81g" target="_gbc6FeiaEd6gMtZRCjS81g"/>
    <edge id="_gbevTeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gbc6FeiaEd6gMtZRCjS81g" target="_gbc6IuiaEd6gMtZRCjS81g"/>
    <edge id="_gbevTuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gbc6JOiaEd6gMtZRCjS81g" target="_gbc6FeiaEd6gMtZRCjS81g"/>
    <edge id="_gbevTuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gbc6FeiaEd6gMtZRCjS81g" target="_gbc6JOiaEd6gMtZRCjS81g"/>
    <edge id="_gbevT-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gbc6JeiaEd6gMtZRCjS81g" target="_gbc6JOiaEd6gMtZRCjS81g"/>
    <edge id="_gbevT-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gbc6JOiaEd6gMtZRCjS81g" target="_gbc6JeiaEd6gMtZRCjS81g"/>
    <edge id="_gbfWUOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gbc6JuiaEd6gMtZRCjS81g" target="_gbc6JOiaEd6gMtZRCjS81g"/>
    <edge id="_gbfWUOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gbc6JOiaEd6gMtZRCjS81g" target="_gbc6JuiaEd6gMtZRCjS81g"/>
    <edge id="_gbfWUeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gbc6J-iaEd6gMtZRCjS81g" target="_gbc6JOiaEd6gMtZRCjS81g"/>
    <edge id="_gbfWUeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gbc6JOiaEd6gMtZRCjS81g" target="_gbc6J-iaEd6gMtZRCjS81g"/>
    <edge id="_gbfWUuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gbc6J-iaEd6gMtZRCjS81g" target="_gbc6KuiaEd6gMtZRCjS81g"/>
    <edge id="_gbfWUuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gbc6KuiaEd6gMtZRCjS81g" target="_gbc6J-iaEd6gMtZRCjS81g"/>
    <edge id="_gbfWU-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gbc6KeiaEd6gMtZRCjS81g" target="_gbc6F-iaEd6gMtZRCjS81g"/>
    <edge id="_gbfWU-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gbc6F-iaEd6gMtZRCjS81g" target="_gbc6KeiaEd6gMtZRCjS81g"/>
    <edge id="_gbfWVOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gbc6K-iaEd6gMtZRCjS81g" target="_gbc6KuiaEd6gMtZRCjS81g"/>
    <edge id="_gbfWVOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gbc6KuiaEd6gMtZRCjS81g" target="_gbc6K-iaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
