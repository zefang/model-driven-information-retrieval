<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_eM6l8OiaEd6gMtZRCjS81g" projectName="FlatSignalFlow">
    <node className="RootFolder" id="_eM6l8-iaEd6gMtZRCjS81g"/>
    <node className="RootContainer" id="_eM6l9OiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>position</attribute>
    </node>
    <node className="Actor" id="_eM6l9eiaEd6gMtZRCjS81g">
      <attribute>memory</attribute>
      <attribute>script</attribute>
      <attribute>file</attribute>
      <attribute>WCET</attribute>
      <attribute>name</attribute>
      <attribute>position</attribute>
    </node>
    <node className="Transmitter" id="_eM6l9uiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>position</attribute>
    </node>
    <node className="Receiver" id="_eM6l9-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>position</attribute>
    </node>
    <node className="InputSignal" id="_eM6l-OiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>position</attribute>
    </node>
    <node className="OutputSignal" id="_eM6l-eiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>position</attribute>
    </node>
    <node className="Queue" id="_eM6l-uiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>position</attribute>
    </node>
    <node className="AssociationReceiverQueue" id="_eM6l--iaEd6gMtZRCjS81g"/>
    <node className="AssociationQueueTransmitter" id="_eM6l_OiaEd6gMtZRCjS81g"/>
    <edge id="_eM6mD-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eM6l8-iaEd6gMtZRCjS81g" target="_eM6l9OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">rootContainer</attribute>
    </edge>
    <edge id="_eM6mD-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eM6l9OiaEd6gMtZRCjS81g" target="_eM6l8-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eM6mEuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eM6l9OiaEd6gMtZRCjS81g" target="_eM6l9eiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">actor</attribute>
    </edge>
    <edge id="_eM6mEuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eM6l9eiaEd6gMtZRCjS81g" target="_eM6l9OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eM6mFeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eM6l9OiaEd6gMtZRCjS81g" target="_eM6l-OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">inputSignal</attribute>
    </edge>
    <edge id="_eM6mFeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eM6l-OiaEd6gMtZRCjS81g" target="_eM6l9OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eM6mGOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eM6l9OiaEd6gMtZRCjS81g" target="_eM6l-eiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">outputSignal</attribute>
    </edge>
    <edge id="_eM6mGOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eM6l-eiaEd6gMtZRCjS81g" target="_eM6l9OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eM6mG-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eM6l9OiaEd6gMtZRCjS81g" target="_eM6l-uiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">queue</attribute>
    </edge>
    <edge id="_eM6mG-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eM6l-uiaEd6gMtZRCjS81g" target="_eM6l9OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eM6mHuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eM6l9eiaEd6gMtZRCjS81g" target="_eM6l9uiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">transmitter</attribute>
    </edge>
    <edge id="_eM6mHuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eM6l9uiaEd6gMtZRCjS81g" target="_eM6l9eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eM7NAeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eM6l9eiaEd6gMtZRCjS81g" target="_eM6l9-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">receiver</attribute>
    </edge>
    <edge id="_eM7NAeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eM6l9-iaEd6gMtZRCjS81g" target="_eM6l9eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eM7NBOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eM6l9uiaEd6gMtZRCjS81g" target="_eM6l_OiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">associationQueueTransmitter</attribute>
    </edge>
    <edge id="_eM7NBOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eM6l_OiaEd6gMtZRCjS81g" target="_eM6l9uiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_eM7NB-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eM6l9-iaEd6gMtZRCjS81g" target="_eM6l--iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">associationReceiverQueue</attribute>
    </edge>
    <edge id="_eM7NB-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eM6l--iaEd6gMtZRCjS81g" target="_eM6l9-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_eM7NCuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eM6l-OiaEd6gMtZRCjS81g" target="_eM6l--iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">associationReceiverQueue</attribute>
    </edge>
    <edge id="_eM7NCuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eM6l--iaEd6gMtZRCjS81g" target="_eM6l-OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eM7NDeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eM6l-eiaEd6gMtZRCjS81g" target="_eM6l_OiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">associationQueueTransmitter</attribute>
    </edge>
    <edge id="_eM7NDeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eM6l_OiaEd6gMtZRCjS81g" target="_eM6l-eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eM7NEOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eM6l-uiaEd6gMtZRCjS81g" target="_eM6l--iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">associationReceiverQueue</attribute>
    </edge>
    <edge id="_eM7NEOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eM6l--iaEd6gMtZRCjS81g" target="_eM6l-uiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_eM7NE-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eM6l-uiaEd6gMtZRCjS81g" target="_eM6l_OiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">associationQueueTransmitter</attribute>
    </edge>
    <edge id="_eM7NE-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eM6l_OiaEd6gMtZRCjS81g" target="_eM6l-uiaEd6gMtZRCjS81g" upperValue="*"/>
  </graph>
</graphml>
