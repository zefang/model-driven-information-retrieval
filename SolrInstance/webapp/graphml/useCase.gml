<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_hV8zcOiaEd6gMtZRCjS81g" projectName="UseCase">
    <node className="Actor" id="_hV8zc-iaEd6gMtZRCjS81g"/>
    <node className="UseCase" id="_hV8zdOiaEd6gMtZRCjS81g"/>
    <node className="Extend" id="_hV8zdeiaEd6gMtZRCjS81g"/>
    <node className="Include" id="_hV9agOiaEd6gMtZRCjS81g"/>
    <node className="UseCaseContainer" id="_hV9ageiaEd6gMtZRCjS81g"/>
    <node className="BehavioredClassifier" id="_hV9aguiaEd6gMtZRCjS81g"/>
    <node className="NamedElement" id="_hV9ag-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Association" id="_hV9ahOiaEd6gMtZRCjS81g"/>
    <edge id="_hV9ahuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_hV8zdOiaEd6gMtZRCjS81g" target="_hV9agOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">include</attribute>
    </edge>
    <edge id="_hV9ahuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_hV9agOiaEd6gMtZRCjS81g" target="_hV8zdOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_hV9aieiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_hV8zdOiaEd6gMtZRCjS81g" target="_hV8zdeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">extend</attribute>
    </edge>
    <edge id="_hV9aieiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_hV8zdeiaEd6gMtZRCjS81g" target="_hV8zdOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_hV9akuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_hV9ageiaEd6gMtZRCjS81g" target="_hV9ag-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">ownedElement</attribute>
    </edge>
    <edge id="_hV9akuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_hV9ag-iaEd6gMtZRCjS81g" target="_hV9ageiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_hV9ajOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_hV8zdeiaEd6gMtZRCjS81g" target="_hV8zdOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">extension</attribute>
    </edge>
    <edge id="_hV9ajOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_hV8zdOiaEd6gMtZRCjS81g" target="_hV8zdeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_hV9aj-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_hV9agOiaEd6gMtZRCjS81g" target="_hV8zdOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">includingCase</attribute>
    </edge>
    <edge id="_hV9aj-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_hV8zdOiaEd6gMtZRCjS81g" target="_hV9agOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_hV9aleiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_hV9ahOiaEd6gMtZRCjS81g" target="_hV8zc-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">actor</attribute>
    </edge>
    <edge id="_hV9aleiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_hV8zc-iaEd6gMtZRCjS81g" target="_hV9ahOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_hV9amOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_hV9ahOiaEd6gMtZRCjS81g" target="_hV8zdOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">useCase</attribute>
    </edge>
    <edge id="_hV9amOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_hV8zdOiaEd6gMtZRCjS81g" target="_hV9ahOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_hV-BkOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_hV8zc-iaEd6gMtZRCjS81g" target="_hV9ag-iaEd6gMtZRCjS81g"/>
    <edge id="_hV-BkOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_hV9ag-iaEd6gMtZRCjS81g" target="_hV8zc-iaEd6gMtZRCjS81g"/>
    <edge id="_hV-BkeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_hV8zdOiaEd6gMtZRCjS81g" target="_hV9ag-iaEd6gMtZRCjS81g"/>
    <edge id="_hV-BkeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_hV9ag-iaEd6gMtZRCjS81g" target="_hV8zdOiaEd6gMtZRCjS81g"/>
    <edge id="_hV-BkuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_hV9ahOiaEd6gMtZRCjS81g" target="_hV9ag-iaEd6gMtZRCjS81g"/>
    <edge id="_hV-BkuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_hV9ag-iaEd6gMtZRCjS81g" target="_hV9ahOiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
