<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_fm4pkOiaEd6gMtZRCjS81g" projectName="PL/I">
    <node className="PLIClassifier" id="_fm4pk-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="PLISimpleType" id="_fm4plOiaEd6gMtZRCjS81g"/>
    <node className="PLINamedType" id="_fm4pleiaEd6gMtZRCjS81g"/>
    <node className="PLIComposedType" id="_fm4pluiaEd6gMtZRCjS81g"/>
    <node className="PLIAlias" id="_fm4pl-iaEd6gMtZRCjS81g"/>
    <node className="PLIAttribute" id="_fm4pmOiaEd6gMtZRCjS81g"/>
    <node className="PLIComputationalType" id="_fm4pmeiaEd6gMtZRCjS81g"/>
    <node className="PLINonComputationalType" id="_fm4pmuiaEd6gMtZRCjS81g"/>
    <node className="PLIElement" id="_fm4pm-iaEd6gMtZRCjS81g">
      <attribute>level</attribute>
      <attribute>name</attribute>
    </node>
    <node className="PLIElementInitialValue" id="_fm4pnOiaEd6gMtZRCjS81g">
      <attribute>initialValue</attribute>
    </node>
    <node className="PLISourceText" id="_fm4pneiaEd6gMtZRCjS81g">
      <attribute>source</attribute>
      <attribute>fileName</attribute>
    </node>
    <node className="PLIArray" id="_fm4pnuiaEd6gMtZRCjS81g"/>
    <node className="PLIFixedBoundArray" id="_fm4pn-iaEd6gMtZRCjS81g">
      <attribute>IBound</attribute>
      <attribute>uBound</attribute>
    </node>
    <node className="PLIFixedLboundArray" id="_fm5QoOiaEd6gMtZRCjS81g">
      <attribute>IBound</attribute>
      <attribute>uBoundToAllocate</attribute>
    </node>
    <node className="PLIHBoundArray" id="_fm5QoeiaEd6gMtZRCjS81g">
      <attribute>uBound</attribute>
      <attribute>IBoundToAllocate</attribute>
    </node>
    <node className="PLIVariableBoundArray" id="_fm5QouiaEd6gMtZRCjS81g">
      <attribute>IBoundToAllocate</attribute>
      <attribute>hBoundToAllocate</attribute>
    </node>
    <edge id="_fm5QtOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fm4pluiaEd6gMtZRCjS81g" target="_fm4pm-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">elements</attribute>
    </edge>
    <edge id="_fm5QtOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fm4pm-iaEd6gMtZRCjS81g" target="_fm4pluiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fm5Qt-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fm4pl-iaEd6gMtZRCjS81g" target="_fm4plOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">type</attribute>
    </edge>
    <edge id="_fm5Qt-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fm4plOiaEd6gMtZRCjS81g" target="_fm4pl-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fm5QuuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fm4pl-iaEd6gMtZRCjS81g" target="_fm4pmOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">contains</attribute>
    </edge>
    <edge id="_fm5QuuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fm4pmOiaEd6gMtZRCjS81g" target="_fm4pl-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fm5Qw-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fm4pm-iaEd6gMtZRCjS81g" target="_fm4pnuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">array</attribute>
    </edge>
    <edge id="_fm5Qw-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fm4pnuiaEd6gMtZRCjS81g" target="_fm4pm-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fm5QseiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fm4pk-iaEd6gMtZRCjS81g" target="_fm4pm-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">typedElements</attribute>
    </edge>
    <edge id="_fm5QseiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_fm4pm-iaEd6gMtZRCjS81g" target="_fm4pk-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fm5QveiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fm4pm-iaEd6gMtZRCjS81g" target="_fm4pnOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">initial</attribute>
    </edge>
    <edge id="_fm5QveiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fm4pnOiaEd6gMtZRCjS81g" target="_fm4pm-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fm5QwOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fm4pm-iaEd6gMtZRCjS81g" target="_fm4pneiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">source</attribute>
    </edge>
    <edge id="_fm5QwOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fm4pneiaEd6gMtZRCjS81g" target="_fm4pm-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fm5QxuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fm4pn-iaEd6gMtZRCjS81g" target="_fm4pm-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">referredTo</attribute>
    </edge>
    <edge id="_fm5QxuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fm4pm-iaEd6gMtZRCjS81g" target="_fm4pn-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fm5QyeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fm5QoOiaEd6gMtZRCjS81g" target="_fm4pm-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">referredTo</attribute>
    </edge>
    <edge id="_fm5QyeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fm4pm-iaEd6gMtZRCjS81g" target="_fm5QoOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fm5QzOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fm5QoeiaEd6gMtZRCjS81g" target="_fm4pm-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">referredTo</attribute>
    </edge>
    <edge id="_fm5QzOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fm4pm-iaEd6gMtZRCjS81g" target="_fm5QoeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fm53seiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fm5QouiaEd6gMtZRCjS81g" target="_fm4pm-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">referredTo</attribute>
    </edge>
    <edge id="_fm53seiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fm4pm-iaEd6gMtZRCjS81g" target="_fm5QouiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fm53tuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fm4plOiaEd6gMtZRCjS81g" target="_fm4pk-iaEd6gMtZRCjS81g"/>
    <edge id="_fm53tuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fm4pk-iaEd6gMtZRCjS81g" target="_fm4plOiaEd6gMtZRCjS81g"/>
    <edge id="_fm53t-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fm4pleiaEd6gMtZRCjS81g" target="_fm4pk-iaEd6gMtZRCjS81g"/>
    <edge id="_fm53t-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fm4pk-iaEd6gMtZRCjS81g" target="_fm4pleiaEd6gMtZRCjS81g"/>
    <edge id="_fm53uOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fm4pluiaEd6gMtZRCjS81g" target="_fm4pk-iaEd6gMtZRCjS81g"/>
    <edge id="_fm53uOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fm4pk-iaEd6gMtZRCjS81g" target="_fm4pluiaEd6gMtZRCjS81g"/>
    <edge id="_fm6ewOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fm4pmeiaEd6gMtZRCjS81g" target="_fm4plOiaEd6gMtZRCjS81g"/>
    <edge id="_fm6ewOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fm4plOiaEd6gMtZRCjS81g" target="_fm4pmeiaEd6gMtZRCjS81g"/>
    <edge id="_fm6eweiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fm4pmuiaEd6gMtZRCjS81g" target="_fm4plOiaEd6gMtZRCjS81g"/>
    <edge id="_fm6eweiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fm4plOiaEd6gMtZRCjS81g" target="_fm4pmuiaEd6gMtZRCjS81g"/>
    <edge id="_fm6ewuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fm4pn-iaEd6gMtZRCjS81g" target="_fm4pnuiaEd6gMtZRCjS81g"/>
    <edge id="_fm6ewuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fm4pnuiaEd6gMtZRCjS81g" target="_fm4pn-iaEd6gMtZRCjS81g"/>
    <edge id="_fm6ew-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fm5QoOiaEd6gMtZRCjS81g" target="_fm4pnuiaEd6gMtZRCjS81g"/>
    <edge id="_fm6ew-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fm4pnuiaEd6gMtZRCjS81g" target="_fm5QoOiaEd6gMtZRCjS81g"/>
    <edge id="_fm6exOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fm5QoeiaEd6gMtZRCjS81g" target="_fm4pnuiaEd6gMtZRCjS81g"/>
    <edge id="_fm6exOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fm4pnuiaEd6gMtZRCjS81g" target="_fm5QoeiaEd6gMtZRCjS81g"/>
    <edge id="_fm6exeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fm5QouiaEd6gMtZRCjS81g" target="_fm4pnuiaEd6gMtZRCjS81g"/>
    <edge id="_fm6exeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fm4pnuiaEd6gMtZRCjS81g" target="_fm5QouiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
