<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_gtE1kOiaEd6gMtZRCjS81g" projectName="SimpleClass">
    <node className="Classifier" id="_gtE1k-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Class" id="_gtE1lOiaEd6gMtZRCjS81g">
      <attribute>is_persistent</attribute>
    </node>
    <node className="PrimitiveDataType" id="_gtE1leiaEd6gMtZRCjS81g"/>
    <node className="Association" id="_gtE1luiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Attribute" id="_gtE1l-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>is_primary</attribute>
    </node>
    <edge id="_gtE1oOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gtE1lOiaEd6gMtZRCjS81g" target="_gtE1l-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">attrs</attribute>
    </edge>
    <edge id="_gtE1oOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gtE1l-iaEd6gMtZRCjS81g" target="_gtE1lOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gtE1neiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gtE1lOiaEd6gMtZRCjS81g" target="_gtE1lOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">parent</attribute>
    </edge>
    <edge id="_gtE1neiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gtE1lOiaEd6gMtZRCjS81g" target="_gtE1lOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gtE1o-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gtE1luiaEd6gMtZRCjS81g" target="_gtE1lOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">src</attribute>
    </edge>
    <edge id="_gtE1o-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gtE1lOiaEd6gMtZRCjS81g" target="_gtE1luiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gtE1puiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gtE1luiaEd6gMtZRCjS81g" target="_gtE1lOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">dest</attribute>
    </edge>
    <edge id="_gtE1puiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gtE1lOiaEd6gMtZRCjS81g" target="_gtE1luiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gtFcoeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gtE1l-iaEd6gMtZRCjS81g" target="_gtE1k-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">type</attribute>
    </edge>
    <edge id="_gtFcoeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gtE1k-iaEd6gMtZRCjS81g" target="_gtE1l-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gtFcpuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gtE1lOiaEd6gMtZRCjS81g" target="_gtE1k-iaEd6gMtZRCjS81g"/>
    <edge id="_gtFcpuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gtE1k-iaEd6gMtZRCjS81g" target="_gtE1lOiaEd6gMtZRCjS81g"/>
    <edge id="_gtFcp-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gtE1leiaEd6gMtZRCjS81g" target="_gtE1k-iaEd6gMtZRCjS81g"/>
    <edge id="_gtFcp-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gtE1k-iaEd6gMtZRCjS81g" target="_gtE1leiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
