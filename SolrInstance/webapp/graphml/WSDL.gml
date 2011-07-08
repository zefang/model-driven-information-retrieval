<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_gsBFoOiaEd6gMtZRCjS81g" projectName="WSDL">
    <node className="Port" id="_gsBssuiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Service" id="_gsBss-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Param" id="_gsBstOiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Input" id="_gsBsteiaEd6gMtZRCjS81g"/>
    <node className="Output" id="_gsBstuiaEd6gMtZRCjS81g"/>
    <node className="PortType" id="_gsBst-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Operation" id="_gsBsuOiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="StartWithExtensions" id="_gsBsueiaEd6gMtZRCjS81g"/>
    <node className="Binding" id="_gsBsuuiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="BindingFault" id="_gsBsu-iaEd6gMtZRCjS81g"/>
    <node className="BindingOperation" id="_gsBsvOiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Fault" id="_gsBsveiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Message" id="_gsBsvuiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Part" id="_gsBsv-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <edge id="_gsBszeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gsBss-iaEd6gMtZRCjS81g" target="_gsBssuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">ports</attribute>
    </edge>
    <edge id="_gsBszeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gsBssuiaEd6gMtZRCjS81g" target="_gsBss-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gsBs0-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gsBst-iaEd6gMtZRCjS81g" target="_gsBsuOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">operations</attribute>
    </edge>
    <edge id="_gsBs0-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gsBsuOiaEd6gMtZRCjS81g" target="_gsBst-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gsBs2eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gsBsuOiaEd6gMtZRCjS81g" target="_gsBsteiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">input</attribute>
    </edge>
    <edge id="_gsBs2eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gsBsteiaEd6gMtZRCjS81g" target="_gsBsuOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gsBs3OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gsBsuOiaEd6gMtZRCjS81g" target="_gsBstuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">output</attribute>
    </edge>
    <edge id="_gsBs3OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gsBstuiaEd6gMtZRCjS81g" target="_gsBsuOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gsBs3-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gsBsuOiaEd6gMtZRCjS81g" target="_gsBsveiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">faults</attribute>
    </edge>
    <edge id="_gsBs3-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gsBsveiaEd6gMtZRCjS81g" target="_gsBsuOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gsBs4uiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gsBsuuiaEd6gMtZRCjS81g" target="_gsBsvOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">operations</attribute>
    </edge>
    <edge id="_gsBs4uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gsBsvOiaEd6gMtZRCjS81g" target="_gsBsuuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gsBs5eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gsBsu-iaEd6gMtZRCjS81g" target="_gsBsvOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">operation</attribute>
    </edge>
    <edge id="_gsBs5eiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gsBsvOiaEd6gMtZRCjS81g" target="_gsBsu-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gsBsyuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gsBssuiaEd6gMtZRCjS81g" target="_gsBsuuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">binding</attribute>
    </edge>
    <edge id="_gsBsyuiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gsBsuuiaEd6gMtZRCjS81g" target="_gsBssuiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gsBs0OiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gsBstOiaEd6gMtZRCjS81g" target="_gsBsvuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">message</attribute>
    </edge>
    <edge id="_gsBs0OiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gsBsvuiaEd6gMtZRCjS81g" target="_gsBstOiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gsBs1uiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gsBst-iaEd6gMtZRCjS81g" target="_gsBsuuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">bindings</attribute>
    </edge>
    <edge id="_gsBs1uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gsBsuuiaEd6gMtZRCjS81g" target="_gsBst-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gsCTweiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gsBsu-iaEd6gMtZRCjS81g" target="_gsBsveiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">binding</attribute>
    </edge>
    <edge id="_gsCTweiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gsBsveiaEd6gMtZRCjS81g" target="_gsBsu-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gsCTxOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gsBsvOiaEd6gMtZRCjS81g" target="_gsBsuOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">binding</attribute>
    </edge>
    <edge id="_gsCTxOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gsBsuOiaEd6gMtZRCjS81g" target="_gsBsvOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gsCTx-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gsBsvOiaEd6gMtZRCjS81g" target="_gsBsueiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">input</attribute>
    </edge>
    <edge id="_gsCTx-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gsBsueiaEd6gMtZRCjS81g" target="_gsBsvOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gsCTyuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gsBsvOiaEd6gMtZRCjS81g" target="_gsBsueiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">output</attribute>
    </edge>
    <edge id="_gsCTyuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gsBsueiaEd6gMtZRCjS81g" target="_gsBsvOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gsCTzeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gsBsveiaEd6gMtZRCjS81g" target="_gsBsvuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">message</attribute>
    </edge>
    <edge id="_gsCTzeiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gsBsvuiaEd6gMtZRCjS81g" target="_gsBsveiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gsCT0OiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gsBsvuiaEd6gMtZRCjS81g" target="_gsBsv-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">parts</attribute>
    </edge>
    <edge id="_gsCT0OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gsBsv-iaEd6gMtZRCjS81g" target="_gsBsvuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gsC60OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gsBsteiaEd6gMtZRCjS81g" target="_gsBstOiaEd6gMtZRCjS81g"/>
    <edge id="_gsC60OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gsBstOiaEd6gMtZRCjS81g" target="_gsBsteiaEd6gMtZRCjS81g"/>
    <edge id="_gsC60eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gsBstuiaEd6gMtZRCjS81g" target="_gsBstOiaEd6gMtZRCjS81g"/>
    <edge id="_gsC60eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gsBstOiaEd6gMtZRCjS81g" target="_gsBstuiaEd6gMtZRCjS81g"/>
    <edge id="_gsC60uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gsBsuuiaEd6gMtZRCjS81g" target="_gsBsueiaEd6gMtZRCjS81g"/>
    <edge id="_gsC60uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gsBsueiaEd6gMtZRCjS81g" target="_gsBsuuiaEd6gMtZRCjS81g"/>
    <edge id="_gsC60-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gsBsu-iaEd6gMtZRCjS81g" target="_gsBsueiaEd6gMtZRCjS81g"/>
    <edge id="_gsC60-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gsBsueiaEd6gMtZRCjS81g" target="_gsBsu-iaEd6gMtZRCjS81g"/>
    <edge id="_gsC61OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gsBsvOiaEd6gMtZRCjS81g" target="_gsBsueiaEd6gMtZRCjS81g"/>
    <edge id="_gsC61OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gsBsueiaEd6gMtZRCjS81g" target="_gsBsvOiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
