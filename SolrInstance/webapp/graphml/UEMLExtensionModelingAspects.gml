<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_gcFzQOiaEd6gMtZRCjS81g" projectName="UEML">
    <node className="UEMLObject" id="_gcFzQuiaEd6gMtZRCjS81g"/>
    <node className="UEMLModel" id="_gcFzQ-iaEd6gMtZRCjS81g"/>
    <node className="Geometry" id="_gcFzROiaEd6gMtZRCjS81g"/>
    <node className="Port" id="_gcFzReiaEd6gMtZRCjS81g"/>
    <node className="Flow" id="_gcFzRuiaEd6gMtZRCjS81g"/>
    <node className="Activity" id="_gcFzR-iaEd6gMtZRCjS81g"/>
    <node className="Object" id="_gcFzSOiaEd6gMtZRCjS81g"/>
    <node className="InformationObject" id="_gcFzSeiaEd6gMtZRCjS81g"/>
    <node className="Resource" id="_gcFzSuiaEd6gMtZRCjS81g"/>
    <node className="MaterialResource" id="_gcFzS-iaEd6gMtZRCjS81g"/>
    <node className="HumanResource" id="_gcFzTOiaEd6gMtZRCjS81g"/>
    <node className="ResourceFlow" id="_gcFzTeiaEd6gMtZRCjS81g"/>
    <node className="IOFlow" id="_gcFzTuiaEd6gMtZRCjS81g"/>
    <node className="ControlFlow" id="_gcFzT-iaEd6gMtZRCjS81g"/>
    <node className="TriggerFlow" id="_gcFzUOiaEd6gMtZRCjS81g"/>
    <node className="ConstraintFlow" id="_gcFzUeiaEd6gMtZRCjS81g"/>
    <node className="ResourceRole" id="_gcFzUuiaEd6gMtZRCjS81g"/>
    <node className="RoleType" id="_gcFzU-iaEd6gMtZRCjS81g"/>
    <node className="Anchor" id="_gcFzVOiaEd6gMtZRCjS81g"/>
    <node className="OutputPort" id="_gcFzVeiaEd6gMtZRCjS81g"/>
    <node className="InputPort" id="_gcFzVuiaEd6gMtZRCjS81g"/>
    <node className="ConnectionOperator" id="_gcFzV-iaEd6gMtZRCjS81g"/>
    <node className="AssociationConnector" id="_gcFzWOiaEd6gMtZRCjS81g"/>
    <node className="ResourceType" id="_gcFzWeiaEd6gMtZRCjS81g"/>
    <node className="ActivityType" id="_gcFzWuiaEd6gMtZRCjS81g"/>
    <edge id="_gcFzXuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gcFzQ-iaEd6gMtZRCjS81g" target="_gcFzQuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">contains</attribute>
    </edge>
    <edge id="_gcFzXuiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gcFzQuiaEd6gMtZRCjS81g" target="_gcFzQ-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gcGaVuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gcFzR-iaEd6gMtZRCjS81g" target="_gcFzR-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">child</attribute>
    </edge>
    <edge id="_gcGaVuiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gcFzR-iaEd6gMtZRCjS81g" target="_gcFzR-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gcGaWeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gcFzR-iaEd6gMtZRCjS81g" target="_gcFzVeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">hasOutput</attribute>
    </edge>
    <edge id="_gcGaWeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gcFzVeiaEd6gMtZRCjS81g" target="_gcFzR-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gcGaXOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gcFzR-iaEd6gMtZRCjS81g" target="_gcFzVuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">hasInput</attribute>
    </edge>
    <edge id="_gcGaXOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gcFzVuiaEd6gMtZRCjS81g" target="_gcFzR-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gcFzW-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gcFzQuiaEd6gMtZRCjS81g" target="_gcFzROiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">has</attribute>
    </edge>
    <edge id="_gcFzW-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gcFzROiaEd6gMtZRCjS81g" target="_gcFzQuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gcGaUOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gcFzRuiaEd6gMtZRCjS81g" target="_gcFzWOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">associationConnector</attribute>
    </edge>
    <edge id="_gcGaUOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gcFzWOiaEd6gMtZRCjS81g" target="_gcFzRuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gcGaU-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gcFzR-iaEd6gMtZRCjS81g" target="_gcFzUuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">resourceRole</attribute>
    </edge>
    <edge id="_gcGaU-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gcFzUuiaEd6gMtZRCjS81g" target="_gcFzR-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gcGaX-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gcFzR-iaEd6gMtZRCjS81g" target="_gcFzWuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">activityType</attribute>
    </edge>
    <edge id="_gcGaX-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gcFzWuiaEd6gMtZRCjS81g" target="_gcFzR-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gcGaYuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gcFzSOiaEd6gMtZRCjS81g" target="_gcFzTuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">ioFlow</attribute>
    </edge>
    <edge id="_gcGaYuiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gcFzTuiaEd6gMtZRCjS81g" target="_gcFzSOiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gcGaZeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gcFzSeiaEd6gMtZRCjS81g" target="_gcFzT-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">controlFlow</attribute>
    </edge>
    <edge id="_gcGaZeiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gcFzT-iaEd6gMtZRCjS81g" target="_gcFzSeiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gcGaaOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gcFzSuiaEd6gMtZRCjS81g" target="_gcFzTeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">carries</attribute>
    </edge>
    <edge id="_gcGaaOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gcFzTeiaEd6gMtZRCjS81g" target="_gcFzSuiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gcGaa-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gcFzSuiaEd6gMtZRCjS81g" target="_gcFzUuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">plays</attribute>
    </edge>
    <edge id="_gcGaa-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gcFzUuiaEd6gMtZRCjS81g" target="_gcFzSuiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gcGabuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gcFzSuiaEd6gMtZRCjS81g" target="_gcFzWeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">resourceType</attribute>
    </edge>
    <edge id="_gcGabuiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gcFzWeiaEd6gMtZRCjS81g" target="_gcFzSuiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gcGaceiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gcFzUuiaEd6gMtZRCjS81g" target="_gcFzU-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">roleQualifier</attribute>
    </edge>
    <edge id="_gcGaceiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gcFzU-iaEd6gMtZRCjS81g" target="_gcFzUuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gcGadOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gcFzVOiaEd6gMtZRCjS81g" target="_gcFzWOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">target</attribute>
    </edge>
    <edge id="_gcGadOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gcFzWOiaEd6gMtZRCjS81g" target="_gcFzVOiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gcGad-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gcFzVOiaEd6gMtZRCjS81g" target="_gcFzWOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">origin</attribute>
    </edge>
    <edge id="_gcGad-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gcFzWOiaEd6gMtZRCjS81g" target="_gcFzVOiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gcHBYOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gcFzQ-iaEd6gMtZRCjS81g" target="_gcFzQuiaEd6gMtZRCjS81g"/>
    <edge id="_gcHBYOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gcFzQuiaEd6gMtZRCjS81g" target="_gcFzQ-iaEd6gMtZRCjS81g"/>
    <edge id="_gcHBYeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gcFzReiaEd6gMtZRCjS81g" target="_gcFzQuiaEd6gMtZRCjS81g"/>
    <edge id="_gcHBYeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gcFzQuiaEd6gMtZRCjS81g" target="_gcFzReiaEd6gMtZRCjS81g"/>
    <edge id="_gcHBYuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gcFzRuiaEd6gMtZRCjS81g" target="_gcFzQuiaEd6gMtZRCjS81g"/>
    <edge id="_gcHBYuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gcFzQuiaEd6gMtZRCjS81g" target="_gcFzRuiaEd6gMtZRCjS81g"/>
    <edge id="_gcHBY-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gcFzR-iaEd6gMtZRCjS81g" target="_gcFzQuiaEd6gMtZRCjS81g"/>
    <edge id="_gcHBY-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gcFzQuiaEd6gMtZRCjS81g" target="_gcFzR-iaEd6gMtZRCjS81g"/>
    <edge id="_gcHBZOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gcFzSOiaEd6gMtZRCjS81g" target="_gcFzQuiaEd6gMtZRCjS81g"/>
    <edge id="_gcHBZOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gcFzQuiaEd6gMtZRCjS81g" target="_gcFzSOiaEd6gMtZRCjS81g"/>
    <edge id="_gcHocOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gcFzSeiaEd6gMtZRCjS81g" target="_gcFzSOiaEd6gMtZRCjS81g"/>
    <edge id="_gcHocOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gcFzSOiaEd6gMtZRCjS81g" target="_gcFzSeiaEd6gMtZRCjS81g"/>
    <edge id="_gcHoceiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gcFzSuiaEd6gMtZRCjS81g" target="_gcFzSOiaEd6gMtZRCjS81g"/>
    <edge id="_gcHoceiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gcFzSOiaEd6gMtZRCjS81g" target="_gcFzSuiaEd6gMtZRCjS81g"/>
    <edge id="_gcHocuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gcFzS-iaEd6gMtZRCjS81g" target="_gcFzSuiaEd6gMtZRCjS81g"/>
    <edge id="_gcHocuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gcFzSuiaEd6gMtZRCjS81g" target="_gcFzS-iaEd6gMtZRCjS81g"/>
    <edge id="_gcHoc-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gcFzTOiaEd6gMtZRCjS81g" target="_gcFzSuiaEd6gMtZRCjS81g"/>
    <edge id="_gcHoc-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gcFzSuiaEd6gMtZRCjS81g" target="_gcFzTOiaEd6gMtZRCjS81g"/>
    <edge id="_gcHodOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gcFzTeiaEd6gMtZRCjS81g" target="_gcFzRuiaEd6gMtZRCjS81g"/>
    <edge id="_gcHodOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gcFzRuiaEd6gMtZRCjS81g" target="_gcFzTeiaEd6gMtZRCjS81g"/>
    <edge id="_gcHodeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gcFzTuiaEd6gMtZRCjS81g" target="_gcFzRuiaEd6gMtZRCjS81g"/>
    <edge id="_gcHodeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gcFzRuiaEd6gMtZRCjS81g" target="_gcFzTuiaEd6gMtZRCjS81g"/>
    <edge id="_gcHoduiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gcFzT-iaEd6gMtZRCjS81g" target="_gcFzRuiaEd6gMtZRCjS81g"/>
    <edge id="_gcHoduiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gcFzRuiaEd6gMtZRCjS81g" target="_gcFzT-iaEd6gMtZRCjS81g"/>
    <edge id="_gcHod-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gcFzUOiaEd6gMtZRCjS81g" target="_gcFzT-iaEd6gMtZRCjS81g"/>
    <edge id="_gcHod-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gcFzT-iaEd6gMtZRCjS81g" target="_gcFzUOiaEd6gMtZRCjS81g"/>
    <edge id="_gcHoeOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gcFzUeiaEd6gMtZRCjS81g" target="_gcFzT-iaEd6gMtZRCjS81g"/>
    <edge id="_gcHoeOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gcFzT-iaEd6gMtZRCjS81g" target="_gcFzUeiaEd6gMtZRCjS81g"/>
    <edge id="_gcHoeeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gcFzUuiaEd6gMtZRCjS81g" target="_gcFzReiaEd6gMtZRCjS81g"/>
    <edge id="_gcHoeeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gcFzReiaEd6gMtZRCjS81g" target="_gcFzUuiaEd6gMtZRCjS81g"/>
    <edge id="_gcHoeuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gcFzVOiaEd6gMtZRCjS81g" target="_gcFzReiaEd6gMtZRCjS81g"/>
    <edge id="_gcHoeuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gcFzReiaEd6gMtZRCjS81g" target="_gcFzVOiaEd6gMtZRCjS81g"/>
    <edge id="_gcHoe-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gcFzVeiaEd6gMtZRCjS81g" target="_gcFzVOiaEd6gMtZRCjS81g"/>
    <edge id="_gcHoe-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gcFzVOiaEd6gMtZRCjS81g" target="_gcFzVeiaEd6gMtZRCjS81g"/>
    <edge id="_gcHofOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gcFzVuiaEd6gMtZRCjS81g" target="_gcFzVOiaEd6gMtZRCjS81g"/>
    <edge id="_gcHofOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gcFzVOiaEd6gMtZRCjS81g" target="_gcFzVuiaEd6gMtZRCjS81g"/>
    <edge id="_gcHofeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gcFzV-iaEd6gMtZRCjS81g" target="_gcFzVOiaEd6gMtZRCjS81g"/>
    <edge id="_gcHofeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gcFzVOiaEd6gMtZRCjS81g" target="_gcFzV-iaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
