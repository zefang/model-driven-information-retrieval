<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_eZcmEOiaEd6gMtZRCjS81g" projectName="IEEE1471">
    <node className="Viewpoint" id="_eZcmEuiaEd6gMtZRCjS81g"/>
    <node className="Concern" id="_eZcmE-iaEd6gMtZRCjS81g"/>
    <node className="Stakeholder" id="_eZcmFOiaEd6gMtZRCjS81g"/>
    <node className="ViewpointImport" id="_eZcmFeiaEd6gMtZRCjS81g"/>
    <node className="ViewpointDependency" id="_eZcmFuiaEd6gMtZRCjS81g"/>
    <node className="Process" id="_eZcmF-iaEd6gMtZRCjS81g"/>
    <node className="Technique" id="_eZcmGOiaEd6gMtZRCjS81g"/>
    <node className="AnalysisMethod" id="_eZcmGeiaEd6gMtZRCjS81g"/>
    <node className="ArchitecturalConstruct" id="_eZcmGuiaEd6gMtZRCjS81g"/>
    <node className="Rule" id="_eZcmG-iaEd6gMtZRCjS81g"/>
    <node className="ModelOrganization" id="_eZcmHOiaEd6gMtZRCjS81g"/>
    <node className="ModellingRule" id="_eZcmHeiaEd6gMtZRCjS81g"/>
    <node className="Language" id="_eZcmHuiaEd6gMtZRCjS81g"/>
    <node className="Mapping" id="_eZcmH-iaEd6gMtZRCjS81g"/>
    <node className="Pattern" id="_eZdNIOiaEd6gMtZRCjS81g"/>
    <edge id="_eZdNMOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eZcmEuiaEd6gMtZRCjS81g" target="_eZcmGuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">architecturalConstruct</attribute>
    </edge>
    <edge id="_eZdNMOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eZcmGuiaEd6gMtZRCjS81g" target="_eZcmEuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eZdNM-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eZcmEuiaEd6gMtZRCjS81g" target="_eZcmF-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">process</attribute>
    </edge>
    <edge id="_eZdNM-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eZcmF-iaEd6gMtZRCjS81g" target="_eZcmEuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eZdNIeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eZcmEuiaEd6gMtZRCjS81g" target="_eZcmFeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">source</attribute>
    </edge>
    <edge id="_eZdNIeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eZcmFeiaEd6gMtZRCjS81g" target="_eZcmEuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eZdNJOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eZcmEuiaEd6gMtZRCjS81g" target="_eZcmE-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">covers</attribute>
    </edge>
    <edge id="_eZdNJOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eZcmE-iaEd6gMtZRCjS81g" target="_eZcmEuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eZdNJ-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eZcmEuiaEd6gMtZRCjS81g" target="_eZcmFuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">supplierDependency</attribute>
    </edge>
    <edge id="_eZdNJ-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eZcmFuiaEd6gMtZRCjS81g" target="_eZcmEuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eZdNKuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eZcmEuiaEd6gMtZRCjS81g" target="_eZcmFuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">clientDependency</attribute>
    </edge>
    <edge id="_eZdNKuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eZcmFuiaEd6gMtZRCjS81g" target="_eZcmEuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eZdNLeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eZcmEuiaEd6gMtZRCjS81g" target="_eZcmFOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">isImportTo</attribute>
    </edge>
    <edge id="_eZdNLeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eZcmFOiaEd6gMtZRCjS81g" target="_eZcmEuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eZdNNuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eZcmFOiaEd6gMtZRCjS81g" target="_eZcmE-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">concerns</attribute>
    </edge>
    <edge id="_eZdNNuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eZcmE-iaEd6gMtZRCjS81g" target="_eZcmFOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eZdNOeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eZcmF-iaEd6gMtZRCjS81g" target="_eZcmGOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">methodology</attribute>
    </edge>
    <edge id="_eZdNOeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eZcmGOiaEd6gMtZRCjS81g" target="_eZcmF-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eZdNPOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eZcmGOiaEd6gMtZRCjS81g" target="_eZcmGeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">methods</attribute>
    </edge>
    <edge id="_eZdNPOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eZcmGeiaEd6gMtZRCjS81g" target="_eZcmGOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eZdNP-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eZcmGOiaEd6gMtZRCjS81g" target="_eZcmG-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">applies</attribute>
    </edge>
    <edge id="_eZdNP-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eZcmG-iaEd6gMtZRCjS81g" target="_eZcmGOiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_eZdNQuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eZcmGeiaEd6gMtZRCjS81g" target="_eZcmHuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">analysis</attribute>
    </edge>
    <edge id="_eZdNQuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eZcmHuiaEd6gMtZRCjS81g" target="_eZcmGeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eZdNReiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eZcmG-iaEd6gMtZRCjS81g" target="_eZcmHuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">guidance</attribute>
    </edge>
    <edge id="_eZdNReiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eZcmHuiaEd6gMtZRCjS81g" target="_eZcmG-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eZdNSOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eZcmH-iaEd6gMtZRCjS81g" target="_eZcmHuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">input</attribute>
    </edge>
    <edge id="_eZdNSOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eZcmHuiaEd6gMtZRCjS81g" target="_eZcmH-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eZdNS-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eZcmH-iaEd6gMtZRCjS81g" target="_eZcmHuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">ouput</attribute>
    </edge>
    <edge id="_eZdNS-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eZcmHuiaEd6gMtZRCjS81g" target="_eZcmH-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eZd0MeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eZcmG-iaEd6gMtZRCjS81g" target="_eZcmGuiaEd6gMtZRCjS81g"/>
    <edge id="_eZd0MeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eZcmGuiaEd6gMtZRCjS81g" target="_eZcmG-iaEd6gMtZRCjS81g"/>
    <edge id="_eZd0MuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eZcmHOiaEd6gMtZRCjS81g" target="_eZcmG-iaEd6gMtZRCjS81g"/>
    <edge id="_eZd0MuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eZcmG-iaEd6gMtZRCjS81g" target="_eZcmHOiaEd6gMtZRCjS81g"/>
    <edge id="_eZebQOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eZcmHuiaEd6gMtZRCjS81g" target="_eZcmGuiaEd6gMtZRCjS81g"/>
    <edge id="_eZebQOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eZcmGuiaEd6gMtZRCjS81g" target="_eZcmHuiaEd6gMtZRCjS81g"/>
    <edge id="_eZebQeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eZcmH-iaEd6gMtZRCjS81g" target="_eZcmGuiaEd6gMtZRCjS81g"/>
    <edge id="_eZebQeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eZcmGuiaEd6gMtZRCjS81g" target="_eZcmH-iaEd6gMtZRCjS81g"/>
    <edge id="_eZebQuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eZdNIOiaEd6gMtZRCjS81g" target="_eZcmGuiaEd6gMtZRCjS81g"/>
    <edge id="_eZebQuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eZcmGuiaEd6gMtZRCjS81g" target="_eZdNIOiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
