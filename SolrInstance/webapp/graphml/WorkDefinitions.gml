<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_gv0AgOiaEd6gMtZRCjS81g" projectName="WorkDefinitions">
    <node className="WorkDefinition" id="_gv0Ag-iaEd6gMtZRCjS81g"/>
    <node className="ProcessPerformer" id="_gv0AhOiaEd6gMtZRCjS81g"/>
    <node className="Role" id="_gv0AheiaEd6gMtZRCjS81g"/>
    <node className="WorkProduct" id="_gv0nkOiaEd6gMtZRCjS81g"/>
    <node className="Lifecycle" id="_gv0nkeiaEd6gMtZRCjS81g"/>
    <node className="Phase" id="_gv0nkuiaEd6gMtZRCjS81g"/>
    <node className="Iteration" id="_gv0nk-iaEd6gMtZRCjS81g"/>
    <node className="Activity" id="_gv0nlOiaEd6gMtZRCjS81g"/>
    <node className="Step" id="_gv0nleiaEd6gMtZRCjS81g"/>
    <edge id="_gv0nmeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gv0AhOiaEd6gMtZRCjS81g" target="_gv0Ag-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">features</attribute>
    </edge>
    <edge id="_gv0nmeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gv0Ag-iaEd6gMtZRCjS81g" target="_gv0AhOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gv0nn-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gv0nkeiaEd6gMtZRCjS81g" target="_gv0nkuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">phases</attribute>
    </edge>
    <edge id="_gv0nn-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gv0nkuiaEd6gMtZRCjS81g" target="_gv0nkeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gv0nouiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gv0nkuiaEd6gMtZRCjS81g" target="_gv0nk-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">iterations</attribute>
    </edge>
    <edge id="_gv0nouiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gv0nk-iaEd6gMtZRCjS81g" target="_gv0nkuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gv0npeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gv0nk-iaEd6gMtZRCjS81g" target="_gv0nlOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">activities</attribute>
    </edge>
    <edge id="_gv0npeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gv0nlOiaEd6gMtZRCjS81g" target="_gv0nk-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gv0nqOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gv0nlOiaEd6gMtZRCjS81g" target="_gv0nleiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">steps</attribute>
    </edge>
    <edge id="_gv0nqOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gv0nleiaEd6gMtZRCjS81g" target="_gv0nlOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gv0nluiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gv0Ag-iaEd6gMtZRCjS81g" target="_gv0Ag-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">parentWorks</attribute>
    </edge>
    <edge id="_gv0nluiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gv0Ag-iaEd6gMtZRCjS81g" target="_gv0Ag-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gv0nnOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gv0AheiaEd6gMtZRCjS81g" target="_gv0nkOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">products</attribute>
    </edge>
    <edge id="_gv0nnOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gv0nkOiaEd6gMtZRCjS81g" target="_gv0AheiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gv1OoOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gv0AheiaEd6gMtZRCjS81g" target="_gv0AhOiaEd6gMtZRCjS81g"/>
    <edge id="_gv1OoOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gv0AhOiaEd6gMtZRCjS81g" target="_gv0AheiaEd6gMtZRCjS81g"/>
    <edge id="_gv1OoeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gv0nkeiaEd6gMtZRCjS81g" target="_gv0Ag-iaEd6gMtZRCjS81g"/>
    <edge id="_gv1OoeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gv0Ag-iaEd6gMtZRCjS81g" target="_gv0nkeiaEd6gMtZRCjS81g"/>
    <edge id="_gv1OouiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gv0nkuiaEd6gMtZRCjS81g" target="_gv0Ag-iaEd6gMtZRCjS81g"/>
    <edge id="_gv1OouiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gv0Ag-iaEd6gMtZRCjS81g" target="_gv0nkuiaEd6gMtZRCjS81g"/>
    <edge id="_gv1Oo-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gv0nk-iaEd6gMtZRCjS81g" target="_gv0Ag-iaEd6gMtZRCjS81g"/>
    <edge id="_gv1Oo-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gv0Ag-iaEd6gMtZRCjS81g" target="_gv0nk-iaEd6gMtZRCjS81g"/>
    <edge id="_gv1OpOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gv0nlOiaEd6gMtZRCjS81g" target="_gv0Ag-iaEd6gMtZRCjS81g"/>
    <edge id="_gv1OpOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gv0Ag-iaEd6gMtZRCjS81g" target="_gv0nlOiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
