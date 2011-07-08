<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_eMUwEOiaEd6gMtZRCjS81g" projectName="FSM">
    <node className="MgaObject" id="_eMUwE-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>position</attribute>
    </node>
    <node className="Transition" id="_eMUwFOiaEd6gMtZRCjS81g"/>
    <node className="State" id="_eMUwFeiaEd6gMtZRCjS81g"/>
    <node className="StateMachine" id="_eMUwFuiaEd6gMtZRCjS81g"/>
    <node className="RootFolder" id="_eMUwF-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="AssociationStateState" id="_eMUwGOiaEd6gMtZRCjS81g"/>
    <edge id="_eMUwJeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eMUwFuiaEd6gMtZRCjS81g" target="_eMUwFeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">state</attribute>
    </edge>
    <edge id="_eMUwJeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eMUwFeiaEd6gMtZRCjS81g" target="_eMUwFuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eMUwKOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eMUwFuiaEd6gMtZRCjS81g" target="_eMUwFOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">transition</attribute>
    </edge>
    <edge id="_eMUwKOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eMUwFOiaEd6gMtZRCjS81g" target="_eMUwFuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eMVXIeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eMUwF-iaEd6gMtZRCjS81g" target="_eMUwF-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">rootFolders</attribute>
    </edge>
    <edge id="_eMVXIeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eMUwF-iaEd6gMtZRCjS81g" target="_eMUwF-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eMVXJOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eMUwF-iaEd6gMtZRCjS81g" target="_eMUwFuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">stateMachine</attribute>
    </edge>
    <edge id="_eMVXJOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eMUwFuiaEd6gMtZRCjS81g" target="_eMUwF-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eMUwHOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eMUwFOiaEd6gMtZRCjS81g" target="_eMUwGOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">associationStateState</attribute>
    </edge>
    <edge id="_eMUwHOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eMUwGOiaEd6gMtZRCjS81g" target="_eMUwFOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eMUwH-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eMUwFeiaEd6gMtZRCjS81g" target="_eMUwGOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">associationStateStatedst</attribute>
    </edge>
    <edge id="_eMUwH-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eMUwGOiaEd6gMtZRCjS81g" target="_eMUwFeiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_eMUwIuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eMUwFeiaEd6gMtZRCjS81g" target="_eMUwGOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">associationStateStatesrc</attribute>
    </edge>
    <edge id="_eMUwIuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eMUwGOiaEd6gMtZRCjS81g" target="_eMUwFeiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_eMVXKeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eMUwFOiaEd6gMtZRCjS81g" target="_eMUwE-iaEd6gMtZRCjS81g"/>
    <edge id="_eMVXKeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eMUwE-iaEd6gMtZRCjS81g" target="_eMUwFOiaEd6gMtZRCjS81g"/>
    <edge id="_eMVXKuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eMUwFeiaEd6gMtZRCjS81g" target="_eMUwE-iaEd6gMtZRCjS81g"/>
    <edge id="_eMVXKuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eMUwE-iaEd6gMtZRCjS81g" target="_eMUwFeiaEd6gMtZRCjS81g"/>
    <edge id="_eMVXK-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eMUwFuiaEd6gMtZRCjS81g" target="_eMUwE-iaEd6gMtZRCjS81g"/>
    <edge id="_eMVXK-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eMUwE-iaEd6gMtZRCjS81g" target="_eMUwFuiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
