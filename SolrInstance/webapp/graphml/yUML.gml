<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_oxX8oBuyEd-u0r5Az1kiEw" projectName="yUML">
    <node className="LocatedElement" id="_oxX8oxuyEd-u0r5Az1kiEw">
      <attribute>location</attribute>
      <attribute>commentsBefore</attribute>
      <attribute>commentsAfter</attribute>
    </node>
    <node className="Model" id="_oxX8pBuyEd-u0r5Az1kiEw"/>
    <node className="Class" id="_oxX8pRuyEd-u0r5Az1kiEw">
      <attribute>name</attribute>
    </node>
    <node className="ModelElement" id="_oxX8phuyEd-u0r5Az1kiEw"/>
    <node className="ColorableElement" id="_oxX8pxuyEd-u0r5Az1kiEw">
      <attribute>color</attribute>
    </node>
    <node className="ClassReference" id="_oxX8qBuyEd-u0r5Az1kiEw">
      <attribute>stereotype</attribute>
    </node>
    <node className="Relationship" id="_oxX8qRuyEd-u0r5Az1kiEw"/>
    <node className="ClassDefinition" id="_oxX8qhuyEd-u0r5Az1kiEw"/>
    <node className="Association" id="_oxX8qxuyEd-u0r5Az1kiEw">
      <attribute>type</attribute>
      <attribute>sourceLabel</attribute>
      <attribute>navigableSource</attribute>
      <attribute>sourceVisibility</attribute>
      <attribute>targetLabel</attribute>
      <attribute>navigableTarget</attribute>
      <attribute>targetVisibility</attribute>
    </node>
    <node className="Inheritance" id="_oxX8rBuyEd-u0r5Az1kiEw"/>
    <node className="Cardinality" id="_oxX8rRuyEd-u0r5Az1kiEw">
      <attribute>lowerBound</attribute>
      <attribute>upperBound</attribute>
    </node>
    <node className="ClassMember" id="_oxX8rhuyEd-u0r5Az1kiEw">
      <attribute>visibility</attribute>
      <attribute>name</attribute>
    </node>
    <node className="Attribute" id="_oxX8rxuyEd-u0r5Az1kiEw">
      <attribute>type</attribute>
    </node>
    <node className="Method" id="_oxX8sBuyEd-u0r5Az1kiEw">
      <attribute>arguments</attribute>
    </node>
    <node className="Note" id="_oxX8sRuyEd-u0r5Az1kiEw">
      <attribute>text</attribute>
    </node>
    <node className="NoteAssociation" id="_oxX8shuyEd-u0r5Az1kiEw"/>
    <edge id="_oxX8xxuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oxX8pBuyEd-u0r5Az1kiEw" target="_oxX8pRuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="*">classes</attribute>
    </edge>
    <edge id="_oxX8xxuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oxX8pRuyEd-u0r5Az1kiEw" target="_oxX8pBuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oxX8yhuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oxX8pBuyEd-u0r5Az1kiEw" target="_oxX8phuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="*">elements</attribute>
    </edge>
    <edge id="_oxX8yhuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oxX8phuyEd-u0r5Az1kiEw" target="_oxX8pBuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oxX80BuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oxX8qBuyEd-u0r5Az1kiEw" target="_oxX8qhuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="1">definition</attribute>
    </edge>
    <edge id="_oxX80BuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oxX8qhuyEd-u0r5Az1kiEw" target="_oxX8qBuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oxX80xuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oxX8qRuyEd-u0r5Az1kiEw" target="_oxX8qBuyEd-u0r5Az1kiEw">
      <attribute lowerValue="1" upperValue="1">source</attribute>
    </edge>
    <edge id="_oxX80xuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oxX8qBuyEd-u0r5Az1kiEw" target="_oxX8qRuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oxX81huyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oxX8qRuyEd-u0r5Az1kiEw" target="_oxX8qBuyEd-u0r5Az1kiEw">
      <attribute lowerValue="1" upperValue="1">target</attribute>
    </edge>
    <edge id="_oxX81huyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oxX8qBuyEd-u0r5Az1kiEw" target="_oxX8qRuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oxX82RuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oxX8qhuyEd-u0r5Az1kiEw" target="_oxX8rxuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="*">attributes</attribute>
    </edge>
    <edge id="_oxX82RuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oxX8rxuyEd-u0r5Az1kiEw" target="_oxX8qhuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oxX83BuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oxX8qhuyEd-u0r5Az1kiEw" target="_oxX8sBuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="*">methods</attribute>
    </edge>
    <edge id="_oxX83BuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oxX8sBuyEd-u0r5Az1kiEw" target="_oxX8qhuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oxX83xuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oxX8qxuyEd-u0r5Az1kiEw" target="_oxX8rRuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="1">sourceCardinality</attribute>
    </edge>
    <edge id="_oxX83xuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oxX8rRuyEd-u0r5Az1kiEw" target="_oxX8qxuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oxX84huyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oxX8qxuyEd-u0r5Az1kiEw" target="_oxX8rRuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="1">targetCardinality</attribute>
    </edge>
    <edge id="_oxX84huyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oxX8rRuyEd-u0r5Az1kiEw" target="_oxX8qxuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oxX85RuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oxX8shuyEd-u0r5Az1kiEw" target="_oxX8sRuyEd-u0r5Az1kiEw">
      <attribute lowerValue="1" upperValue="1">note</attribute>
    </edge>
    <edge id="_oxX85RuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oxX8sRuyEd-u0r5Az1kiEw" target="_oxX8shuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oxX8zRuyEd-u0r5Az1kiEw" relType="ASSOCIATION" source="_oxX8qBuyEd-u0r5Az1kiEw" target="_oxX8pRuyEd-u0r5Az1kiEw">
      <attribute lowerValue="1" upperValue="1">class</attribute>
    </edge>
    <edge id="_oxX8zRuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="ASSOCIATION" source="_oxX8pRuyEd-u0r5Az1kiEw" target="_oxX8qBuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oxX89RuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oxX8pBuyEd-u0r5Az1kiEw" target="_oxX8oxuyEd-u0r5Az1kiEw"/>
    <edge id="_oxX89RuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oxX8oxuyEd-u0r5Az1kiEw" target="_oxX8pBuyEd-u0r5Az1kiEw"/>
    <edge id="_oxX89huyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oxX8pRuyEd-u0r5Az1kiEw" target="_oxX8oxuyEd-u0r5Az1kiEw"/>
    <edge id="_oxX89huyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oxX8oxuyEd-u0r5Az1kiEw" target="_oxX8pRuyEd-u0r5Az1kiEw"/>
    <edge id="_oxX89xuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oxX8phuyEd-u0r5Az1kiEw" target="_oxX8oxuyEd-u0r5Az1kiEw"/>
    <edge id="_oxX89xuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oxX8oxuyEd-u0r5Az1kiEw" target="_oxX8phuyEd-u0r5Az1kiEw"/>
    <edge id="_oxX8-BuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oxX8pxuyEd-u0r5Az1kiEw" target="_oxX8phuyEd-u0r5Az1kiEw"/>
    <edge id="_oxX8-BuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oxX8phuyEd-u0r5Az1kiEw" target="_oxX8pxuyEd-u0r5Az1kiEw"/>
    <edge id="_oxX8-RuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oxX8qBuyEd-u0r5Az1kiEw" target="_oxX8pxuyEd-u0r5Az1kiEw"/>
    <edge id="_oxX8-RuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oxX8pxuyEd-u0r5Az1kiEw" target="_oxX8qBuyEd-u0r5Az1kiEw"/>
    <edge id="_oxX8-huyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oxX8qRuyEd-u0r5Az1kiEw" target="_oxX8phuyEd-u0r5Az1kiEw"/>
    <edge id="_oxX8-huyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oxX8phuyEd-u0r5Az1kiEw" target="_oxX8qRuyEd-u0r5Az1kiEw"/>
    <edge id="_oxX8-xuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oxX8qhuyEd-u0r5Az1kiEw" target="_oxX8oxuyEd-u0r5Az1kiEw"/>
    <edge id="_oxX8-xuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oxX8oxuyEd-u0r5Az1kiEw" target="_oxX8qhuyEd-u0r5Az1kiEw"/>
    <edge id="_oxX8_BuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oxX8qxuyEd-u0r5Az1kiEw" target="_oxX8qRuyEd-u0r5Az1kiEw"/>
    <edge id="_oxX8_BuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oxX8qRuyEd-u0r5Az1kiEw" target="_oxX8qxuyEd-u0r5Az1kiEw"/>
    <edge id="_oxX8_RuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oxX8rBuyEd-u0r5Az1kiEw" target="_oxX8qRuyEd-u0r5Az1kiEw"/>
    <edge id="_oxX8_RuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oxX8qRuyEd-u0r5Az1kiEw" target="_oxX8rBuyEd-u0r5Az1kiEw"/>
    <edge id="_oxX8_huyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oxX8rRuyEd-u0r5Az1kiEw" target="_oxX8oxuyEd-u0r5Az1kiEw"/>
    <edge id="_oxX8_huyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oxX8oxuyEd-u0r5Az1kiEw" target="_oxX8rRuyEd-u0r5Az1kiEw"/>
    <edge id="_oxX8_xuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oxX8rhuyEd-u0r5Az1kiEw" target="_oxX8oxuyEd-u0r5Az1kiEw"/>
    <edge id="_oxX8_xuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oxX8oxuyEd-u0r5Az1kiEw" target="_oxX8rhuyEd-u0r5Az1kiEw"/>
    <edge id="_oxhGkBuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oxX8rxuyEd-u0r5Az1kiEw" target="_oxX8rhuyEd-u0r5Az1kiEw"/>
    <edge id="_oxhGkBuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oxX8rhuyEd-u0r5Az1kiEw" target="_oxX8rxuyEd-u0r5Az1kiEw"/>
    <edge id="_oxhGkRuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oxX8sBuyEd-u0r5Az1kiEw" target="_oxX8rhuyEd-u0r5Az1kiEw"/>
    <edge id="_oxhGkRuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oxX8rhuyEd-u0r5Az1kiEw" target="_oxX8sBuyEd-u0r5Az1kiEw"/>
    <edge id="_oxhGkhuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oxX8sRuyEd-u0r5Az1kiEw" target="_oxX8pxuyEd-u0r5Az1kiEw"/>
    <edge id="_oxhGkhuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oxX8pxuyEd-u0r5Az1kiEw" target="_oxX8sRuyEd-u0r5Az1kiEw"/>
    <edge id="_oxhGkxuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oxX8shuyEd-u0r5Az1kiEw" target="_oxX8qRuyEd-u0r5Az1kiEw"/>
    <edge id="_oxhGkxuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oxX8qRuyEd-u0r5Az1kiEw" target="_oxX8shuyEd-u0r5Az1kiEw"/>
  </graph>
</graphml>
