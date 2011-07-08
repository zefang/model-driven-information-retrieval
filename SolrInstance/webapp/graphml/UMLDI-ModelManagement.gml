<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_gjSncOiaEd6gMtZRCjS81g" projectName="Model_Management">
    <node className="Package" id="_gjSndeiaEd6gMtZRCjS81g"/>
    <node className="Model" id="_gjSnduiaEd6gMtZRCjS81g"/>
    <node className="Subsystem" id="_gjSnd-iaEd6gMtZRCjS81g">
      <attribute>isInstantiable</attribute>
    </node>
    <node className="ElementImport" id="_gjSneOiaEd6gMtZRCjS81g">
      <attribute>visibility</attribute>
      <attribute>alias</attribute>
      <attribute>isSpecification</attribute>
    </node>
    <node className="Element" id="_gjSneeiaEd6gMtZRCjS81g"/>
    <node className="ModelElement" id="_gjSneuiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>visibility</attribute>
      <attribute>isSpecification</attribute>
    </node>
    <node className="GeneralizableElement" id="_gjSne-iaEd6gMtZRCjS81g">
      <attribute>isRoot</attribute>
      <attribute>isLeaf</attribute>
      <attribute>isAbstract</attribute>
    </node>
    <node className="Namespace" id="_gjSnfOiaEd6gMtZRCjS81g"/>
    <node className="Classifier" id="_gjSnfeiaEd6gMtZRCjS81g"/>
    <node className="Feature" id="_gjSnfuiaEd6gMtZRCjS81g">
      <attribute>ownerScope</attribute>
    </node>
    <node className="Relationship" id="_gjTOgOiaEd6gMtZRCjS81g"/>
    <node className="Generalization" id="_gjTOgeiaEd6gMtZRCjS81g">
      <attribute>discriminator</attribute>
    </node>
    <edge id="_gjTOjuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gjSndeiaEd6gMtZRCjS81g" target="_gjSneOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">elementImport</attribute>
    </edge>
    <edge id="_gjTOjuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gjSneOiaEd6gMtZRCjS81g" target="_gjSndeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gjTOl-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gjSnfOiaEd6gMtZRCjS81g" target="_gjSneuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">ownedElement</attribute>
    </edge>
    <edge id="_gjTOl-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gjSneuiaEd6gMtZRCjS81g" target="_gjSnfOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gjTOneiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gjSnfeiaEd6gMtZRCjS81g" target="_gjSnfuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">feature</attribute>
    </edge>
    <edge id="_gjTOneiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gjSnfuiaEd6gMtZRCjS81g" target="_gjSnfeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gjTOkeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gjSneOiaEd6gMtZRCjS81g" target="_gjSneuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">importedElement</attribute>
    </edge>
    <edge id="_gjTOkeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gjSneuiaEd6gMtZRCjS81g" target="_gjSneOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gjTOlOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gjSne-iaEd6gMtZRCjS81g" target="_gjTOgeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">generalization</attribute>
    </edge>
    <edge id="_gjTOlOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gjTOgeiaEd6gMtZRCjS81g" target="_gjSne-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gjTOmuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gjSnfeiaEd6gMtZRCjS81g" target="_gjTOgeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">powertypeRange</attribute>
    </edge>
    <edge id="_gjTOmuiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gjTOgeiaEd6gMtZRCjS81g" target="_gjSnfeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gjTOoOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gjTOgeiaEd6gMtZRCjS81g" target="_gjSne-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">parent</attribute>
    </edge>
    <edge id="_gjTOoOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gjSne-iaEd6gMtZRCjS81g" target="_gjTOgeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gjT1kOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gjSndeiaEd6gMtZRCjS81g" target="_gjSne-iaEd6gMtZRCjS81g"/>
    <edge id="_gjT1kOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gjSne-iaEd6gMtZRCjS81g" target="_gjSndeiaEd6gMtZRCjS81g"/>
    <edge id="_gjT1keiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gjSndeiaEd6gMtZRCjS81g" target="_gjSnfOiaEd6gMtZRCjS81g"/>
    <edge id="_gjT1keiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gjSnfOiaEd6gMtZRCjS81g" target="_gjSndeiaEd6gMtZRCjS81g"/>
    <edge id="_gjT1kuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gjSnduiaEd6gMtZRCjS81g" target="_gjSndeiaEd6gMtZRCjS81g"/>
    <edge id="_gjT1kuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gjSndeiaEd6gMtZRCjS81g" target="_gjSnduiaEd6gMtZRCjS81g"/>
    <edge id="_gjT1k-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gjSnd-iaEd6gMtZRCjS81g" target="_gjSndeiaEd6gMtZRCjS81g"/>
    <edge id="_gjT1k-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gjSndeiaEd6gMtZRCjS81g" target="_gjSnd-iaEd6gMtZRCjS81g"/>
    <edge id="_gjT1lOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gjSnd-iaEd6gMtZRCjS81g" target="_gjSnfeiaEd6gMtZRCjS81g"/>
    <edge id="_gjT1lOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gjSnfeiaEd6gMtZRCjS81g" target="_gjSnd-iaEd6gMtZRCjS81g"/>
    <edge id="_gjT1leiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gjSneuiaEd6gMtZRCjS81g" target="_gjSneeiaEd6gMtZRCjS81g"/>
    <edge id="_gjT1leiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gjSneeiaEd6gMtZRCjS81g" target="_gjSneuiaEd6gMtZRCjS81g"/>
    <edge id="_gjT1luiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gjSne-iaEd6gMtZRCjS81g" target="_gjSneuiaEd6gMtZRCjS81g"/>
    <edge id="_gjT1luiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gjSneuiaEd6gMtZRCjS81g" target="_gjSne-iaEd6gMtZRCjS81g"/>
    <edge id="_gjUcoOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gjSnfOiaEd6gMtZRCjS81g" target="_gjSneuiaEd6gMtZRCjS81g"/>
    <edge id="_gjUcoOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gjSneuiaEd6gMtZRCjS81g" target="_gjSnfOiaEd6gMtZRCjS81g"/>
    <edge id="_gjUcoeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gjSnfeiaEd6gMtZRCjS81g" target="_gjSne-iaEd6gMtZRCjS81g"/>
    <edge id="_gjUcoeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gjSne-iaEd6gMtZRCjS81g" target="_gjSnfeiaEd6gMtZRCjS81g"/>
    <edge id="_gjUcouiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gjSnfeiaEd6gMtZRCjS81g" target="_gjSnfOiaEd6gMtZRCjS81g"/>
    <edge id="_gjUcouiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gjSnfOiaEd6gMtZRCjS81g" target="_gjSnfeiaEd6gMtZRCjS81g"/>
    <edge id="_gjUco-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gjSnfuiaEd6gMtZRCjS81g" target="_gjSneuiaEd6gMtZRCjS81g"/>
    <edge id="_gjUco-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gjSneuiaEd6gMtZRCjS81g" target="_gjSnfuiaEd6gMtZRCjS81g"/>
    <edge id="_gjUcpOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gjTOgOiaEd6gMtZRCjS81g" target="_gjSneuiaEd6gMtZRCjS81g"/>
    <edge id="_gjUcpOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gjSneuiaEd6gMtZRCjS81g" target="_gjTOgOiaEd6gMtZRCjS81g"/>
    <edge id="_gjUcpeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gjTOgeiaEd6gMtZRCjS81g" target="_gjTOgOiaEd6gMtZRCjS81g"/>
    <edge id="_gjUcpeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gjTOgOiaEd6gMtZRCjS81g" target="_gjTOgeiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
