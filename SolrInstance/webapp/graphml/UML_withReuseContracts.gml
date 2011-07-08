<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_gpMbIOiaEd6gMtZRCjS81g" projectName="UMLWithReuseContrats">
    <node className="ReuseContract" id="_gpMbI-iaEd6gMtZRCjS81g"/>
    <node className="Dependency" id="_gpMbJOiaEd6gMtZRCjS81g"/>
    <node className="ProviderClause" id="_gpMbJeiaEd6gMtZRCjS81g"/>
    <node className="Package" id="_gpMbJuiaEd6gMtZRCjS81g"/>
    <node className="ReuserClause" id="_gpMbJ-iaEd6gMtZRCjS81g"/>
    <node className="CompositeProvider" id="_gpMbKOiaEd6gMtZRCjS81g"/>
    <node className="BasicProvider" id="_gpMbKeiaEd6gMtZRCjS81g"/>
    <node className="CompositeReuser" id="_gpMbKuiaEd6gMtZRCjS81g"/>
    <node className="BasicReuser" id="_gpMbK-iaEd6gMtZRCjS81g"/>
    <edge id="_gpMbMuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gpMbJOiaEd6gMtZRCjS81g" target="_gpMbJOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">subDependency</attribute>
    </edge>
    <edge id="_gpMbMuiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gpMbJOiaEd6gMtZRCjS81g" target="_gpMbJOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gpMbNeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gpMbKOiaEd6gMtZRCjS81g" target="_gpMbI-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">subcontract</attribute>
    </edge>
    <edge id="_gpMbNeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gpMbI-iaEd6gMtZRCjS81g" target="_gpMbKOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gpMbOOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gpMbKuiaEd6gMtZRCjS81g" target="_gpMbJ-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">subreuser</attribute>
    </edge>
    <edge id="_gpMbOOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gpMbJ-iaEd6gMtZRCjS81g" target="_gpMbKuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gpMbLOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gpMbI-iaEd6gMtZRCjS81g" target="_gpMbJeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">supplier</attribute>
    </edge>
    <edge id="_gpMbLOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gpMbJeiaEd6gMtZRCjS81g" target="_gpMbI-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gpMbL-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gpMbI-iaEd6gMtZRCjS81g" target="_gpMbJ-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">client</attribute>
    </edge>
    <edge id="_gpMbL-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gpMbJ-iaEd6gMtZRCjS81g" target="_gpMbI-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gpNCMOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gpMbI-iaEd6gMtZRCjS81g" target="_gpMbJOiaEd6gMtZRCjS81g"/>
    <edge id="_gpNCMOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gpMbJOiaEd6gMtZRCjS81g" target="_gpMbI-iaEd6gMtZRCjS81g"/>
    <edge id="_gpNCMeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gpMbJeiaEd6gMtZRCjS81g" target="_gpMbJuiaEd6gMtZRCjS81g"/>
    <edge id="_gpNCMeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gpMbJuiaEd6gMtZRCjS81g" target="_gpMbJeiaEd6gMtZRCjS81g"/>
    <edge id="_gpNCMuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gpMbJ-iaEd6gMtZRCjS81g" target="_gpMbJuiaEd6gMtZRCjS81g"/>
    <edge id="_gpNCMuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gpMbJuiaEd6gMtZRCjS81g" target="_gpMbJ-iaEd6gMtZRCjS81g"/>
    <edge id="_gpNCM-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gpMbKOiaEd6gMtZRCjS81g" target="_gpMbJeiaEd6gMtZRCjS81g"/>
    <edge id="_gpNCM-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gpMbJeiaEd6gMtZRCjS81g" target="_gpMbKOiaEd6gMtZRCjS81g"/>
    <edge id="_gpNCNOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gpMbKeiaEd6gMtZRCjS81g" target="_gpMbJeiaEd6gMtZRCjS81g"/>
    <edge id="_gpNCNOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gpMbJeiaEd6gMtZRCjS81g" target="_gpMbKeiaEd6gMtZRCjS81g"/>
    <edge id="_gpNCNeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gpMbKuiaEd6gMtZRCjS81g" target="_gpMbJ-iaEd6gMtZRCjS81g"/>
    <edge id="_gpNCNeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gpMbJ-iaEd6gMtZRCjS81g" target="_gpMbKuiaEd6gMtZRCjS81g"/>
    <edge id="_gpNCNuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gpMbK-iaEd6gMtZRCjS81g" target="_gpMbJ-iaEd6gMtZRCjS81g"/>
    <edge id="_gpNCNuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gpMbJ-iaEd6gMtZRCjS81g" target="_gpMbK-iaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
