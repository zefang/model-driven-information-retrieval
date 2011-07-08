<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_eXs5oOiaEd6gMtZRCjS81g" projectName="HSM">
    <node className="MgaObject" id="_eXs5o-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>position</attribute>
    </node>
    <node className="StateBase" id="_eXs5pOiaEd6gMtZRCjS81g">
      <attribute>defaultTransition</attribute>
      <attribute>marked</attribute>
    </node>
    <node className="DataVar" id="_eXs5peiaEd6gMtZRCjS81g"/>
    <node className="Transition" id="_eXs5puiaEd6gMtZRCjS81g">
      <attribute>guard</attribute>
      <attribute>trigger</attribute>
      <attribute>action</attribute>
      <attribute>isSync</attribute>
    </node>
    <node className="StateDateRelation" id="_eXs5p-iaEd6gMtZRCjS81g">
      <attribute>value</attribute>
      <attribute>color</attribute>
    </node>
    <node className="RootFolder" id="_eXs5qOiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="OrState" id="_eXs5qeiaEd6gMtZRCjS81g"/>
    <node className="AndState" id="_eXs5quiaEd6gMtZRCjS81g"/>
    <node className="CompoundState" id="_eXs5q-iaEd6gMtZRCjS81g"/>
    <node className="PrimitiveState" id="_eXs5rOiaEd6gMtZRCjS81g"/>
    <node className="Init" id="_eXs5reiaEd6gMtZRCjS81g"/>
    <node className="State" id="_eXs5ruiaEd6gMtZRCjS81g"/>
    <node className="StateDataRelation" id="_eXs5r-iaEd6gMtZRCjS81g">
      <attribute>value</attribute>
      <attribute>color</attribute>
    </node>
    <node className="AssociationStateState" id="_eXs5sOiaEd6gMtZRCjS81g"/>
    <node className="AssociationDataStateBase" id="_eXs5seiaEd6gMtZRCjS81g"/>
    <edge id="_eXtgueiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eXs5qOiaEd6gMtZRCjS81g" target="_eXs5qOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">rootFolders</attribute>
    </edge>
    <edge id="_eXtgueiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eXs5qOiaEd6gMtZRCjS81g" target="_eXs5qOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eXtgvOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eXs5qOiaEd6gMtZRCjS81g" target="_eXs5qeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">orState</attribute>
    </edge>
    <edge id="_eXtgvOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eXs5qeiaEd6gMtZRCjS81g" target="_eXs5qOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eXtgv-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eXs5qeiaEd6gMtZRCjS81g" target="_eXs5ruiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">state</attribute>
    </edge>
    <edge id="_eXtgv-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eXs5ruiaEd6gMtZRCjS81g" target="_eXs5qeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eXtgwuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eXs5qeiaEd6gMtZRCjS81g" target="_eXs5reiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">init</attribute>
    </edge>
    <edge id="_eXtgwuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eXs5reiaEd6gMtZRCjS81g" target="_eXs5qeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eXtgxeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eXs5qeiaEd6gMtZRCjS81g" target="_eXs5peiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">dataVar</attribute>
    </edge>
    <edge id="_eXtgxeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eXs5peiaEd6gMtZRCjS81g" target="_eXs5qeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eXtgyOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eXs5qeiaEd6gMtZRCjS81g" target="_eXs5r-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">stateDataRelation</attribute>
    </edge>
    <edge id="_eXtgyOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eXs5r-iaEd6gMtZRCjS81g" target="_eXs5qeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eXtgy-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eXs5qeiaEd6gMtZRCjS81g" target="_eXs5puiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">transition</attribute>
    </edge>
    <edge id="_eXtgy-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eXs5puiaEd6gMtZRCjS81g" target="_eXs5qeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eXtgzuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eXs5qeiaEd6gMtZRCjS81g" target="_eXs5q-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">compoundState</attribute>
    </edge>
    <edge id="_eXtgzuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eXs5q-iaEd6gMtZRCjS81g" target="_eXs5qeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eXtg0eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eXs5quiaEd6gMtZRCjS81g" target="_eXs5q-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">compoundState</attribute>
    </edge>
    <edge id="_eXtg0eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eXs5q-iaEd6gMtZRCjS81g" target="_eXs5quiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eXs5v-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eXs5pOiaEd6gMtZRCjS81g" target="_eXs5sOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">associationStateStatedst</attribute>
    </edge>
    <edge id="_eXs5v-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eXs5sOiaEd6gMtZRCjS81g" target="_eXs5pOiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_eXs5wuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eXs5pOiaEd6gMtZRCjS81g" target="_eXs5sOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">associationStateStatesrc</attribute>
    </edge>
    <edge id="_eXs5wuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eXs5sOiaEd6gMtZRCjS81g" target="_eXs5pOiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_eXs5xeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eXs5pOiaEd6gMtZRCjS81g" target="_eXs5peiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">data</attribute>
    </edge>
    <edge id="_eXs5xeiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_eXs5peiaEd6gMtZRCjS81g" target="_eXs5pOiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_eXtgsOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eXs5pOiaEd6gMtZRCjS81g" target="_eXs5seiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">associationDataStateBase</attribute>
    </edge>
    <edge id="_eXtgsOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eXs5seiaEd6gMtZRCjS81g" target="_eXs5pOiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_eXtgs-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eXs5peiaEd6gMtZRCjS81g" target="_eXs5seiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">associationDataStateBase</attribute>
    </edge>
    <edge id="_eXtgs-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eXs5seiaEd6gMtZRCjS81g" target="_eXs5peiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_eXtgtuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eXs5puiaEd6gMtZRCjS81g" target="_eXs5sOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">associationStateState</attribute>
    </edge>
    <edge id="_eXtgtuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eXs5sOiaEd6gMtZRCjS81g" target="_eXs5puiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eXtg1OiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eXs5r-iaEd6gMtZRCjS81g" target="_eXs5seiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">associationDataStateBase1</attribute>
    </edge>
    <edge id="_eXtg1OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eXs5seiaEd6gMtZRCjS81g" target="_eXs5r-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eXuHwOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eXs5pOiaEd6gMtZRCjS81g" target="_eXs5o-iaEd6gMtZRCjS81g"/>
    <edge id="_eXuHwOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eXs5o-iaEd6gMtZRCjS81g" target="_eXs5pOiaEd6gMtZRCjS81g"/>
    <edge id="_eXuHweiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eXs5peiaEd6gMtZRCjS81g" target="_eXs5o-iaEd6gMtZRCjS81g"/>
    <edge id="_eXuHweiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eXs5o-iaEd6gMtZRCjS81g" target="_eXs5peiaEd6gMtZRCjS81g"/>
    <edge id="_eXuHwuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eXs5puiaEd6gMtZRCjS81g" target="_eXs5o-iaEd6gMtZRCjS81g"/>
    <edge id="_eXuHwuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eXs5o-iaEd6gMtZRCjS81g" target="_eXs5puiaEd6gMtZRCjS81g"/>
    <edge id="_eXuHw-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eXs5p-iaEd6gMtZRCjS81g" target="_eXs5o-iaEd6gMtZRCjS81g"/>
    <edge id="_eXuHw-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eXs5o-iaEd6gMtZRCjS81g" target="_eXs5p-iaEd6gMtZRCjS81g"/>
    <edge id="_eXuHxOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eXs5qeiaEd6gMtZRCjS81g" target="_eXs5q-iaEd6gMtZRCjS81g"/>
    <edge id="_eXuHxOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eXs5q-iaEd6gMtZRCjS81g" target="_eXs5qeiaEd6gMtZRCjS81g"/>
    <edge id="_eXuu0OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eXs5quiaEd6gMtZRCjS81g" target="_eXs5q-iaEd6gMtZRCjS81g"/>
    <edge id="_eXuu0OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eXs5q-iaEd6gMtZRCjS81g" target="_eXs5quiaEd6gMtZRCjS81g"/>
    <edge id="_eXuu0eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eXs5q-iaEd6gMtZRCjS81g" target="_eXs5pOiaEd6gMtZRCjS81g"/>
    <edge id="_eXuu0eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eXs5pOiaEd6gMtZRCjS81g" target="_eXs5q-iaEd6gMtZRCjS81g"/>
    <edge id="_eXuu0uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eXs5rOiaEd6gMtZRCjS81g" target="_eXs5pOiaEd6gMtZRCjS81g"/>
    <edge id="_eXuu0uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eXs5pOiaEd6gMtZRCjS81g" target="_eXs5rOiaEd6gMtZRCjS81g"/>
    <edge id="_eXuu0-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eXs5reiaEd6gMtZRCjS81g" target="_eXs5rOiaEd6gMtZRCjS81g"/>
    <edge id="_eXuu0-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eXs5rOiaEd6gMtZRCjS81g" target="_eXs5reiaEd6gMtZRCjS81g"/>
    <edge id="_eXuu1OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eXs5ruiaEd6gMtZRCjS81g" target="_eXs5rOiaEd6gMtZRCjS81g"/>
    <edge id="_eXuu1OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eXs5rOiaEd6gMtZRCjS81g" target="_eXs5ruiaEd6gMtZRCjS81g"/>
    <edge id="_eXuu1eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eXs5r-iaEd6gMtZRCjS81g" target="_eXs5rOiaEd6gMtZRCjS81g"/>
    <edge id="_eXuu1eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eXs5rOiaEd6gMtZRCjS81g" target="_eXs5r-iaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
