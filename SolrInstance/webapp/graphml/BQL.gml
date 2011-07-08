<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_di4KcOiaEd6gMtZRCjS81g" projectName="BQL">
    <node className="LocatedElement" id="_di4Kc-iaEd6gMtZRCjS81g">
      <attribute>location</attribute>
      <attribute>commentsBefore</attribute>
      <attribute>commentsAfter</attribute>
    </node>
    <node className="Query" id="_di4KdOiaEd6gMtZRCjS81g"/>
    <node className="Entry" id="_di4KdeiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>type</attribute>
      <attribute>allFields</attribute>
    </node>
    <node className="Field" id="_di4KduiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Predicate" id="_di4Kd-iaEd6gMtZRCjS81g"/>
    <node className="Expression" id="_di4KeOiaEd6gMtZRCjS81g">
      <attribute>field</attribute>
      <attribute>value</attribute>
    </node>
    <edge id="_di4KguiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_di4KdOiaEd6gMtZRCjS81g" target="_di4KdeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">entries</attribute>
    </edge>
    <edge id="_di4KguiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_di4KdeiaEd6gMtZRCjS81g" target="_di4KdOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_di4KheiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_di4KdOiaEd6gMtZRCjS81g" target="_di4Kd-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">predicates</attribute>
    </edge>
    <edge id="_di4KheiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_di4Kd-iaEd6gMtZRCjS81g" target="_di4KdOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_di4xgOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_di4KdeiaEd6gMtZRCjS81g" target="_di4KduiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">fields</attribute>
    </edge>
    <edge id="_di4xgOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_di4KduiaEd6gMtZRCjS81g" target="_di4KdeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_di4xhuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_di4Kd-iaEd6gMtZRCjS81g" target="_di4KeOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">expression</attribute>
    </edge>
    <edge id="_di4xhuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_di4KeOiaEd6gMtZRCjS81g" target="_di4Kd-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_di4xg-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_di4KdeiaEd6gMtZRCjS81g" target="_di4Kd-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">predicate</attribute>
    </edge>
    <edge id="_di4xg-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_di4Kd-iaEd6gMtZRCjS81g" target="_di4KdeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_di4xi-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_di4KdeiaEd6gMtZRCjS81g" target="_di4Kc-iaEd6gMtZRCjS81g"/>
    <edge id="_di4xi-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_di4Kc-iaEd6gMtZRCjS81g" target="_di4KdeiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
