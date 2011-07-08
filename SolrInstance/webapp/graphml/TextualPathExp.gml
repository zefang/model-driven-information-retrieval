<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_gVrCMOiaEd6gMtZRCjS81g" projectName="TextualPathExp">
    <node className="TextualPathExp" id="_gVrCM-iaEd6gMtZRCjS81g"/>
    <node className="Path" id="_gVrCNOiaEd6gMtZRCjS81g"/>
    <node className="Transition" id="_gVrCNeiaEd6gMtZRCjS81g">
      <attribute>isMultiple</attribute>
    </node>
    <node className="AlternativeTrans" id="_gVrCNuiaEd6gMtZRCjS81g"/>
    <node className="PrimitiveTrans" id="_gVrCN-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <edge id="_gVrCOuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gVrCM-iaEd6gMtZRCjS81g" target="_gVrCNOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">path</attribute>
    </edge>
    <edge id="_gVrCOuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gVrCNOiaEd6gMtZRCjS81g" target="_gVrCM-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gVrpQeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gVrCNOiaEd6gMtZRCjS81g" target="_gVrCNeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">transitions</attribute>
    </edge>
    <edge id="_gVrpQeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gVrCNeiaEd6gMtZRCjS81g" target="_gVrCNOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gVrpROiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gVrCNuiaEd6gMtZRCjS81g" target="_gVrCNOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">altPaths</attribute>
    </edge>
    <edge id="_gVrpROiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gVrCNOiaEd6gMtZRCjS81g" target="_gVrCNuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gVrpSeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gVrCNuiaEd6gMtZRCjS81g" target="_gVrCNeiaEd6gMtZRCjS81g"/>
    <edge id="_gVrpSeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gVrCNeiaEd6gMtZRCjS81g" target="_gVrCNuiaEd6gMtZRCjS81g"/>
    <edge id="_gVrpSuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gVrCN-iaEd6gMtZRCjS81g" target="_gVrCNeiaEd6gMtZRCjS81g"/>
    <edge id="_gVrpSuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gVrCNeiaEd6gMtZRCjS81g" target="_gVrCN-iaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
