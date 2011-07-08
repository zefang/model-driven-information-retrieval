<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_oXvUoBuyEd-u0r5Az1kiEw" projectName="PluginEclipse">
    <node className="LocatedElement" id="_oXvUpBuyEd-u0r5Az1kiEw">
      <attribute>location</attribute>
      <attribute>commentsBefore</attribute>
      <attribute>commentsAfter</attribute>
    </node>
    <node className="Eclipse" id="_oXvUpRuyEd-u0r5Az1kiEw"/>
    <node className="Bundle" id="_oXvUphuyEd-u0r5Az1kiEw">
      <attribute>symbolicName</attribute>
      <attribute>singleton</attribute>
      <attribute>manifestVersion</attribute>
    </node>
    <node className="RequireBundleAttribute" id="_oXvUpxuyEd-u0r5Az1kiEw"/>
    <node className="AttResolution" id="_oXvUqBuyEd-u0r5Az1kiEw">
      <attribute>value</attribute>
    </node>
    <node className="AttVisibility" id="_oXvUqRuyEd-u0r5Az1kiEw">
      <attribute>value</attribute>
    </node>
    <node className="Range" id="_oXvUqhuyEd-u0r5Az1kiEw">
      <attribute>isLeftInclusive</attribute>
      <attribute>isRightInclusive</attribute>
    </node>
    <node className="Version" id="_oXvUqxuyEd-u0r5Az1kiEw">
      <attribute>major</attribute>
      <attribute>minor</attribute>
      <attribute>micro</attribute>
      <attribute>qualification</attribute>
    </node>
    <node className="RequiredBundle" id="_oXvUrBuyEd-u0r5Az1kiEw"/>
    <node className="ImportedPackage" id="_oXvUrRuyEd-u0r5Az1kiEw">
      <attribute>resolution</attribute>
    </node>
    <node className="ExportedPackage" id="_oXvUrhuyEd-u0r5Az1kiEw"/>
    <node className="Package" id="_oXvUrxuyEd-u0r5Az1kiEw">
      <attribute>fqn</attribute>
    </node>
    <node className="Xfriends" id="_oXvUsBuyEd-u0r5Az1kiEw"/>
    <node className="Xinternal" id="_oXvUsRuyEd-u0r5Az1kiEw">
      <attribute>value</attribute>
    </node>
    <edge id="_oXvUwxuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oXvUpRuyEd-u0r5Az1kiEw" target="_oXvUphuyEd-u0r5Az1kiEw">
      <attribute lowerValue="1" upperValue="*">bundles</attribute>
    </edge>
    <edge id="_oXvUwxuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oXvUphuyEd-u0r5Az1kiEw" target="_oXvUpRuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oXvUxhuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oXvUpRuyEd-u0r5Az1kiEw" target="_oXvUrxuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="*">packages</attribute>
    </edge>
    <edge id="_oXvUxhuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oXvUrxuyEd-u0r5Az1kiEw" target="_oXvUpRuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oXvUyRuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oXvUphuyEd-u0r5Az1kiEw" target="_oXvUrBuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="*">require</attribute>
    </edge>
    <edge id="_oXvUyRuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oXvUrBuyEd-u0r5Az1kiEw" target="_oXvUphuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oXvUzBuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oXvUphuyEd-u0r5Az1kiEw" target="_oXvUqxuyEd-u0r5Az1kiEw">
      <attribute lowerValue="1" upperValue="1">version</attribute>
    </edge>
    <edge id="_oXvUzBuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oXvUqxuyEd-u0r5Az1kiEw" target="_oXvUphuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oXvUzxuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oXvUphuyEd-u0r5Az1kiEw" target="_oXvUrhuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="*">export</attribute>
    </edge>
    <edge id="_oXvUzxuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oXvUrhuyEd-u0r5Az1kiEw" target="_oXvUphuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oXvU0huyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oXvUphuyEd-u0r5Az1kiEw" target="_oXvUrRuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="*">import</attribute>
    </edge>
    <edge id="_oXvU0huyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oXvUrRuyEd-u0r5Az1kiEw" target="_oXvUphuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oXvU1RuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oXvUphuyEd-u0r5Az1kiEw" target="_oXvUrxuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="*">packages</attribute>
    </edge>
    <edge id="_oXvU1RuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oXvUrxuyEd-u0r5Az1kiEw" target="_oXvUphuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oXvU2BuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oXvUqhuyEd-u0r5Az1kiEw" target="_oXvUqxuyEd-u0r5Az1kiEw">
      <attribute lowerValue="1" upperValue="1">lowerBound</attribute>
    </edge>
    <edge id="_oXvU2BuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oXvUqxuyEd-u0r5Az1kiEw" target="_oXvUqhuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oXvU2xuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oXvUqhuyEd-u0r5Az1kiEw" target="_oXvUqxuyEd-u0r5Az1kiEw">
      <attribute lowerValue="1" upperValue="1">upperBound</attribute>
    </edge>
    <edge id="_oXvU2xuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oXvUqxuyEd-u0r5Az1kiEw" target="_oXvUqhuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oXvU3huyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oXvUrBuyEd-u0r5Az1kiEw" target="_oXvUpxuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="*">requireBundleAttribute</attribute>
    </edge>
    <edge id="_oXvU3huyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oXvUpxuyEd-u0r5Az1kiEw" target="_oXvUrBuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oXvU5xuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oXvUrRuyEd-u0r5Az1kiEw" target="_oXvUqhuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="1">range</attribute>
    </edge>
    <edge id="_oXvU5xuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oXvUqhuyEd-u0r5Az1kiEw" target="_oXvUrRuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oXvU7RuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oXvUrhuyEd-u0r5Az1kiEw" target="_oXvUqxuyEd-u0r5Az1kiEw">
      <attribute lowerValue="1" upperValue="1">version</attribute>
    </edge>
    <edge id="_oXvU7RuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oXvUqxuyEd-u0r5Az1kiEw" target="_oXvUrhuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oXvU8BuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oXvUrhuyEd-u0r5Az1kiEw" target="_oXvUsBuyEd-u0r5Az1kiEw">
      <attribute lowerValue="1" upperValue="1">xFriends</attribute>
    </edge>
    <edge id="_oXvU8BuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oXvUsBuyEd-u0r5Az1kiEw" target="_oXvUrhuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oXvU4RuyEd-u0r5Az1kiEw" relType="ASSOCIATION" source="_oXvUrBuyEd-u0r5Az1kiEw" target="_oXvUphuyEd-u0r5Az1kiEw">
      <attribute lowerValue="1" upperValue="1">bundle</attribute>
    </edge>
    <edge id="_oXvU4RuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="ASSOCIATION" source="_oXvUphuyEd-u0r5Az1kiEw" target="_oXvUrBuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oXvU5BuyEd-u0r5Az1kiEw" relType="ASSOCIATION" source="_oXvUrRuyEd-u0r5Az1kiEw" target="_oXvUrxuyEd-u0r5Az1kiEw">
      <attribute lowerValue="1" upperValue="1">package</attribute>
    </edge>
    <edge id="_oXvU5BuyEd-u0r5Az1kiEw-opposite" lowerValue="0" relType="ASSOCIATION" source="_oXvUrxuyEd-u0r5Az1kiEw" target="_oXvUrRuyEd-u0r5Az1kiEw" upperValue="*"/>
    <edge id="_oXvU6huyEd-u0r5Az1kiEw" relType="ASSOCIATION" source="_oXvUrhuyEd-u0r5Az1kiEw" target="_oXvUrxuyEd-u0r5Az1kiEw">
      <attribute lowerValue="1" upperValue="1">package</attribute>
    </edge>
    <edge id="_oXvU6huyEd-u0r5Az1kiEw-opposite" lowerValue="0" relType="ASSOCIATION" source="_oXvUrxuyEd-u0r5Az1kiEw" target="_oXvUrhuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oXvU8xuyEd-u0r5Az1kiEw" relType="ASSOCIATION" source="_oXvUsBuyEd-u0r5Az1kiEw" target="_oXvUphuyEd-u0r5Az1kiEw">
      <attribute lowerValue="1" upperValue="*">bundles</attribute>
    </edge>
    <edge id="_oXvU8xuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="ASSOCIATION" source="_oXvUphuyEd-u0r5Az1kiEw" target="_oXvUsBuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oXvU_xuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oXvUpRuyEd-u0r5Az1kiEw" target="_oXvUpBuyEd-u0r5Az1kiEw"/>
    <edge id="_oXvU_xuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oXvUpBuyEd-u0r5Az1kiEw" target="_oXvUpRuyEd-u0r5Az1kiEw"/>
    <edge id="_oXvVABuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oXvUphuyEd-u0r5Az1kiEw" target="_oXvUpBuyEd-u0r5Az1kiEw"/>
    <edge id="_oXvVABuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oXvUpBuyEd-u0r5Az1kiEw" target="_oXvUphuyEd-u0r5Az1kiEw"/>
    <edge id="_oXvVARuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oXvUpxuyEd-u0r5Az1kiEw" target="_oXvUpBuyEd-u0r5Az1kiEw"/>
    <edge id="_oXvVARuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oXvUpBuyEd-u0r5Az1kiEw" target="_oXvUpxuyEd-u0r5Az1kiEw"/>
    <edge id="_oXvVAhuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oXvUqBuyEd-u0r5Az1kiEw" target="_oXvUpxuyEd-u0r5Az1kiEw"/>
    <edge id="_oXvVAhuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oXvUpxuyEd-u0r5Az1kiEw" target="_oXvUqBuyEd-u0r5Az1kiEw"/>
    <edge id="_oXvVAxuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oXvUqRuyEd-u0r5Az1kiEw" target="_oXvUpxuyEd-u0r5Az1kiEw"/>
    <edge id="_oXvVAxuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oXvUpxuyEd-u0r5Az1kiEw" target="_oXvUqRuyEd-u0r5Az1kiEw"/>
    <edge id="_oXvVBBuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oXvUqhuyEd-u0r5Az1kiEw" target="_oXvUpxuyEd-u0r5Az1kiEw"/>
    <edge id="_oXvVBBuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oXvUpxuyEd-u0r5Az1kiEw" target="_oXvUqhuyEd-u0r5Az1kiEw"/>
    <edge id="_oXvVBRuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oXvUqxuyEd-u0r5Az1kiEw" target="_oXvUpBuyEd-u0r5Az1kiEw"/>
    <edge id="_oXvVBRuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oXvUpBuyEd-u0r5Az1kiEw" target="_oXvUqxuyEd-u0r5Az1kiEw"/>
    <edge id="_oXvVBhuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oXvUrBuyEd-u0r5Az1kiEw" target="_oXvUpBuyEd-u0r5Az1kiEw"/>
    <edge id="_oXvVBhuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oXvUpBuyEd-u0r5Az1kiEw" target="_oXvUrBuyEd-u0r5Az1kiEw"/>
    <edge id="_oXvVBxuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oXvUrRuyEd-u0r5Az1kiEw" target="_oXvUpBuyEd-u0r5Az1kiEw"/>
    <edge id="_oXvVBxuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oXvUpBuyEd-u0r5Az1kiEw" target="_oXvUrRuyEd-u0r5Az1kiEw"/>
    <edge id="_oXvVCBuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oXvUrhuyEd-u0r5Az1kiEw" target="_oXvUpBuyEd-u0r5Az1kiEw"/>
    <edge id="_oXvVCBuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oXvUpBuyEd-u0r5Az1kiEw" target="_oXvUrhuyEd-u0r5Az1kiEw"/>
    <edge id="_oXvVCRuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oXvUrxuyEd-u0r5Az1kiEw" target="_oXvUpBuyEd-u0r5Az1kiEw"/>
    <edge id="_oXvVCRuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oXvUpBuyEd-u0r5Az1kiEw" target="_oXvUrxuyEd-u0r5Az1kiEw"/>
    <edge id="_oXvVChuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oXvUsBuyEd-u0r5Az1kiEw" target="_oXvUpBuyEd-u0r5Az1kiEw"/>
    <edge id="_oXvVChuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oXvUpBuyEd-u0r5Az1kiEw" target="_oXvUsBuyEd-u0r5Az1kiEw"/>
    <edge id="_oXvVCxuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oXvUsRuyEd-u0r5Az1kiEw" target="_oXvUrhuyEd-u0r5Az1kiEw"/>
    <edge id="_oXvVCxuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oXvUrhuyEd-u0r5Az1kiEw" target="_oXvUsRuyEd-u0r5Az1kiEw"/>
  </graph>
</graphml>
