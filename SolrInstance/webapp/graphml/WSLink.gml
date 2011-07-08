<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_gsjRIOiaEd6gMtZRCjS81g" projectName="PrimitiveTypes">
    <node className="LocatedElement" id="_gsj4MeiaEd6gMtZRCjS81g">
      <attribute>location</attribute>
      <attribute>commentsBefore</attribute>
      <attribute>commentsAfter</attribute>
    </node>
    <node className="Network" id="_gsj4MuiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Services" id="_gsj4M-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>URL</attribute>
      <attribute>descriptions</attribute>
    </node>
    <node className="WebService" id="_gsj4NOiaEd6gMtZRCjS81g"/>
    <node className="RSS" id="_gsj4NeiaEd6gMtZRCjS81g"/>
    <edge id="_gsj4PeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gsj4MuiaEd6gMtZRCjS81g" target="_gsj4M-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">services</attribute>
    </edge>
    <edge id="_gsj4PeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gsj4M-iaEd6gMtZRCjS81g" target="_gsj4MuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gsj4QOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gsj4NOiaEd6gMtZRCjS81g" target="_gsj4M-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">linkedServices</attribute>
    </edge>
    <edge id="_gsj4QOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gsj4M-iaEd6gMtZRCjS81g" target="_gsj4NOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gsj4RuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gsj4MuiaEd6gMtZRCjS81g" target="_gsj4MeiaEd6gMtZRCjS81g"/>
    <edge id="_gsj4RuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gsj4MeiaEd6gMtZRCjS81g" target="_gsj4MuiaEd6gMtZRCjS81g"/>
    <edge id="_gsj4R-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gsj4M-iaEd6gMtZRCjS81g" target="_gsj4MeiaEd6gMtZRCjS81g"/>
    <edge id="_gsj4R-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gsj4MeiaEd6gMtZRCjS81g" target="_gsj4M-iaEd6gMtZRCjS81g"/>
    <edge id="_gskfQOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gsj4NOiaEd6gMtZRCjS81g" target="_gsj4M-iaEd6gMtZRCjS81g"/>
    <edge id="_gskfQOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gsj4M-iaEd6gMtZRCjS81g" target="_gsj4NOiaEd6gMtZRCjS81g"/>
    <edge id="_gskfQeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gsj4NeiaEd6gMtZRCjS81g" target="_gsj4M-iaEd6gMtZRCjS81g"/>
    <edge id="_gskfQeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gsj4M-iaEd6gMtZRCjS81g" target="_gsj4NeiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
