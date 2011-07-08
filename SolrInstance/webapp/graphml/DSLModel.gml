<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_d82wsOiaEd6gMtZRCjS81g" projectName="DSLModel">
    <node className="Model" id="_d82ws-iaEd6gMtZRCjS81g">
      <attribute>domainModel</attribute>
    </node>
    <node className="Element" id="_d82wtOiaEd6gMtZRCjS81g">
      <attribute>type</attribute>
      <attribute>id</attribute>
    </node>
    <node className="ModelElement" id="_d82wteiaEd6gMtZRCjS81g"/>
    <node className="ModelElementLink" id="_d82wtuiaEd6gMtZRCjS81g"/>
    <node className="EmbeddingLink" id="_d82wt-iaEd6gMtZRCjS81g"/>
    <node className="ReferenceLink" id="_d82wuOiaEd6gMtZRCjS81g"/>
    <node className="NamedElement" id="_d82wueiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Property" id="_d82wuuiaEd6gMtZRCjS81g"/>
    <node className="Role" id="_d82wu-iaEd6gMtZRCjS81g"/>
    <node className="Value" id="_d82wvOiaEd6gMtZRCjS81g"/>
    <node className="IntegerValue" id="_d82wveiaEd6gMtZRCjS81g">
      <attribute>value</attribute>
    </node>
    <node className="DoubleValue" id="_d82wvuiaEd6gMtZRCjS81g">
      <attribute>value</attribute>
    </node>
    <node className="BooleanValue" id="_d82wv-iaEd6gMtZRCjS81g">
      <attribute>value</attribute>
    </node>
    <node className="StringValue" id="_d82wwOiaEd6gMtZRCjS81g">
      <attribute>value</attribute>
    </node>
    <edge id="_d82wyeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_d82ws-iaEd6gMtZRCjS81g" target="_d82wteiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">contents</attribute>
    </edge>
    <edge id="_d82wyeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_d82wteiaEd6gMtZRCjS81g" target="_d82ws-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d82wzOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_d82wteiaEd6gMtZRCjS81g" target="_d82wuuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">properties</attribute>
    </edge>
    <edge id="_d82wzOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_d82wuuiaEd6gMtZRCjS81g" target="_d82wteiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d82wz-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_d82wteiaEd6gMtZRCjS81g" target="_d82wt-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">embeddinglinks</attribute>
    </edge>
    <edge id="_d82wz-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_d82wt-iaEd6gMtZRCjS81g" target="_d82wteiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d82w0uiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_d82wteiaEd6gMtZRCjS81g" target="_d82wuOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">referencelinks</attribute>
    </edge>
    <edge id="_d82w0uiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_d82wuOiaEd6gMtZRCjS81g" target="_d82wteiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d83XxeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_d82wt-iaEd6gMtZRCjS81g" target="_d82wteiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">elements</attribute>
    </edge>
    <edge id="_d83XxeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_d82wteiaEd6gMtZRCjS81g" target="_d82wt-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d83XyOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_d82wuOiaEd6gMtZRCjS81g" target="_d82wu-iaEd6gMtZRCjS81g">
      <attribute lowerValue="2" upperValue="2">roles</attribute>
    </edge>
    <edge id="_d83XyOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_d82wu-iaEd6gMtZRCjS81g" target="_d82wuOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d83Xy-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_d82wuuiaEd6gMtZRCjS81g" target="_d82wvOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">value</attribute>
    </edge>
    <edge id="_d83Xy-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_d82wvOiaEd6gMtZRCjS81g" target="_d82wuuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d83XwuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_d82wtuiaEd6gMtZRCjS81g" target="_d82wuOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">links</attribute>
    </edge>
    <edge id="_d83XwuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_d82wuOiaEd6gMtZRCjS81g" target="_d82wtuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d83XzuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_d82wu-iaEd6gMtZRCjS81g" target="_d82wteiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">element</attribute>
    </edge>
    <edge id="_d83XzuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_d82wteiaEd6gMtZRCjS81g" target="_d82wu-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d83-0OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_d82wteiaEd6gMtZRCjS81g" target="_d82wtOiaEd6gMtZRCjS81g"/>
    <edge id="_d83-0OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_d82wtOiaEd6gMtZRCjS81g" target="_d82wteiaEd6gMtZRCjS81g"/>
    <edge id="_d83-0eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_d82wtuiaEd6gMtZRCjS81g" target="_d82wteiaEd6gMtZRCjS81g"/>
    <edge id="_d83-0eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_d82wteiaEd6gMtZRCjS81g" target="_d82wtuiaEd6gMtZRCjS81g"/>
    <edge id="_d83-0uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_d82wt-iaEd6gMtZRCjS81g" target="_d82wueiaEd6gMtZRCjS81g"/>
    <edge id="_d83-0uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_d82wueiaEd6gMtZRCjS81g" target="_d82wt-iaEd6gMtZRCjS81g"/>
    <edge id="_d83-0-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_d82wuOiaEd6gMtZRCjS81g" target="_d82wtOiaEd6gMtZRCjS81g"/>
    <edge id="_d83-0-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_d82wtOiaEd6gMtZRCjS81g" target="_d82wuOiaEd6gMtZRCjS81g"/>
    <edge id="_d83-1OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_d82wuuiaEd6gMtZRCjS81g" target="_d82wueiaEd6gMtZRCjS81g"/>
    <edge id="_d83-1OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_d82wueiaEd6gMtZRCjS81g" target="_d82wuuiaEd6gMtZRCjS81g"/>
    <edge id="_d83-1eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_d82wu-iaEd6gMtZRCjS81g" target="_d82wueiaEd6gMtZRCjS81g"/>
    <edge id="_d83-1eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_d82wueiaEd6gMtZRCjS81g" target="_d82wu-iaEd6gMtZRCjS81g"/>
    <edge id="_d83-1uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_d82wveiaEd6gMtZRCjS81g" target="_d82wvOiaEd6gMtZRCjS81g"/>
    <edge id="_d83-1uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_d82wvOiaEd6gMtZRCjS81g" target="_d82wveiaEd6gMtZRCjS81g"/>
    <edge id="_d83-1-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_d82wvuiaEd6gMtZRCjS81g" target="_d82wvOiaEd6gMtZRCjS81g"/>
    <edge id="_d83-1-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_d82wvOiaEd6gMtZRCjS81g" target="_d82wvuiaEd6gMtZRCjS81g"/>
    <edge id="_d83-2OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_d82wv-iaEd6gMtZRCjS81g" target="_d82wvOiaEd6gMtZRCjS81g"/>
    <edge id="_d83-2OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_d82wvOiaEd6gMtZRCjS81g" target="_d82wv-iaEd6gMtZRCjS81g"/>
    <edge id="_d83-2eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_d82wwOiaEd6gMtZRCjS81g" target="_d82wvOiaEd6gMtZRCjS81g"/>
    <edge id="_d83-2eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_d82wvOiaEd6gMtZRCjS81g" target="_d82wwOiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
