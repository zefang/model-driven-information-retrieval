<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_d6eyIOiaEd6gMtZRCjS81g" projectName="ControllerUML">
    <node className="ControllerAttribute" id="_d6eyI-iaEd6gMtZRCjS81g"/>
    <node className="Controller" id="_d6eyJOiaEd6gMtZRCjS81g"/>
    <node className="StateMachine" id="_d6eyJeiaEd6gMtZRCjS81g"/>
    <node className="State" id="_d6eyJuiaEd6gMtZRCjS81g"/>
    <node className="SubControllerState" id="_d6eyJ-iaEd6gMtZRCjS81g"/>
    <node className="ViewState" id="_d6eyKOiaEd6gMtZRCjS81g"/>
    <node className="StateTransition" id="_d6eyKeiaEd6gMtZRCjS81g"/>
    <node className="StateMachineAction" id="_d6eyKuiaEd6gMtZRCjS81g"/>
    <node className="Event" id="_d6eyK-iaEd6gMtZRCjS81g"/>
    <edge id="_d6eyL-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_d6eyJOiaEd6gMtZRCjS81g" target="_d6eyJeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">behavior</attribute>
    </edge>
    <edge id="_d6eyL-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_d6eyJeiaEd6gMtZRCjS81g" target="_d6eyJOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d6eyMuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_d6eyJeiaEd6gMtZRCjS81g" target="_d6eyJuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">states</attribute>
    </edge>
    <edge id="_d6eyMuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_d6eyJuiaEd6gMtZRCjS81g" target="_d6eyJeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d6eyNeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_d6eyJuiaEd6gMtZRCjS81g" target="_d6eyJuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">substates</attribute>
    </edge>
    <edge id="_d6eyNeiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_d6eyJuiaEd6gMtZRCjS81g" target="_d6eyJuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d6eyOOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_d6eyJuiaEd6gMtZRCjS81g" target="_d6eyKeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">outGoing</attribute>
    </edge>
    <edge id="_d6eyOOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_d6eyKeiaEd6gMtZRCjS81g" target="_d6eyJuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d6fZMOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_d6eyKeiaEd6gMtZRCjS81g" target="_d6eyKuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">effect</attribute>
    </edge>
    <edge id="_d6fZMOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_d6eyKuiaEd6gMtZRCjS81g" target="_d6eyKeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d6eyLOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_d6eyI-iaEd6gMtZRCjS81g" target="_d6eyJOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">controller</attribute>
    </edge>
    <edge id="_d6eyLOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_d6eyJOiaEd6gMtZRCjS81g" target="_d6eyI-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_d6eyO-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_d6eyJuiaEd6gMtZRCjS81g" target="_d6eyKeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">incoming</attribute>
    </edge>
    <edge id="_d6eyO-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_d6eyKeiaEd6gMtZRCjS81g" target="_d6eyJuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d6eyPuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_d6eyJ-iaEd6gMtZRCjS81g" target="_d6eyJOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">controller</attribute>
    </edge>
    <edge id="_d6eyPuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_d6eyJOiaEd6gMtZRCjS81g" target="_d6eyJ-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d6eyQeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_d6eyKeiaEd6gMtZRCjS81g" target="_d6eyK-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">trigger</attribute>
    </edge>
    <edge id="_d6eyQeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_d6eyK-iaEd6gMtZRCjS81g" target="_d6eyKeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d6fZNuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_d6eyJ-iaEd6gMtZRCjS81g" target="_d6eyJuiaEd6gMtZRCjS81g"/>
    <edge id="_d6fZNuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_d6eyJuiaEd6gMtZRCjS81g" target="_d6eyJ-iaEd6gMtZRCjS81g"/>
    <edge id="_d6fZN-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_d6eyKOiaEd6gMtZRCjS81g" target="_d6eyJuiaEd6gMtZRCjS81g"/>
    <edge id="_d6fZN-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_d6eyJuiaEd6gMtZRCjS81g" target="_d6eyKOiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
