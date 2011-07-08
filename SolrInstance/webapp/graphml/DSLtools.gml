<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_oADNYBuyEd-u0r5Az1kiEw" projectName="DSL">
    <node className="NamedElement" id="_oADNYxuyEd-u0r5Az1kiEw">
      <attribute>name</attribute>
      <attribute>identity</attribute>
    </node>
    <node className="LoadedElement" id="_oADNZBuyEd-u0r5Az1kiEw">
      <attribute>isLoaded</attribute>
    </node>
    <node className="Namespace" id="_oADNZRuyEd-u0r5Az1kiEw">
      <attribute>namespace</attribute>
    </node>
    <node className="DomainModel" id="_oADNZhuyEd-u0r5Az1kiEw"/>
    <node className="Classifier" id="_oADNZxuyEd-u0r5Az1kiEw">
      <attribute>isAbstract</attribute>
    </node>
    <node className="Class" id="_oADNaBuyEd-u0r5Az1kiEw">
      <attribute>isSerializationRoot</attribute>
    </node>
    <node className="Relationship" id="_oADNaRuyEd-u0r5Az1kiEw">
      <attribute>isEmbedding</attribute>
    </node>
    <node className="Role" id="_oADNahuyEd-u0r5Az1kiEw">
      <attribute>min</attribute>
      <attribute>max</attribute>
      <attribute>isUnbounded</attribute>
      <attribute>accepts</attribute>
      <attribute>isOrdered</attribute>
      <attribute>isNavigableFrom</attribute>
      <attribute>isPropertyGenerator</attribute>
    </node>
    <node className="ValueProperty" id="_oADNaxuyEd-u0r5Az1kiEw"/>
    <node className="Type" id="_oADNbBuyEd-u0r5Az1kiEw"/>
    <node className="SimpleType" id="_oADNbRuyEd-u0r5Az1kiEw"/>
    <node className="EnumerationLiteral" id="_oADNbhuyEd-u0r5Az1kiEw">
      <attribute>value</attribute>
    </node>
    <node className="Enumeration" id="_oADNbxuyEd-u0r5Az1kiEw"/>
    <edge id="_oADNfxuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oADNZhuyEd-u0r5Az1kiEw" target="_oADNZxuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="*">classifiers</attribute>
    </edge>
    <edge id="_oADNfxuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oADNZxuyEd-u0r5Az1kiEw" target="_oADNZhuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oADNghuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oADNZhuyEd-u0r5Az1kiEw" target="_oADNbBuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="*">types</attribute>
    </edge>
    <edge id="_oADNghuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oADNbBuyEd-u0r5Az1kiEw" target="_oADNZhuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oADNhRuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oADNZxuyEd-u0r5Az1kiEw" target="_oADNaxuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="*">properties</attribute>
    </edge>
    <edge id="_oADNhRuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oADNaxuyEd-u0r5Az1kiEw" target="_oADNZxuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oADNixuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oADNaRuyEd-u0r5Az1kiEw" target="_oADNahuyEd-u0r5Az1kiEw">
      <attribute lowerValue="2" upperValue="2">roles</attribute>
    </edge>
    <edge id="_oADNixuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oADNahuyEd-u0r5Az1kiEw" target="_oADNaRuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oADNlxuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oADNbxuyEd-u0r5Az1kiEw" target="_oADNbhuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="*">literals</attribute>
    </edge>
    <edge id="_oADNlxuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oADNbhuyEd-u0r5Az1kiEw" target="_oADNbxuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oADNiBuyEd-u0r5Az1kiEw" relType="ASSOCIATION" source="_oADNZxuyEd-u0r5Az1kiEw" target="_oADNZxuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="1">superType</attribute>
    </edge>
    <edge id="_oADNiBuyEd-u0r5Az1kiEw-opposite" lowerValue="0" relType="ASSOCIATION" source="_oADNZxuyEd-u0r5Az1kiEw" target="_oADNZxuyEd-u0r5Az1kiEw" upperValue="*"/>
    <edge id="_oADNjhuyEd-u0r5Az1kiEw" relType="ASSOCIATION" source="_oADNahuyEd-u0r5Az1kiEw" target="_oADNZxuyEd-u0r5Az1kiEw">
      <attribute lowerValue="1" upperValue="1">source</attribute>
    </edge>
    <edge id="_oADNjhuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="ASSOCIATION" source="_oADNZxuyEd-u0r5Az1kiEw" target="_oADNahuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oADNkRuyEd-u0r5Az1kiEw" relType="ASSOCIATION" source="_oADNahuyEd-u0r5Az1kiEw" target="_oADNZxuyEd-u0r5Az1kiEw">
      <attribute lowerValue="1" upperValue="1">type</attribute>
    </edge>
    <edge id="_oADNkRuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="ASSOCIATION" source="_oADNZxuyEd-u0r5Az1kiEw" target="_oADNahuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oADNlBuyEd-u0r5Az1kiEw" relType="ASSOCIATION" source="_oADNaxuyEd-u0r5Az1kiEw" target="_oADNbBuyEd-u0r5Az1kiEw">
      <attribute lowerValue="1" upperValue="1">type</attribute>
    </edge>
    <edge id="_oADNlBuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="ASSOCIATION" source="_oADNbBuyEd-u0r5Az1kiEw" target="_oADNaxuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oADNnRuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oADNZBuyEd-u0r5Az1kiEw" target="_oADNZRuyEd-u0r5Az1kiEw"/>
    <edge id="_oADNnRuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oADNZRuyEd-u0r5Az1kiEw" target="_oADNZBuyEd-u0r5Az1kiEw"/>
    <edge id="_oADNnhuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oADNZRuyEd-u0r5Az1kiEw" target="_oADNYxuyEd-u0r5Az1kiEw"/>
    <edge id="_oADNnhuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oADNYxuyEd-u0r5Az1kiEw" target="_oADNZRuyEd-u0r5Az1kiEw"/>
    <edge id="_oADNnxuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oADNZhuyEd-u0r5Az1kiEw" target="_oADNZBuyEd-u0r5Az1kiEw"/>
    <edge id="_oADNnxuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oADNZBuyEd-u0r5Az1kiEw" target="_oADNZhuyEd-u0r5Az1kiEw"/>
    <edge id="_oAMXUBuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oADNZxuyEd-u0r5Az1kiEw" target="_oADNZBuyEd-u0r5Az1kiEw"/>
    <edge id="_oAMXUBuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oADNZBuyEd-u0r5Az1kiEw" target="_oADNZxuyEd-u0r5Az1kiEw"/>
    <edge id="_oAMXURuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oADNaBuyEd-u0r5Az1kiEw" target="_oADNZxuyEd-u0r5Az1kiEw"/>
    <edge id="_oAMXURuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oADNZxuyEd-u0r5Az1kiEw" target="_oADNaBuyEd-u0r5Az1kiEw"/>
    <edge id="_oAMXUhuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oADNaRuyEd-u0r5Az1kiEw" target="_oADNZxuyEd-u0r5Az1kiEw"/>
    <edge id="_oAMXUhuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oADNZxuyEd-u0r5Az1kiEw" target="_oADNaRuyEd-u0r5Az1kiEw"/>
    <edge id="_oAMXUxuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oADNahuyEd-u0r5Az1kiEw" target="_oADNYxuyEd-u0r5Az1kiEw"/>
    <edge id="_oAMXUxuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oADNYxuyEd-u0r5Az1kiEw" target="_oADNahuyEd-u0r5Az1kiEw"/>
    <edge id="_oAMXVBuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oADNaxuyEd-u0r5Az1kiEw" target="_oADNYxuyEd-u0r5Az1kiEw"/>
    <edge id="_oAMXVBuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oADNYxuyEd-u0r5Az1kiEw" target="_oADNaxuyEd-u0r5Az1kiEw"/>
    <edge id="_oAMXVRuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oADNbBuyEd-u0r5Az1kiEw" target="_oADNZRuyEd-u0r5Az1kiEw"/>
    <edge id="_oAMXVRuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oADNZRuyEd-u0r5Az1kiEw" target="_oADNbBuyEd-u0r5Az1kiEw"/>
    <edge id="_oAMXVhuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oADNbRuyEd-u0r5Az1kiEw" target="_oADNbBuyEd-u0r5Az1kiEw"/>
    <edge id="_oAMXVhuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oADNbBuyEd-u0r5Az1kiEw" target="_oADNbRuyEd-u0r5Az1kiEw"/>
    <edge id="_oAMXVxuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oADNbhuyEd-u0r5Az1kiEw" target="_oADNYxuyEd-u0r5Az1kiEw"/>
    <edge id="_oAMXVxuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oADNYxuyEd-u0r5Az1kiEw" target="_oADNbhuyEd-u0r5Az1kiEw"/>
    <edge id="_oAMXWBuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oADNbxuyEd-u0r5Az1kiEw" target="_oADNbBuyEd-u0r5Az1kiEw"/>
    <edge id="_oAMXWBuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oADNbBuyEd-u0r5Az1kiEw" target="_oADNbxuyEd-u0r5Az1kiEw"/>
  </graph>
</graphml>
