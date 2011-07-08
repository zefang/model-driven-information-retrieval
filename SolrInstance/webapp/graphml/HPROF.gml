<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_oKVKwBuyEd-u0r5Az1kiEw" projectName="HPROF">
    <node className="LocatedElement" id="_oKVKwxuyEd-u0r5Az1kiEw">
      <attribute>location</attribute>
      <attribute>commentsBefore</attribute>
      <attribute>commentsAfter</attribute>
    </node>
    <node className="Profile" id="_oKVKxBuyEd-u0r5Az1kiEw">
      <attribute>header</attribute>
    </node>
    <node className="Method" id="_oKVKxRuyEd-u0r5Az1kiEw">
      <attribute>fullyQualifiedName</attribute>
    </node>
    <node className="ThreadAction" id="_oKVKxhuyEd-u0r5Az1kiEw">
      <attribute>id</attribute>
    </node>
    <node className="ThreadStart" id="_oKVKxxuyEd-u0r5Az1kiEw">
      <attribute>obj</attribute>
      <attribute>name</attribute>
      <attribute>group</attribute>
    </node>
    <node className="ThreadEnd" id="_oKVKyBuyEd-u0r5Az1kiEw"/>
    <node className="Trace" id="_oKVKyRuyEd-u0r5Az1kiEw">
      <attribute>id</attribute>
      <attribute>threadId</attribute>
    </node>
    <node className="StackTraceElement" id="_oKVKyhuyEd-u0r5Az1kiEw">
      <attribute>fileName</attribute>
      <attribute>line</attribute>
    </node>
    <node className="Times" id="_oKVKyxuyEd-u0r5Az1kiEw">
      <attribute>unit</attribute>
      <attribute>total</attribute>
    </node>
    <node className="Time" id="_oKVKzBuyEd-u0r5Az1kiEw">
      <attribute>rank</attribute>
      <attribute>self</attribute>
      <attribute>accum</attribute>
      <attribute>count</attribute>
    </node>
    <node className="Date" id="_oKVKzRuyEd-u0r5Az1kiEw">
      <attribute>day</attribute>
      <attribute>month</attribute>
      <attribute>dayOfMonth</attribute>
      <attribute>hour</attribute>
      <attribute>minutes</attribute>
      <attribute>seconds</attribute>
      <attribute>year</attribute>
    </node>
    <edge id="_oKVK6BuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oKVKxBuyEd-u0r5Az1kiEw" target="_oKVKxhuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="*">threadActions</attribute>
    </edge>
    <edge id="_oKVK6BuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oKVKxhuyEd-u0r5Az1kiEw" target="_oKVKxBuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oKVK6xuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oKVKxBuyEd-u0r5Az1kiEw" target="_oKVKyRuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="*">traces</attribute>
    </edge>
    <edge id="_oKVK6xuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oKVKyRuyEd-u0r5Az1kiEw" target="_oKVKxBuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oKVK7huyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oKVKxBuyEd-u0r5Az1kiEw" target="_oKVKyxuyEd-u0r5Az1kiEw">
      <attribute lowerValue="1" upperValue="1">times</attribute>
    </edge>
    <edge id="_oKVK7huyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oKVKyxuyEd-u0r5Az1kiEw" target="_oKVKxBuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oKVK8RuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oKVKxBuyEd-u0r5Az1kiEw" target="_oKVKxRuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="*">methods</attribute>
    </edge>
    <edge id="_oKVK8RuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oKVKxRuyEd-u0r5Az1kiEw" target="_oKVKxBuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oKVK9xuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oKVKyRuyEd-u0r5Az1kiEw" target="_oKVKyhuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="*">elements</attribute>
    </edge>
    <edge id="_oKVK9xuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oKVKyhuyEd-u0r5Az1kiEw" target="_oKVKyRuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oKVK_RuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oKVKyxuyEd-u0r5Az1kiEw" target="_oKVKzRuyEd-u0r5Az1kiEw">
      <attribute lowerValue="1" upperValue="1">date</attribute>
    </edge>
    <edge id="_oKVK_RuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oKVKzRuyEd-u0r5Az1kiEw" target="_oKVKyxuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oKVLABuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oKVKyxuyEd-u0r5Az1kiEw" target="_oKVKzBuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="*">elements</attribute>
    </edge>
    <edge id="_oKVLABuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oKVKzBuyEd-u0r5Az1kiEw" target="_oKVKyxuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oKVK9BuyEd-u0r5Az1kiEw" relType="ASSOCIATION" source="_oKVKxRuyEd-u0r5Az1kiEw" target="_oKVKyhuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="*">stackTraceElements</attribute>
    </edge>
    <edge id="_oKVK9BuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="ASSOCIATION" source="_oKVKyhuyEd-u0r5Az1kiEw" target="_oKVKxRuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oKVK-huyEd-u0r5Az1kiEw" relType="ASSOCIATION" source="_oKVKyRuyEd-u0r5Az1kiEw" target="_oKVKzBuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="*">times</attribute>
    </edge>
    <edge id="_oKVK-huyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="ASSOCIATION" source="_oKVKzBuyEd-u0r5Az1kiEw" target="_oKVKyRuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oKVLAxuyEd-u0r5Az1kiEw" relType="ASSOCIATION" source="_oKVKzBuyEd-u0r5Az1kiEw" target="_oKVKxRuyEd-u0r5Az1kiEw">
      <attribute lowerValue="1" upperValue="1">method</attribute>
    </edge>
    <edge id="_oKVLAxuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="ASSOCIATION" source="_oKVKxRuyEd-u0r5Az1kiEw" target="_oKVKzBuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oKVLHxuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oKVKxBuyEd-u0r5Az1kiEw" target="_oKVKwxuyEd-u0r5Az1kiEw"/>
    <edge id="_oKVLHxuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oKVKwxuyEd-u0r5Az1kiEw" target="_oKVKxBuyEd-u0r5Az1kiEw"/>
    <edge id="_oKVLIBuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oKVKxRuyEd-u0r5Az1kiEw" target="_oKVKwxuyEd-u0r5Az1kiEw"/>
    <edge id="_oKVLIBuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oKVKwxuyEd-u0r5Az1kiEw" target="_oKVKxRuyEd-u0r5Az1kiEw"/>
    <edge id="_oKVLIRuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oKVKxhuyEd-u0r5Az1kiEw" target="_oKVKwxuyEd-u0r5Az1kiEw"/>
    <edge id="_oKVLIRuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oKVKwxuyEd-u0r5Az1kiEw" target="_oKVKxhuyEd-u0r5Az1kiEw"/>
    <edge id="_oKVLIhuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oKVKxxuyEd-u0r5Az1kiEw" target="_oKVKxhuyEd-u0r5Az1kiEw"/>
    <edge id="_oKVLIhuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oKVKxhuyEd-u0r5Az1kiEw" target="_oKVKxxuyEd-u0r5Az1kiEw"/>
    <edge id="_oKVLIxuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oKVKyBuyEd-u0r5Az1kiEw" target="_oKVKxhuyEd-u0r5Az1kiEw"/>
    <edge id="_oKVLIxuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oKVKxhuyEd-u0r5Az1kiEw" target="_oKVKyBuyEd-u0r5Az1kiEw"/>
    <edge id="_oKVLJBuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oKVKyRuyEd-u0r5Az1kiEw" target="_oKVKwxuyEd-u0r5Az1kiEw"/>
    <edge id="_oKVLJBuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oKVKwxuyEd-u0r5Az1kiEw" target="_oKVKyRuyEd-u0r5Az1kiEw"/>
    <edge id="_oKVLJRuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oKVKyhuyEd-u0r5Az1kiEw" target="_oKVKwxuyEd-u0r5Az1kiEw"/>
    <edge id="_oKVLJRuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oKVKwxuyEd-u0r5Az1kiEw" target="_oKVKyhuyEd-u0r5Az1kiEw"/>
    <edge id="_oKVLJhuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oKVKyxuyEd-u0r5Az1kiEw" target="_oKVKwxuyEd-u0r5Az1kiEw"/>
    <edge id="_oKVLJhuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oKVKwxuyEd-u0r5Az1kiEw" target="_oKVKyxuyEd-u0r5Az1kiEw"/>
    <edge id="_oKeUsBuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oKVKzBuyEd-u0r5Az1kiEw" target="_oKVKwxuyEd-u0r5Az1kiEw"/>
    <edge id="_oKeUsBuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oKVKwxuyEd-u0r5Az1kiEw" target="_oKVKzBuyEd-u0r5Az1kiEw"/>
    <edge id="_oKeUsRuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oKVKzRuyEd-u0r5Az1kiEw" target="_oKVKwxuyEd-u0r5Az1kiEw"/>
    <edge id="_oKeUsRuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oKVKwxuyEd-u0r5Az1kiEw" target="_oKVKzRuyEd-u0r5Az1kiEw"/>
  </graph>
</graphml>
