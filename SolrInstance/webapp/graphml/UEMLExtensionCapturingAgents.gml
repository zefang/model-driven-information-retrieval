<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_gaPZIOiaEd6gMtZRCjS81g" projectName="UEML">
    <node className="UEMLObject" id="_gaPZIuiaEd6gMtZRCjS81g"/>
    <node className="UEMLModel" id="_gaPZI-iaEd6gMtZRCjS81g"/>
    <node className="Geometry" id="_gaPZJOiaEd6gMtZRCjS81g"/>
    <node className="Port" id="_gaPZJeiaEd6gMtZRCjS81g"/>
    <node className="Flow" id="_gaPZJuiaEd6gMtZRCjS81g"/>
    <node className="Activity" id="_gaPZJ-iaEd6gMtZRCjS81g"/>
    <node className="Object" id="_gaPZKOiaEd6gMtZRCjS81g"/>
    <node className="InformationObject" id="_gaPZKeiaEd6gMtZRCjS81g"/>
    <node className="Resource" id="_gaPZKuiaEd6gMtZRCjS81g"/>
    <node className="MaterialResource" id="_gaPZK-iaEd6gMtZRCjS81g"/>
    <node className="HumanResource" id="_gaPZLOiaEd6gMtZRCjS81g"/>
    <node className="ResourceFlow" id="_gaPZLeiaEd6gMtZRCjS81g"/>
    <node className="IOFlow" id="_gaPZLuiaEd6gMtZRCjS81g"/>
    <node className="ControlFlow" id="_gaPZL-iaEd6gMtZRCjS81g"/>
    <node className="TriggerFlow" id="_gaPZMOiaEd6gMtZRCjS81g"/>
    <node className="ConstraintFlow" id="_gaPZMeiaEd6gMtZRCjS81g"/>
    <node className="ResourceRole" id="_gaPZMuiaEd6gMtZRCjS81g"/>
    <node className="RoleType" id="_gaPZM-iaEd6gMtZRCjS81g"/>
    <node className="Anchor" id="_gaPZNOiaEd6gMtZRCjS81g"/>
    <node className="OutputPort" id="_gaPZNeiaEd6gMtZRCjS81g"/>
    <node className="InputPort" id="_gaPZNuiaEd6gMtZRCjS81g"/>
    <node className="ConnectionOperator" id="_gaPZN-iaEd6gMtZRCjS81g"/>
    <node className="AssociationConnector" id="_gaPZOOiaEd6gMtZRCjS81g"/>
    <node className="PassiveObject" id="_gaPZOeiaEd6gMtZRCjS81g"/>
    <node className="Commitment" id="_gaPZOuiaEd6gMtZRCjS81g"/>
    <node className="Contract" id="_gaPZO-iaEd6gMtZRCjS81g"/>
    <node className="Agent" id="_gaPZPOiaEd6gMtZRCjS81g"/>
    <node className="Software" id="_gaPZPeiaEd6gMtZRCjS81g"/>
    <node className="Organisation" id="_gaPZPuiaEd6gMtZRCjS81g"/>
    <edge id="_gaPZQuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gaPZI-iaEd6gMtZRCjS81g" target="_gaPZIuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">contains</attribute>
    </edge>
    <edge id="_gaPZQuiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gaPZIuiaEd6gMtZRCjS81g" target="_gaPZI-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gaPZS-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gaPZJ-iaEd6gMtZRCjS81g" target="_gaPZJ-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">child</attribute>
    </edge>
    <edge id="_gaPZS-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gaPZJ-iaEd6gMtZRCjS81g" target="_gaPZJ-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gaPZTuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gaPZJ-iaEd6gMtZRCjS81g" target="_gaPZNeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">hasOutput</attribute>
    </edge>
    <edge id="_gaPZTuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gaPZNeiaEd6gMtZRCjS81g" target="_gaPZJ-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gaQAMeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gaPZJ-iaEd6gMtZRCjS81g" target="_gaPZNuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">hasInput</attribute>
    </edge>
    <edge id="_gaQAMeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gaPZNuiaEd6gMtZRCjS81g" target="_gaPZJ-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gaPZP-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gaPZIuiaEd6gMtZRCjS81g" target="_gaPZJOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">has</attribute>
    </edge>
    <edge id="_gaPZP-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gaPZJOiaEd6gMtZRCjS81g" target="_gaPZIuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gaPZReiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gaPZJuiaEd6gMtZRCjS81g" target="_gaPZOOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">associationConnector</attribute>
    </edge>
    <edge id="_gaPZReiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gaPZOOiaEd6gMtZRCjS81g" target="_gaPZJuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gaPZSOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gaPZJ-iaEd6gMtZRCjS81g" target="_gaPZMuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">resourceRole</attribute>
    </edge>
    <edge id="_gaPZSOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gaPZMuiaEd6gMtZRCjS81g" target="_gaPZJ-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gaQANOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gaPZKOiaEd6gMtZRCjS81g" target="_gaPZLuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">ioFlow</attribute>
    </edge>
    <edge id="_gaQANOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gaPZLuiaEd6gMtZRCjS81g" target="_gaPZKOiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gaQAN-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gaPZKeiaEd6gMtZRCjS81g" target="_gaPZL-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">controlFlow</attribute>
    </edge>
    <edge id="_gaQAN-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gaPZL-iaEd6gMtZRCjS81g" target="_gaPZKeiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gaQAOuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gaPZKuiaEd6gMtZRCjS81g" target="_gaPZLeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">carries</attribute>
    </edge>
    <edge id="_gaQAOuiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gaPZLeiaEd6gMtZRCjS81g" target="_gaPZKuiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gaQAPeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gaPZKuiaEd6gMtZRCjS81g" target="_gaPZMuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">plays</attribute>
    </edge>
    <edge id="_gaQAPeiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gaPZMuiaEd6gMtZRCjS81g" target="_gaPZKuiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gaQAQOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gaPZKuiaEd6gMtZRCjS81g" target="_gaPZOuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">commitment</attribute>
    </edge>
    <edge id="_gaQAQOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gaPZOuiaEd6gMtZRCjS81g" target="_gaPZKuiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gaQAQ-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gaPZMuiaEd6gMtZRCjS81g" target="_gaPZM-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">roleQualifier</attribute>
    </edge>
    <edge id="_gaQAQ-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gaPZM-iaEd6gMtZRCjS81g" target="_gaPZMuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gaQARuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gaPZNOiaEd6gMtZRCjS81g" target="_gaPZOOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">target</attribute>
    </edge>
    <edge id="_gaQARuiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gaPZOOiaEd6gMtZRCjS81g" target="_gaPZNOiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gaQASeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gaPZNOiaEd6gMtZRCjS81g" target="_gaPZOOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">origin</attribute>
    </edge>
    <edge id="_gaQASeiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gaPZOOiaEd6gMtZRCjS81g" target="_gaPZNOiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gaQnQOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gaPZI-iaEd6gMtZRCjS81g" target="_gaPZIuiaEd6gMtZRCjS81g"/>
    <edge id="_gaQnQOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gaPZIuiaEd6gMtZRCjS81g" target="_gaPZI-iaEd6gMtZRCjS81g"/>
    <edge id="_gaQnQeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gaPZJeiaEd6gMtZRCjS81g" target="_gaPZIuiaEd6gMtZRCjS81g"/>
    <edge id="_gaQnQeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gaPZIuiaEd6gMtZRCjS81g" target="_gaPZJeiaEd6gMtZRCjS81g"/>
    <edge id="_gaQnQuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gaPZJuiaEd6gMtZRCjS81g" target="_gaPZIuiaEd6gMtZRCjS81g"/>
    <edge id="_gaQnQuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gaPZIuiaEd6gMtZRCjS81g" target="_gaPZJuiaEd6gMtZRCjS81g"/>
    <edge id="_gaQnQ-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gaPZJ-iaEd6gMtZRCjS81g" target="_gaPZIuiaEd6gMtZRCjS81g"/>
    <edge id="_gaQnQ-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gaPZIuiaEd6gMtZRCjS81g" target="_gaPZJ-iaEd6gMtZRCjS81g"/>
    <edge id="_gaQnROiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gaPZKOiaEd6gMtZRCjS81g" target="_gaPZIuiaEd6gMtZRCjS81g"/>
    <edge id="_gaQnROiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gaPZIuiaEd6gMtZRCjS81g" target="_gaPZKOiaEd6gMtZRCjS81g"/>
    <edge id="_gaQnReiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gaPZKeiaEd6gMtZRCjS81g" target="_gaPZKOiaEd6gMtZRCjS81g"/>
    <edge id="_gaQnReiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gaPZKOiaEd6gMtZRCjS81g" target="_gaPZKeiaEd6gMtZRCjS81g"/>
    <edge id="_gaQnRuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gaPZKuiaEd6gMtZRCjS81g" target="_gaPZKOiaEd6gMtZRCjS81g"/>
    <edge id="_gaQnRuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gaPZKOiaEd6gMtZRCjS81g" target="_gaPZKuiaEd6gMtZRCjS81g"/>
    <edge id="_gaQnR-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gaPZK-iaEd6gMtZRCjS81g" target="_gaPZOeiaEd6gMtZRCjS81g"/>
    <edge id="_gaQnR-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gaPZOeiaEd6gMtZRCjS81g" target="_gaPZK-iaEd6gMtZRCjS81g"/>
    <edge id="_gaQnSOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gaPZLOiaEd6gMtZRCjS81g" target="_gaPZPOiaEd6gMtZRCjS81g"/>
    <edge id="_gaQnSOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gaPZPOiaEd6gMtZRCjS81g" target="_gaPZLOiaEd6gMtZRCjS81g"/>
    <edge id="_gaQnSeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gaPZLeiaEd6gMtZRCjS81g" target="_gaPZJuiaEd6gMtZRCjS81g"/>
    <edge id="_gaQnSeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gaPZJuiaEd6gMtZRCjS81g" target="_gaPZLeiaEd6gMtZRCjS81g"/>
    <edge id="_gaROUOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gaPZLuiaEd6gMtZRCjS81g" target="_gaPZJuiaEd6gMtZRCjS81g"/>
    <edge id="_gaROUOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gaPZJuiaEd6gMtZRCjS81g" target="_gaPZLuiaEd6gMtZRCjS81g"/>
    <edge id="_gaROUeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gaPZL-iaEd6gMtZRCjS81g" target="_gaPZJuiaEd6gMtZRCjS81g"/>
    <edge id="_gaROUeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gaPZJuiaEd6gMtZRCjS81g" target="_gaPZL-iaEd6gMtZRCjS81g"/>
    <edge id="_gaROUuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gaPZMOiaEd6gMtZRCjS81g" target="_gaPZL-iaEd6gMtZRCjS81g"/>
    <edge id="_gaROUuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gaPZL-iaEd6gMtZRCjS81g" target="_gaPZMOiaEd6gMtZRCjS81g"/>
    <edge id="_gaROU-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gaPZMeiaEd6gMtZRCjS81g" target="_gaPZL-iaEd6gMtZRCjS81g"/>
    <edge id="_gaROU-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gaPZL-iaEd6gMtZRCjS81g" target="_gaPZMeiaEd6gMtZRCjS81g"/>
    <edge id="_gaROVOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gaPZMuiaEd6gMtZRCjS81g" target="_gaPZJeiaEd6gMtZRCjS81g"/>
    <edge id="_gaROVOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gaPZJeiaEd6gMtZRCjS81g" target="_gaPZMuiaEd6gMtZRCjS81g"/>
    <edge id="_gaROVeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gaPZNOiaEd6gMtZRCjS81g" target="_gaPZJeiaEd6gMtZRCjS81g"/>
    <edge id="_gaROVeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gaPZJeiaEd6gMtZRCjS81g" target="_gaPZNOiaEd6gMtZRCjS81g"/>
    <edge id="_gaROVuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gaPZNeiaEd6gMtZRCjS81g" target="_gaPZNOiaEd6gMtZRCjS81g"/>
    <edge id="_gaROVuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gaPZNOiaEd6gMtZRCjS81g" target="_gaPZNeiaEd6gMtZRCjS81g"/>
    <edge id="_gaROV-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gaPZNuiaEd6gMtZRCjS81g" target="_gaPZNOiaEd6gMtZRCjS81g"/>
    <edge id="_gaROV-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gaPZNOiaEd6gMtZRCjS81g" target="_gaPZNuiaEd6gMtZRCjS81g"/>
    <edge id="_gaROWOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gaPZN-iaEd6gMtZRCjS81g" target="_gaPZNOiaEd6gMtZRCjS81g"/>
    <edge id="_gaROWOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gaPZNOiaEd6gMtZRCjS81g" target="_gaPZN-iaEd6gMtZRCjS81g"/>
    <edge id="_gaROWeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gaPZOeiaEd6gMtZRCjS81g" target="_gaPZKuiaEd6gMtZRCjS81g"/>
    <edge id="_gaROWeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gaPZKuiaEd6gMtZRCjS81g" target="_gaPZOeiaEd6gMtZRCjS81g"/>
    <edge id="_gaROWuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gaPZOuiaEd6gMtZRCjS81g" target="_gaPZOeiaEd6gMtZRCjS81g"/>
    <edge id="_gaROWuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gaPZOeiaEd6gMtZRCjS81g" target="_gaPZOuiaEd6gMtZRCjS81g"/>
    <edge id="_gaROW-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gaPZO-iaEd6gMtZRCjS81g" target="_gaPZOeiaEd6gMtZRCjS81g"/>
    <edge id="_gaROW-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gaPZOeiaEd6gMtZRCjS81g" target="_gaPZO-iaEd6gMtZRCjS81g"/>
    <edge id="_gaROXOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gaPZPOiaEd6gMtZRCjS81g" target="_gaPZKuiaEd6gMtZRCjS81g"/>
    <edge id="_gaROXOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gaPZKuiaEd6gMtZRCjS81g" target="_gaPZPOiaEd6gMtZRCjS81g"/>
    <edge id="_gaROXeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gaPZPeiaEd6gMtZRCjS81g" target="_gaPZPOiaEd6gMtZRCjS81g"/>
    <edge id="_gaROXeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gaPZPOiaEd6gMtZRCjS81g" target="_gaPZPeiaEd6gMtZRCjS81g"/>
    <edge id="_gaROXuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gaPZPuiaEd6gMtZRCjS81g" target="_gaPZPOiaEd6gMtZRCjS81g"/>
    <edge id="_gaROXuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gaPZPOiaEd6gMtZRCjS81g" target="_gaPZPuiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
