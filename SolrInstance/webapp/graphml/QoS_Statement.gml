<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_f_A1sOiaEd6gMtZRCjS81g" projectName="QoSStatement">
    <node className="QoSStatement" id="_f_A1s-iaEd6gMtZRCjS81g"/>
    <node className="SingleQoSStatement" id="_f_A1tOiaEd6gMtZRCjS81g"/>
    <node className="CoumpoundQoSStatement" id="_f_A1teiaEd6gMtZRCjS81g"/>
    <node className="Parameter" id="_f_A1tuiaEd6gMtZRCjS81g"/>
    <node className="QoSContraint" id="_f_A1t-iaEd6gMtZRCjS81g"/>
    <node className="QualificationKind" id="_f_A1uOiaEd6gMtZRCjS81g">
      <attribute>value</attribute>
    </node>
    <node className="QoSCharacteristic" id="_f_A1ueiaEd6gMtZRCjS81g"/>
    <edge id="_f_A1u-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_f_A1s-iaEd6gMtZRCjS81g" target="_f_A1tuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">parameter</attribute>
    </edge>
    <edge id="_f_A1u-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_f_A1tuiaEd6gMtZRCjS81g" target="_f_A1s-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_f_CD0eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_f_A1tOiaEd6gMtZRCjS81g" target="_f_A1t-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">contraint</attribute>
    </edge>
    <edge id="_f_CD0eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_f_A1t-iaEd6gMtZRCjS81g" target="_f_A1tOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_f_CD1OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_f_A1teiaEd6gMtZRCjS81g" target="_f_A1s-iaEd6gMtZRCjS81g">
      <attribute lowerValue="2" upperValue="*">statement</attribute>
    </edge>
    <edge id="_f_CD1OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_f_A1s-iaEd6gMtZRCjS81g" target="_f_A1teiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_f_CD1-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_f_A1t-iaEd6gMtZRCjS81g" target="_f_A1uOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">qualification</attribute>
    </edge>
    <edge id="_f_CD1-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_f_A1uOiaEd6gMtZRCjS81g" target="_f_A1t-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_f_CD3eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_f_A1tOiaEd6gMtZRCjS81g" target="_f_A1s-iaEd6gMtZRCjS81g"/>
    <edge id="_f_CD3eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_f_A1s-iaEd6gMtZRCjS81g" target="_f_A1tOiaEd6gMtZRCjS81g"/>
    <edge id="_f_Cq4OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_f_A1teiaEd6gMtZRCjS81g" target="_f_A1s-iaEd6gMtZRCjS81g"/>
    <edge id="_f_Cq4OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_f_A1s-iaEd6gMtZRCjS81g" target="_f_A1teiaEd6gMtZRCjS81g"/>
    <edge id="_f_Cq4eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_f_A1uOiaEd6gMtZRCjS81g" target="_f_A1ueiaEd6gMtZRCjS81g"/>
    <edge id="_f_Cq4eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_f_A1ueiaEd6gMtZRCjS81g" target="_f_A1uOiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
