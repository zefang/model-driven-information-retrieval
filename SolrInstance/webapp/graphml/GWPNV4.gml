<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_eQ6VIOiaEd6gMtZRCjS81g" projectName="PetriNet">
    <node className="Place" id="_eQ6VI-iaEd6gMtZRCjS81g"/>
    <node className="Transition" id="_eQ6VJOiaEd6gMtZRCjS81g"/>
    <node className="Net" id="_eQ6VJeiaEd6gMtZRCjS81g"/>
    <node className="Arc" id="_eQ6VJuiaEd6gMtZRCjS81g">
      <attribute>weight</attribute>
    </node>
    <node className="PTArc" id="_eQ6VJ-iaEd6gMtZRCjS81g"/>
    <node className="TPArc" id="_eQ6VKOiaEd6gMtZRCjS81g"/>
    <edge id="_eQ68M-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eQ6VJeiaEd6gMtZRCjS81g" target="_eQ6VI-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">place</attribute>
    </edge>
    <edge id="_eQ68M-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eQ6VI-iaEd6gMtZRCjS81g" target="_eQ6VJeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eQ68NuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eQ6VJeiaEd6gMtZRCjS81g" target="_eQ6VJOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">transition</attribute>
    </edge>
    <edge id="_eQ68NuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eQ6VJOiaEd6gMtZRCjS81g" target="_eQ6VJeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eQ6VKuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eQ6VI-iaEd6gMtZRCjS81g" target="_eQ6VJ-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">out</attribute>
    </edge>
    <edge id="_eQ6VKuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eQ6VJ-iaEd6gMtZRCjS81g" target="_eQ6VI-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eQ6VLeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eQ6VI-iaEd6gMtZRCjS81g" target="_eQ6VKOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">in</attribute>
    </edge>
    <edge id="_eQ6VLeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eQ6VKOiaEd6gMtZRCjS81g" target="_eQ6VI-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eQ6VMOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eQ6VJOiaEd6gMtZRCjS81g" target="_eQ6VJ-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">in</attribute>
    </edge>
    <edge id="_eQ6VMOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eQ6VJ-iaEd6gMtZRCjS81g" target="_eQ6VJOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eQ68MOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eQ6VJOiaEd6gMtZRCjS81g" target="_eQ6VKOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">out</attribute>
    </edge>
    <edge id="_eQ68MOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eQ6VKOiaEd6gMtZRCjS81g" target="_eQ6VJOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eQ68OuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eQ6VJ-iaEd6gMtZRCjS81g" target="_eQ6VJuiaEd6gMtZRCjS81g"/>
    <edge id="_eQ68OuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eQ6VJuiaEd6gMtZRCjS81g" target="_eQ6VJ-iaEd6gMtZRCjS81g"/>
    <edge id="_eQ68O-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eQ6VKOiaEd6gMtZRCjS81g" target="_eQ6VJuiaEd6gMtZRCjS81g"/>
    <edge id="_eQ68O-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eQ6VJuiaEd6gMtZRCjS81g" target="_eQ6VKOiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
