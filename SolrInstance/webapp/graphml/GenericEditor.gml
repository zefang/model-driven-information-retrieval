<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_eR-sIOiaEd6gMtZRCjS81g" projectName="Editor">
    <node className="LocatedElement" id="_eR_TMOiaEd6gMtZRCjS81g">
      <attribute>location</attribute>
    </node>
    <node className="Editor" id="_eR_TMeiaEd6gMtZRCjS81g">
      <attribute>extension</attribute>
    </node>
    <node className="AbstractElement" id="_eR_TMuiaEd6gMtZRCjS81g">
      <attribute>type</attribute>
    </node>
    <node className="Block" id="_eR_TM-iaEd6gMtZRCjS81g">
      <attribute>blockbegin</attribute>
      <attribute>blockend</attribute>
    </node>
    <node className="GroupElement" id="_eR_TNOiaEd6gMtZRCjS81g"/>
    <node className="Element" id="_eR_TNeiaEd6gMtZRCjS81g">
      <attribute>element</attribute>
    </node>
    <node className="Format" id="_eR_TNuiaEd6gMtZRCjS81g"/>
    <node className="Color" id="_eR_TN-iaEd6gMtZRCjS81g">
      <attribute>red</attribute>
      <attribute>green</attribute>
      <attribute>blue</attribute>
    </node>
    <node className="Font" id="_eR_TOOiaEd6gMtZRCjS81g">
      <attribute>font</attribute>
      <attribute>bold</attribute>
      <attribute>italic</attribute>
    </node>
    <node className="Indent" id="_eR_TOeiaEd6gMtZRCjS81g">
      <attribute>retrait</attribute>
    </node>
    <edge id="_eR_TR-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eR_TMeiaEd6gMtZRCjS81g" target="_eR_TMuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">abstractElements</attribute>
    </edge>
    <edge id="_eR_TR-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eR_TMuiaEd6gMtZRCjS81g" target="_eR_TMeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eR_TSuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eR_TMuiaEd6gMtZRCjS81g" target="_eR_TNuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">format</attribute>
    </edge>
    <edge id="_eR_TSuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eR_TNuiaEd6gMtZRCjS81g" target="_eR_TMuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eR_TTeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eR_TNOiaEd6gMtZRCjS81g" target="_eR_TOeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">indent</attribute>
    </edge>
    <edge id="_eR_TTeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eR_TOeiaEd6gMtZRCjS81g" target="_eR_TNOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eR_TUOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eR_TNOiaEd6gMtZRCjS81g" target="_eR_TNeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">element</attribute>
    </edge>
    <edge id="_eR_TUOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eR_TNeiaEd6gMtZRCjS81g" target="_eR_TNOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eR_TVuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eR_TNuiaEd6gMtZRCjS81g" target="_eR_TN-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">color</attribute>
    </edge>
    <edge id="_eR_TVuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eR_TN-iaEd6gMtZRCjS81g" target="_eR_TNuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eR_TWeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eR_TNuiaEd6gMtZRCjS81g" target="_eR_TOOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">font</attribute>
    </edge>
    <edge id="_eR_TWeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eR_TOOiaEd6gMtZRCjS81g" target="_eR_TNuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eR_TU-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eR_TNeiaEd6gMtZRCjS81g" target="_eR_TNOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">groupElement</attribute>
    </edge>
    <edge id="_eR_TU-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eR_TNOiaEd6gMtZRCjS81g" target="_eR_TNeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eR_TXOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eR_TOeiaEd6gMtZRCjS81g" target="_eR_TNOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">groupElementIndent</attribute>
    </edge>
    <edge id="_eR_TXOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eR_TNOiaEd6gMtZRCjS81g" target="_eR_TOeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eR_6ROiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eR_TMeiaEd6gMtZRCjS81g" target="_eR_TMOiaEd6gMtZRCjS81g"/>
    <edge id="_eR_6ROiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eR_TMOiaEd6gMtZRCjS81g" target="_eR_TMeiaEd6gMtZRCjS81g"/>
    <edge id="_eR_6ReiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eR_TMuiaEd6gMtZRCjS81g" target="_eR_TMOiaEd6gMtZRCjS81g"/>
    <edge id="_eR_6ReiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eR_TMOiaEd6gMtZRCjS81g" target="_eR_TMuiaEd6gMtZRCjS81g"/>
    <edge id="_eR_6RuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eR_TM-iaEd6gMtZRCjS81g" target="_eR_TMuiaEd6gMtZRCjS81g"/>
    <edge id="_eR_6RuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eR_TMuiaEd6gMtZRCjS81g" target="_eR_TM-iaEd6gMtZRCjS81g"/>
    <edge id="_eR_6R-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eR_TNOiaEd6gMtZRCjS81g" target="_eR_TMuiaEd6gMtZRCjS81g"/>
    <edge id="_eR_6R-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eR_TMuiaEd6gMtZRCjS81g" target="_eR_TNOiaEd6gMtZRCjS81g"/>
    <edge id="_eR_6SOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eR_TNeiaEd6gMtZRCjS81g" target="_eR_TMOiaEd6gMtZRCjS81g"/>
    <edge id="_eR_6SOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eR_TMOiaEd6gMtZRCjS81g" target="_eR_TNeiaEd6gMtZRCjS81g"/>
    <edge id="_eR_6SeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eR_TNuiaEd6gMtZRCjS81g" target="_eR_TMOiaEd6gMtZRCjS81g"/>
    <edge id="_eR_6SeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eR_TMOiaEd6gMtZRCjS81g" target="_eR_TNuiaEd6gMtZRCjS81g"/>
    <edge id="_eSAhUOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eR_TN-iaEd6gMtZRCjS81g" target="_eR_TMOiaEd6gMtZRCjS81g"/>
    <edge id="_eSAhUOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eR_TMOiaEd6gMtZRCjS81g" target="_eR_TN-iaEd6gMtZRCjS81g"/>
    <edge id="_eSAhUeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eR_TOOiaEd6gMtZRCjS81g" target="_eR_TMOiaEd6gMtZRCjS81g"/>
    <edge id="_eSAhUeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eR_TMOiaEd6gMtZRCjS81g" target="_eR_TOOiaEd6gMtZRCjS81g"/>
    <edge id="_eSAhUuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eR_TOeiaEd6gMtZRCjS81g" target="_eR_TMOiaEd6gMtZRCjS81g"/>
    <edge id="_eSAhUuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eR_TMOiaEd6gMtZRCjS81g" target="_eR_TOeiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
