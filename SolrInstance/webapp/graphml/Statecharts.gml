<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_gTG2YOiaEd6gMtZRCjS81g" projectName="Statecharts">
    <node className="BooleanExpression" id="_gTG2Y-iaEd6gMtZRCjS81g">
      <attribute>value</attribute>
    </node>
    <node className="StateMachine" id="_gTG2ZOiaEd6gMtZRCjS81g"/>
    <node className="State" id="_gTG2ZeiaEd6gMtZRCjS81g"/>
    <node className="CompositeState" id="_gTG2ZuiaEd6gMtZRCjS81g">
      <attribute>isConcurrent</attribute>
    </node>
    <node className="Transition" id="_gTG2Z-iaEd6gMtZRCjS81g"/>
    <node className="StateVertex" id="_gTG2aOiaEd6gMtZRCjS81g"/>
    <node className="Guard" id="_gTG2aeiaEd6gMtZRCjS81g"/>
    <node className="Event" id="_gTG2auiaEd6gMtZRCjS81g"/>
    <edge id="_gTG2beiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gTG2ZOiaEd6gMtZRCjS81g" target="_gTG2Z-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">transitions</attribute>
    </edge>
    <edge id="_gTG2beiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gTG2Z-iaEd6gMtZRCjS81g" target="_gTG2ZOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gTHdceiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gTG2ZOiaEd6gMtZRCjS81g" target="_gTG2ZeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">top</attribute>
    </edge>
    <edge id="_gTHdceiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gTG2ZeiaEd6gMtZRCjS81g" target="_gTG2ZOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gTHddOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gTG2ZeiaEd6gMtZRCjS81g" target="_gTG2Z-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">internalTransitions</attribute>
    </edge>
    <edge id="_gTHddOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gTG2Z-iaEd6gMtZRCjS81g" target="_gTG2ZeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gTHdeuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gTG2ZuiaEd6gMtZRCjS81g" target="_gTG2aOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">subVertexes</attribute>
    </edge>
    <edge id="_gTHdeuiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gTG2aOiaEd6gMtZRCjS81g" target="_gTG2ZuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gTHdfeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gTG2Z-iaEd6gMtZRCjS81g" target="_gTG2auiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">trigger</attribute>
    </edge>
    <edge id="_gTHdfeiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gTG2auiaEd6gMtZRCjS81g" target="_gTG2Z-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gTHdgOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gTG2Z-iaEd6gMtZRCjS81g" target="_gTG2aeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">guard</attribute>
    </edge>
    <edge id="_gTHdgOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gTG2aeiaEd6gMtZRCjS81g" target="_gTG2Z-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gTHdd-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gTG2ZeiaEd6gMtZRCjS81g" target="_gTG2auiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">deferrableEvents</attribute>
    </edge>
    <edge id="_gTHdd-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gTG2auiaEd6gMtZRCjS81g" target="_gTG2ZeiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gTHdg-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gTG2Z-iaEd6gMtZRCjS81g" target="_gTG2aOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">source</attribute>
    </edge>
    <edge id="_gTHdg-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gTG2aOiaEd6gMtZRCjS81g" target="_gTG2Z-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gTHdhuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gTG2Z-iaEd6gMtZRCjS81g" target="_gTG2aOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">target</attribute>
    </edge>
    <edge id="_gTHdhuiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gTG2aOiaEd6gMtZRCjS81g" target="_gTG2Z-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gTHdieiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gTG2aeiaEd6gMtZRCjS81g" target="_gTG2Y-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">expression</attribute>
    </edge>
    <edge id="_gTHdieiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gTG2Y-iaEd6gMtZRCjS81g" target="_gTG2aeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gTIEgOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gTG2ZeiaEd6gMtZRCjS81g" target="_gTG2aOiaEd6gMtZRCjS81g"/>
    <edge id="_gTIEgOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gTG2aOiaEd6gMtZRCjS81g" target="_gTG2ZeiaEd6gMtZRCjS81g"/>
    <edge id="_gTIEgeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gTG2ZuiaEd6gMtZRCjS81g" target="_gTG2ZeiaEd6gMtZRCjS81g"/>
    <edge id="_gTIEgeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gTG2ZeiaEd6gMtZRCjS81g" target="_gTG2ZuiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
