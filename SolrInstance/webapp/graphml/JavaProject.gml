<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_egJrAOiaEd6gMtZRCjS81g" projectName="JavaProject">
    <node className="JavaProject" id="_egJrA-iaEd6gMtZRCjS81g"/>
    <node className="PackageFragment" id="_egJrBOiaEd6gMtZRCjS81g"/>
    <node className="CompilationUnit" id="_egJrBeiaEd6gMtZRCjS81g"/>
    <node className="ImportDeclaration" id="_egJrBuiaEd6gMtZRCjS81g"/>
    <node className="Type" id="_egJrB-iaEd6gMtZRCjS81g">
      <attribute>elementName</attribute>
      <attribute>member_kind</attribute>
    </node>
    <node className="Field" id="_egJrCOiaEd6gMtZRCjS81g"/>
    <node className="Method" id="_egKSEOiaEd6gMtZRCjS81g">
      <attribute>returnType</attribute>
      <attribute>parametersName</attribute>
      <attribute>parametersType</attribute>
    </node>
    <node className="JavaElement" id="_egKSEeiaEd6gMtZRCjS81g"/>
    <node className="NamedElement" id="_egKSEuiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="PackageDeclaration" id="_egKSE-iaEd6gMtZRCjS81g"/>
    <edge id="_egKSGuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_egJrA-iaEd6gMtZRCjS81g" target="_egJrBOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">ownedPackageFragment</attribute>
    </edge>
    <edge id="_egKSGuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_egJrBOiaEd6gMtZRCjS81g" target="_egJrA-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_egKSHeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_egJrBOiaEd6gMtZRCjS81g" target="_egJrBeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">ownedCompilationUnit</attribute>
    </edge>
    <edge id="_egKSHeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_egJrBeiaEd6gMtZRCjS81g" target="_egJrBOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_egKSIOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_egJrBeiaEd6gMtZRCjS81g" target="_egJrBuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">importDeclaration</attribute>
    </edge>
    <edge id="_egKSIOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_egJrBuiaEd6gMtZRCjS81g" target="_egJrBeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_egKSI-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_egJrBeiaEd6gMtZRCjS81g" target="_egJrB-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">ownedType</attribute>
    </edge>
    <edge id="_egKSI-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_egJrB-iaEd6gMtZRCjS81g" target="_egJrBeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_egKSJuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_egJrBeiaEd6gMtZRCjS81g" target="_egKSE-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">declaration</attribute>
    </edge>
    <edge id="_egKSJuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_egKSE-iaEd6gMtZRCjS81g" target="_egJrBeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_egKSKeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_egJrB-iaEd6gMtZRCjS81g" target="_egJrB-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">nestedType</attribute>
    </edge>
    <edge id="_egKSKeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_egJrB-iaEd6gMtZRCjS81g" target="_egJrB-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_egKSL-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_egJrB-iaEd6gMtZRCjS81g" target="_egKSEOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">methods</attribute>
    </edge>
    <edge id="_egKSL-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_egKSEOiaEd6gMtZRCjS81g" target="_egJrB-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_egKSMuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_egJrB-iaEd6gMtZRCjS81g" target="_egJrCOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">fields</attribute>
    </edge>
    <edge id="_egKSMuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_egJrCOiaEd6gMtZRCjS81g" target="_egJrB-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_egKSLOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_egJrB-iaEd6gMtZRCjS81g" target="_egJrB-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">ownedSuperType</attribute>
    </edge>
    <edge id="_egKSLOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_egJrB-iaEd6gMtZRCjS81g" target="_egJrB-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_egK5IOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_egJrA-iaEd6gMtZRCjS81g" target="_egKSEuiaEd6gMtZRCjS81g"/>
    <edge id="_egK5IOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_egKSEuiaEd6gMtZRCjS81g" target="_egJrA-iaEd6gMtZRCjS81g"/>
    <edge id="_egK5IeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_egJrBOiaEd6gMtZRCjS81g" target="_egKSEuiaEd6gMtZRCjS81g"/>
    <edge id="_egK5IeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_egKSEuiaEd6gMtZRCjS81g" target="_egJrBOiaEd6gMtZRCjS81g"/>
    <edge id="_egK5IuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_egJrBeiaEd6gMtZRCjS81g" target="_egKSEuiaEd6gMtZRCjS81g"/>
    <edge id="_egK5IuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_egKSEuiaEd6gMtZRCjS81g" target="_egJrBeiaEd6gMtZRCjS81g"/>
    <edge id="_egK5I-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_egJrBuiaEd6gMtZRCjS81g" target="_egKSEuiaEd6gMtZRCjS81g"/>
    <edge id="_egK5I-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_egKSEuiaEd6gMtZRCjS81g" target="_egJrBuiaEd6gMtZRCjS81g"/>
    <edge id="_egK5JOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_egJrB-iaEd6gMtZRCjS81g" target="_egKSEeiaEd6gMtZRCjS81g"/>
    <edge id="_egK5JOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_egKSEeiaEd6gMtZRCjS81g" target="_egJrB-iaEd6gMtZRCjS81g"/>
    <edge id="_egK5JeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_egJrCOiaEd6gMtZRCjS81g" target="_egKSEeiaEd6gMtZRCjS81g"/>
    <edge id="_egK5JeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_egKSEeiaEd6gMtZRCjS81g" target="_egJrCOiaEd6gMtZRCjS81g"/>
    <edge id="_egK5JuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_egKSEOiaEd6gMtZRCjS81g" target="_egKSEeiaEd6gMtZRCjS81g"/>
    <edge id="_egK5JuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_egKSEeiaEd6gMtZRCjS81g" target="_egKSEOiaEd6gMtZRCjS81g"/>
    <edge id="_egK5J-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_egKSEeiaEd6gMtZRCjS81g" target="_egKSEuiaEd6gMtZRCjS81g"/>
    <edge id="_egK5J-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_egKSEuiaEd6gMtZRCjS81g" target="_egKSEeiaEd6gMtZRCjS81g"/>
    <edge id="_egK5KOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_egKSE-iaEd6gMtZRCjS81g" target="_egKSEuiaEd6gMtZRCjS81g"/>
    <edge id="_egK5KOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_egKSEuiaEd6gMtZRCjS81g" target="_egKSE-iaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
