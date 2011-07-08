<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_oTkmUBuyEd-u0r5Az1kiEw" projectName="PDG">
    <node className="MProgramDependenceGraph" id="_oTkmUxuyEd-u0r5Az1kiEw"/>
    <node className="EnterNode" id="_oTkmVBuyEd-u0r5Az1kiEw">
      <attribute>name</attribute>
    </node>
    <node className="ExpressionNode" id="_oTkmVRuyEd-u0r5Az1kiEw">
      <attribute>name</attribute>
    </node>
    <node className="Expression" id="_oTkmVhuyEd-u0r5Az1kiEw">
      <attribute>name</attribute>
      <attribute>isIdentifier</attribute>
    </node>
    <edge id="_oTkmWxuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oTkmUxuyEd-u0r5Az1kiEw" target="_oTkmVBuyEd-u0r5Az1kiEw">
      <attribute lowerValue="1" upperValue="1">node</attribute>
    </edge>
    <edge id="_oTkmWxuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oTkmVBuyEd-u0r5Az1kiEw" target="_oTkmUxuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oTkmXhuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oTkmVBuyEd-u0r5Az1kiEw" target="_oTkmVRuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="*">controlDependenceNodes</attribute>
    </edge>
    <edge id="_oTkmXhuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oTkmVRuyEd-u0r5Az1kiEw" target="_oTkmVBuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oTkmYRuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oTkmVRuyEd-u0r5Az1kiEw" target="_oTkmVhuyEd-u0r5Az1kiEw">
      <attribute lowerValue="1" upperValue="1">expression</attribute>
    </edge>
    <edge id="_oTkmYRuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oTkmVhuyEd-u0r5Az1kiEw" target="_oTkmVRuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oTkmZxuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oTkmVRuyEd-u0r5Az1kiEw" target="_oTkmVRuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="*">controlDependenceNodes</attribute>
    </edge>
    <edge id="_oTkmZxuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oTkmVRuyEd-u0r5Az1kiEw" target="_oTkmVRuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oTkmahuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oTkmVhuyEd-u0r5Az1kiEw" target="_oTkmVhuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="*">innerExpressions</attribute>
    </edge>
    <edge id="_oTkmahuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oTkmVhuyEd-u0r5Az1kiEw" target="_oTkmVhuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oTkmZBuyEd-u0r5Az1kiEw" relType="ASSOCIATION" source="_oTkmVRuyEd-u0r5Az1kiEw" target="_oTkmVRuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="*">dataDependenceNodes</attribute>
    </edge>
    <edge id="_oTkmZBuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="ASSOCIATION" source="_oTkmVRuyEd-u0r5Az1kiEw" target="_oTkmVRuyEd-u0r5Az1kiEw" upperValue="1"/>
  </graph>
</graphml>
