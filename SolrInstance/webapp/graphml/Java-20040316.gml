<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_ed3MAOiaEd6gMtZRCjS81g" projectName="JAVA">
    <node className="JavaElement" id="_ed3MA-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="ClassFeature" id="_ed3MBOiaEd6gMtZRCjS81g">
      <attribute>isFinal</attribute>
    </node>
    <node className="ClassMember" id="_ed3MBeiaEd6gMtZRCjS81g">
      <attribute>isStatic</attribute>
      <attribute>isPublic</attribute>
    </node>
    <node className="Field" id="_ed3MBuiaEd6gMtZRCjS81g"/>
    <node className="JavaClass" id="_ed3MB-iaEd6gMtZRCjS81g">
      <attribute>isAbstract</attribute>
      <attribute>isStatic</attribute>
      <attribute>isPublic</attribute>
    </node>
    <node className="Method" id="_ed3MCOiaEd6gMtZRCjS81g"/>
    <node className="Package" id="_ed3MCeiaEd6gMtZRCjS81g"/>
    <node className="PrimitiveType" id="_ed3MCuiaEd6gMtZRCjS81g"/>
    <node className="FeatureParameter" id="_ed3MC-iaEd6gMtZRCjS81g"/>
    <edge id="_ed3zEuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_ed3MB-iaEd6gMtZRCjS81g" target="_ed3MBeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">members</attribute>
    </edge>
    <edge id="_ed3zEuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_ed3MBeiaEd6gMtZRCjS81g" target="_ed3MB-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_ed3zGOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_ed3MCOiaEd6gMtZRCjS81g" target="_ed3MC-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">parameters</attribute>
    </edge>
    <edge id="_ed3zGOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_ed3MC-iaEd6gMtZRCjS81g" target="_ed3MCOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_ed3zG-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_ed3MCeiaEd6gMtZRCjS81g" target="_ed3MB-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">classes</attribute>
    </edge>
    <edge id="_ed3zG-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_ed3MB-iaEd6gMtZRCjS81g" target="_ed3MCeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_ed3ME-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_ed3MBeiaEd6gMtZRCjS81g" target="_ed3MB-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">type</attribute>
    </edge>
    <edge id="_ed3ME-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_ed3MB-iaEd6gMtZRCjS81g" target="_ed3MBeiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_ed3zFeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_ed3MB-iaEd6gMtZRCjS81g" target="_ed3MC-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">parameters</attribute>
    </edge>
    <edge id="_ed3zFeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_ed3MC-iaEd6gMtZRCjS81g" target="_ed3MB-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_ed3zIOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_ed3MBOiaEd6gMtZRCjS81g" target="_ed3MA-iaEd6gMtZRCjS81g"/>
    <edge id="_ed3zIOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_ed3MA-iaEd6gMtZRCjS81g" target="_ed3MBOiaEd6gMtZRCjS81g"/>
    <edge id="_ed3zIeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_ed3MBeiaEd6gMtZRCjS81g" target="_ed3MBOiaEd6gMtZRCjS81g"/>
    <edge id="_ed3zIeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_ed3MBOiaEd6gMtZRCjS81g" target="_ed3MBeiaEd6gMtZRCjS81g"/>
    <edge id="_ed4aIOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_ed3MBuiaEd6gMtZRCjS81g" target="_ed3MBeiaEd6gMtZRCjS81g"/>
    <edge id="_ed4aIOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_ed3MBeiaEd6gMtZRCjS81g" target="_ed3MBuiaEd6gMtZRCjS81g"/>
    <edge id="_ed4aIeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_ed3MB-iaEd6gMtZRCjS81g" target="_ed3MBOiaEd6gMtZRCjS81g"/>
    <edge id="_ed4aIeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_ed3MBOiaEd6gMtZRCjS81g" target="_ed3MB-iaEd6gMtZRCjS81g"/>
    <edge id="_ed4aIuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_ed3MCOiaEd6gMtZRCjS81g" target="_ed3MBeiaEd6gMtZRCjS81g"/>
    <edge id="_ed4aIuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_ed3MBeiaEd6gMtZRCjS81g" target="_ed3MCOiaEd6gMtZRCjS81g"/>
    <edge id="_ed4aI-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_ed3MCeiaEd6gMtZRCjS81g" target="_ed3MA-iaEd6gMtZRCjS81g"/>
    <edge id="_ed4aI-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_ed3MA-iaEd6gMtZRCjS81g" target="_ed3MCeiaEd6gMtZRCjS81g"/>
    <edge id="_ed4aJOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_ed3MCuiaEd6gMtZRCjS81g" target="_ed3MB-iaEd6gMtZRCjS81g"/>
    <edge id="_ed4aJOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_ed3MB-iaEd6gMtZRCjS81g" target="_ed3MCuiaEd6gMtZRCjS81g"/>
    <edge id="_ed4aJeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_ed3MC-iaEd6gMtZRCjS81g" target="_ed3MBOiaEd6gMtZRCjS81g"/>
    <edge id="_ed4aJeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_ed3MBOiaEd6gMtZRCjS81g" target="_ed3MC-iaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
