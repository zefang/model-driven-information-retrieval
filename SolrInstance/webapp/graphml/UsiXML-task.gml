<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_ocNk8BuyEd-u0r5Az1kiEw" projectName="TaskUsiXML">
    <node className="Task" id="_ocNk8xuyEd-u0r5Az1kiEw">
      <attribute>id</attribute>
      <attribute>name</attribute>
      <attribute>category</attribute>
      <attribute>frequency</attribute>
      <attribute>importance</attribute>
      <attribute>structurationLevel</attribute>
      <attribute>complexityLevel</attribute>
      <attribute>criticity</attribute>
      <attribute>centrality</attribute>
      <attribute>terminationValue</attribute>
      <attribute>taskType</attribute>
      <attribute>taskItem</attribute>
    </node>
    <node className="Operator" id="_ocNk9BuyEd-u0r5Az1kiEw">
      <attribute>id</attribute>
      <attribute>name</attribute>
    </node>
    <node className="BinaryOperator" id="_ocNk9RuyEd-u0r5Az1kiEw">
      <attribute>type</attribute>
    </node>
    <node className="UnaryOperator" id="_ocNk9huyEd-u0r5Az1kiEw">
      <attribute>UnaryType</attribute>
    </node>
    <node className="FiniteInteration" id="_ocNk9xuyEd-u0r5Az1kiEw">
      <attribute>interation</attribute>
    </node>
    <edge id="_ocNlCRuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_ocNk8xuyEd-u0r5Az1kiEw" target="_ocNk8xuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="*">decompositionTasks</attribute>
    </edge>
    <edge id="_ocNlCRuyEd-u0r5Az1kiEw-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_ocNk8xuyEd-u0r5Az1kiEw" target="_ocNk8xuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_ocNlDBuyEd-u0r5Az1kiEw" relType="ASSOCIATION" source="_ocNk8xuyEd-u0r5Az1kiEw" target="_ocNk9RuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="1">leftOperator</attribute>
    </edge>
    <edge id="_ocNlDBuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="ASSOCIATION" source="_ocNk9RuyEd-u0r5Az1kiEw" target="_ocNk8xuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_ocNlDxuyEd-u0r5Az1kiEw" relType="ASSOCIATION" source="_ocNk8xuyEd-u0r5Az1kiEw" target="_ocNk9RuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="1">rightOperator</attribute>
    </edge>
    <edge id="_ocNlDxuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="ASSOCIATION" source="_ocNk9RuyEd-u0r5Az1kiEw" target="_ocNk8xuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_ocNlEhuyEd-u0r5Az1kiEw" relType="ASSOCIATION" source="_ocNk8xuyEd-u0r5Az1kiEw" target="_ocNk9huyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="1">decoration</attribute>
    </edge>
    <edge id="_ocNlEhuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="ASSOCIATION" source="_ocNk9huyEd-u0r5Az1kiEw" target="_ocNk8xuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_ocNlJRuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_ocNk9RuyEd-u0r5Az1kiEw" target="_ocNk9BuyEd-u0r5Az1kiEw"/>
    <edge id="_ocNlJRuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_ocNk9BuyEd-u0r5Az1kiEw" target="_ocNk9RuyEd-u0r5Az1kiEw"/>
    <edge id="_ocNlJhuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_ocNk9huyEd-u0r5Az1kiEw" target="_ocNk9BuyEd-u0r5Az1kiEw"/>
    <edge id="_ocNlJhuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_ocNk9BuyEd-u0r5Az1kiEw" target="_ocNk9huyEd-u0r5Az1kiEw"/>
    <edge id="_ocNlJxuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_ocNk9xuyEd-u0r5Az1kiEw" target="_ocNk9huyEd-u0r5Az1kiEw"/>
    <edge id="_ocNlJxuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_ocNk9huyEd-u0r5Az1kiEw" target="_ocNk9xuyEd-u0r5Az1kiEw"/>
  </graph>
</graphml>
