<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_eTiLUOiaEd6gMtZRCjS81g" projectName="Grafcet">
    <node className="LocatedElement" id="_eTiLU-iaEd6gMtZRCjS81g">
      <attribute>location</attribute>
    </node>
    <node className="NamedElement" id="_eTiLVOiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Grafcet" id="_eTiLVeiaEd6gMtZRCjS81g"/>
    <node className="Element" id="_eTiLVuiaEd6gMtZRCjS81g"/>
    <node className="Step" id="_eTiLV-iaEd6gMtZRCjS81g">
      <attribute>isInitial</attribute>
      <attribute>isActive</attribute>
      <attribute>action</attribute>
    </node>
    <node className="Transition" id="_eTiLWOiaEd6gMtZRCjS81g">
      <attribute>condition</attribute>
    </node>
    <node className="Connection" id="_eTkAgOiaEd6gMtZRCjS81g"/>
    <node className="StepToTransition" id="_eTkAgeiaEd6gMtZRCjS81g"/>
    <node className="TransitionToStep" id="_eTkAguiaEd6gMtZRCjS81g"/>
    <edge id="_eTkAieiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eTiLVeiaEd6gMtZRCjS81g" target="_eTiLVuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">elements</attribute>
    </edge>
    <edge id="_eTkAieiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eTiLVuiaEd6gMtZRCjS81g" target="_eTiLVeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eTknkeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eTiLVeiaEd6gMtZRCjS81g" target="_eTkAgOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">connections</attribute>
    </edge>
    <edge id="_eTknkeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eTkAgOiaEd6gMtZRCjS81g" target="_eTiLVeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eTknlOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eTiLV-iaEd6gMtZRCjS81g" target="_eTkAguiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">incomingConnections</attribute>
    </edge>
    <edge id="_eTknlOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eTkAguiaEd6gMtZRCjS81g" target="_eTiLV-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eTknl-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eTiLV-iaEd6gMtZRCjS81g" target="_eTkAgeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">outgoingConnections</attribute>
    </edge>
    <edge id="_eTknl-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eTkAgeiaEd6gMtZRCjS81g" target="_eTiLV-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eTknmuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eTiLWOiaEd6gMtZRCjS81g" target="_eTkAgeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">incomingConnections</attribute>
    </edge>
    <edge id="_eTknmuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eTkAgeiaEd6gMtZRCjS81g" target="_eTiLWOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eTknneiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eTiLWOiaEd6gMtZRCjS81g" target="_eTkAguiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">outgoingConnections</attribute>
    </edge>
    <edge id="_eTknneiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eTkAguiaEd6gMtZRCjS81g" target="_eTiLWOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eTknouiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eTiLVOiaEd6gMtZRCjS81g" target="_eTiLU-iaEd6gMtZRCjS81g"/>
    <edge id="_eTknouiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eTiLU-iaEd6gMtZRCjS81g" target="_eTiLVOiaEd6gMtZRCjS81g"/>
    <edge id="_eTkno-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eTiLVeiaEd6gMtZRCjS81g" target="_eTiLVOiaEd6gMtZRCjS81g"/>
    <edge id="_eTkno-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eTiLVOiaEd6gMtZRCjS81g" target="_eTiLVeiaEd6gMtZRCjS81g"/>
    <edge id="_eTlOoOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eTiLVuiaEd6gMtZRCjS81g" target="_eTiLVOiaEd6gMtZRCjS81g"/>
    <edge id="_eTlOoOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eTiLVOiaEd6gMtZRCjS81g" target="_eTiLVuiaEd6gMtZRCjS81g"/>
    <edge id="_eTlOoeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eTiLV-iaEd6gMtZRCjS81g" target="_eTiLVuiaEd6gMtZRCjS81g"/>
    <edge id="_eTlOoeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eTiLVuiaEd6gMtZRCjS81g" target="_eTiLV-iaEd6gMtZRCjS81g"/>
    <edge id="_eTlOouiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eTiLWOiaEd6gMtZRCjS81g" target="_eTiLVuiaEd6gMtZRCjS81g"/>
    <edge id="_eTlOouiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eTiLVuiaEd6gMtZRCjS81g" target="_eTiLWOiaEd6gMtZRCjS81g"/>
    <edge id="_eTlOo-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eTkAgOiaEd6gMtZRCjS81g" target="_eTiLVOiaEd6gMtZRCjS81g"/>
    <edge id="_eTlOo-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eTiLVOiaEd6gMtZRCjS81g" target="_eTkAgOiaEd6gMtZRCjS81g"/>
    <edge id="_eTlOpOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eTkAgeiaEd6gMtZRCjS81g" target="_eTkAgOiaEd6gMtZRCjS81g"/>
    <edge id="_eTlOpOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eTkAgOiaEd6gMtZRCjS81g" target="_eTkAgeiaEd6gMtZRCjS81g"/>
    <edge id="_eTlOpeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eTkAguiaEd6gMtZRCjS81g" target="_eTkAgOiaEd6gMtZRCjS81g"/>
    <edge id="_eTlOpeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eTkAgOiaEd6gMtZRCjS81g" target="_eTkAguiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
