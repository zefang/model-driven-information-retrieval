<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_ek19wOiaEd6gMtZRCjS81g" projectName="KDMSimplified">
    <node className="Element" id="_ek19w-iaEd6gMtZRCjS81g"/>
    <node className="ModelElement" id="_ek19xOiaEd6gMtZRCjS81g"/>
    <node className="KDMEntity" id="_ek19xeiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="KDMContainer" id="_ek19xuiaEd6gMtZRCjS81g"/>
    <node className="KDMGroup" id="_ek19x-iaEd6gMtZRCjS81g"/>
    <node className="KDMRelationship" id="_ek19yOiaEd6gMtZRCjS81g"/>
    <node className="Annotation" id="_ek19yeiaEd6gMtZRCjS81g">
      <attribute>note</attribute>
    </node>
    <node className="Attribute" id="_ek19yuiaEd6gMtZRCjS81g">
      <attribute>tag</attribute>
      <attribute>value</attribute>
    </node>
    <node className="KDMExtensionFamily" id="_ek19y-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Stereotype" id="_ek19zOiaEd6gMtZRCjS81g">
      <attribute>baseClass</attribute>
      <attribute>name</attribute>
    </node>
    <node className="TagDefinition" id="_ek19zeiaEd6gMtZRCjS81g">
      <attribute>tag</attribute>
      <attribute>type</attribute>
    </node>
    <node className="TaggedValue" id="_ek19zuiaEd6gMtZRCjS81g">
      <attribute>value</attribute>
    </node>
    <node className="KDMFramework" id="_ek19z-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="KDMModel" id="_ek190OiaEd6gMtZRCjS81g"/>
    <edge id="_ek193OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_ek19w-iaEd6gMtZRCjS81g" target="_ek19yeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">annotation</attribute>
    </edge>
    <edge id="_ek193OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_ek19yeiaEd6gMtZRCjS81g" target="_ek19w-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_ek2k0OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_ek19w-iaEd6gMtZRCjS81g" target="_ek19yuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">attribute</attribute>
    </edge>
    <edge id="_ek2k0OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_ek19yuiaEd6gMtZRCjS81g" target="_ek19w-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_ek2k0-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_ek19xOiaEd6gMtZRCjS81g" target="_ek19zuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">taggedValue</attribute>
    </edge>
    <edge id="_ek2k0-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_ek19zuiaEd6gMtZRCjS81g" target="_ek19xOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_ek2k4uiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_ek19xuiaEd6gMtZRCjS81g" target="_ek19xeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">ownedElement</attribute>
    </edge>
    <edge id="_ek2k4uiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_ek19xeiaEd6gMtZRCjS81g" target="_ek19xuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_ek2k5eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_ek19y-iaEd6gMtZRCjS81g" target="_ek19zOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">stereotype</attribute>
    </edge>
    <edge id="_ek2k5eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_ek19zOiaEd6gMtZRCjS81g" target="_ek19y-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_ek2k6OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_ek19zOiaEd6gMtZRCjS81g" target="_ek19zeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">tag</attribute>
    </edge>
    <edge id="_ek2k6OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_ek19zeiaEd6gMtZRCjS81g" target="_ek19zOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_ek2k7uiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_ek19z-iaEd6gMtZRCjS81g" target="_ek19y-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">extension</attribute>
    </edge>
    <edge id="_ek2k7uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_ek19y-iaEd6gMtZRCjS81g" target="_ek19z-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_ek2k8eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_ek190OiaEd6gMtZRCjS81g" target="_ek19xeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">ownedElement</attribute>
    </edge>
    <edge id="_ek2k8eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_ek19xeiaEd6gMtZRCjS81g" target="_ek190OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_ek2k9OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_ek190OiaEd6gMtZRCjS81g" target="_ek19yOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">ownedRelation</attribute>
    </edge>
    <edge id="_ek2k9OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_ek19yOiaEd6gMtZRCjS81g" target="_ek190OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_ek2k1uiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_ek19xOiaEd6gMtZRCjS81g" target="_ek19zOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">stereotype</attribute>
    </edge>
    <edge id="_ek2k1uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_ek19zOiaEd6gMtZRCjS81g" target="_ek19xOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_ek2k2eiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_ek19xeiaEd6gMtZRCjS81g" target="_ek19yOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">inbound</attribute>
    </edge>
    <edge id="_ek2k2eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_ek19yOiaEd6gMtZRCjS81g" target="_ek19xeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_ek2k3OiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_ek19xeiaEd6gMtZRCjS81g" target="_ek19yOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">outbound</attribute>
    </edge>
    <edge id="_ek2k3OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_ek19yOiaEd6gMtZRCjS81g" target="_ek19xeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_ek2k3-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_ek19xeiaEd6gMtZRCjS81g" target="_ek19x-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">group</attribute>
    </edge>
    <edge id="_ek2k3-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_ek19x-iaEd6gMtZRCjS81g" target="_ek19xeiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_ek2k6-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_ek19zuiaEd6gMtZRCjS81g" target="_ek19zeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">tag</attribute>
    </edge>
    <edge id="_ek2k6-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_ek19zeiaEd6gMtZRCjS81g" target="_ek19zuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_ek3L4OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_ek19xOiaEd6gMtZRCjS81g" target="_ek19w-iaEd6gMtZRCjS81g"/>
    <edge id="_ek3L4OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_ek19w-iaEd6gMtZRCjS81g" target="_ek19xOiaEd6gMtZRCjS81g"/>
    <edge id="_ek3L4eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_ek19xeiaEd6gMtZRCjS81g" target="_ek19xOiaEd6gMtZRCjS81g"/>
    <edge id="_ek3L4eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_ek19xOiaEd6gMtZRCjS81g" target="_ek19xeiaEd6gMtZRCjS81g"/>
    <edge id="_ek3L4uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_ek19xuiaEd6gMtZRCjS81g" target="_ek19xeiaEd6gMtZRCjS81g"/>
    <edge id="_ek3L4uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_ek19xeiaEd6gMtZRCjS81g" target="_ek19xuiaEd6gMtZRCjS81g"/>
    <edge id="_ek3L4-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_ek19x-iaEd6gMtZRCjS81g" target="_ek19xeiaEd6gMtZRCjS81g"/>
    <edge id="_ek3L4-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_ek19xeiaEd6gMtZRCjS81g" target="_ek19x-iaEd6gMtZRCjS81g"/>
    <edge id="_ek3L5OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_ek19yOiaEd6gMtZRCjS81g" target="_ek19xOiaEd6gMtZRCjS81g"/>
    <edge id="_ek3L5OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_ek19xOiaEd6gMtZRCjS81g" target="_ek19yOiaEd6gMtZRCjS81g"/>
    <edge id="_ek3L5eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_ek19yeiaEd6gMtZRCjS81g" target="_ek19w-iaEd6gMtZRCjS81g"/>
    <edge id="_ek3L5eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_ek19w-iaEd6gMtZRCjS81g" target="_ek19yeiaEd6gMtZRCjS81g"/>
    <edge id="_ek3L5uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_ek19yuiaEd6gMtZRCjS81g" target="_ek19w-iaEd6gMtZRCjS81g"/>
    <edge id="_ek3L5uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_ek19w-iaEd6gMtZRCjS81g" target="_ek19yuiaEd6gMtZRCjS81g"/>
    <edge id="_ek3L5-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_ek19y-iaEd6gMtZRCjS81g" target="_ek19w-iaEd6gMtZRCjS81g"/>
    <edge id="_ek3L5-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_ek19w-iaEd6gMtZRCjS81g" target="_ek19y-iaEd6gMtZRCjS81g"/>
    <edge id="_ek3L6OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_ek19zOiaEd6gMtZRCjS81g" target="_ek19w-iaEd6gMtZRCjS81g"/>
    <edge id="_ek3L6OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_ek19w-iaEd6gMtZRCjS81g" target="_ek19zOiaEd6gMtZRCjS81g"/>
    <edge id="_ek3y8OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_ek19zeiaEd6gMtZRCjS81g" target="_ek19w-iaEd6gMtZRCjS81g"/>
    <edge id="_ek3y8OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_ek19w-iaEd6gMtZRCjS81g" target="_ek19zeiaEd6gMtZRCjS81g"/>
    <edge id="_ek3y8eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_ek19zuiaEd6gMtZRCjS81g" target="_ek19w-iaEd6gMtZRCjS81g"/>
    <edge id="_ek3y8eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_ek19w-iaEd6gMtZRCjS81g" target="_ek19zuiaEd6gMtZRCjS81g"/>
    <edge id="_ek3y8uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_ek19z-iaEd6gMtZRCjS81g" target="_ek19w-iaEd6gMtZRCjS81g"/>
    <edge id="_ek3y8uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_ek19w-iaEd6gMtZRCjS81g" target="_ek19z-iaEd6gMtZRCjS81g"/>
    <edge id="_ek3y8-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_ek190OiaEd6gMtZRCjS81g" target="_ek19z-iaEd6gMtZRCjS81g"/>
    <edge id="_ek3y8-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_ek19z-iaEd6gMtZRCjS81g" target="_ek190OiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
