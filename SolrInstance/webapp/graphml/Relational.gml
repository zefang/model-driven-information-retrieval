<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_gCVPcOiaEd6gMtZRCjS81g" projectName="Relational">
    <node className="Named" id="_gCVPc-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Table" id="_gCVPdOiaEd6gMtZRCjS81g"/>
    <node className="Column" id="_gCVPdeiaEd6gMtZRCjS81g"/>
    <node className="Type" id="_gCVPduiaEd6gMtZRCjS81g"/>
    <edge id="_gCVPeOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gCVPdOiaEd6gMtZRCjS81g" target="_gCVPdeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">col</attribute>
    </edge>
    <edge id="_gCVPeOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gCVPdeiaEd6gMtZRCjS81g" target="_gCVPdOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gCVPe-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gCVPdOiaEd6gMtZRCjS81g" target="_gCVPdeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">key</attribute>
    </edge>
    <edge id="_gCVPe-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gCVPdeiaEd6gMtZRCjS81g" target="_gCVPdOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gCV2gOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gCVPdeiaEd6gMtZRCjS81g" target="_gCVPduiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">type</attribute>
    </edge>
    <edge id="_gCV2gOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gCVPduiaEd6gMtZRCjS81g" target="_gCVPdeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gCV2huiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gCVPdOiaEd6gMtZRCjS81g" target="_gCVPc-iaEd6gMtZRCjS81g"/>
    <edge id="_gCV2huiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gCVPc-iaEd6gMtZRCjS81g" target="_gCVPdOiaEd6gMtZRCjS81g"/>
    <edge id="_gCV2h-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gCVPdeiaEd6gMtZRCjS81g" target="_gCVPc-iaEd6gMtZRCjS81g"/>
    <edge id="_gCV2h-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gCVPc-iaEd6gMtZRCjS81g" target="_gCVPdeiaEd6gMtZRCjS81g"/>
    <edge id="_gCV2iOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gCVPduiaEd6gMtZRCjS81g" target="_gCVPc-iaEd6gMtZRCjS81g"/>
    <edge id="_gCV2iOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gCVPc-iaEd6gMtZRCjS81g" target="_gCVPduiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
