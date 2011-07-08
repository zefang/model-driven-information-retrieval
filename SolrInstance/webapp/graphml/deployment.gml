<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_hESbsOiaEd6gMtZRCjS81g" projectName="Deployment">
    <node className="Node" id="_hESbs-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Device" id="_hESbtOiaEd6gMtZRCjS81g"/>
    <node className="ExecutionEnvironment" id="_hESbteiaEd6gMtZRCjS81g"/>
    <node className="Specification" id="_hESbtuiaEd6gMtZRCjS81g"/>
    <node className="CommunicationLink" id="_hESbt-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <edge id="_hESbuuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_hESbs-iaEd6gMtZRCjS81g" target="_hESbs-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">nestedNode</attribute>
    </edge>
    <edge id="_hESbuuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_hESbs-iaEd6gMtZRCjS81g" target="_hESbs-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_hESbveiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_hESbtuiaEd6gMtZRCjS81g" target="_hESbs-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">ownedNode</attribute>
    </edge>
    <edge id="_hESbveiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_hESbs-iaEd6gMtZRCjS81g" target="_hESbtuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_hESbwOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_hESbtuiaEd6gMtZRCjS81g" target="_hESbt-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">ownedCommunicationLink</attribute>
    </edge>
    <edge id="_hESbwOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_hESbt-iaEd6gMtZRCjS81g" target="_hESbtuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_hESbw-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_hESbt-iaEd6gMtZRCjS81g" target="_hESbs-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">source</attribute>
    </edge>
    <edge id="_hESbw-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_hESbs-iaEd6gMtZRCjS81g" target="_hESbt-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_hESbxuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_hESbt-iaEd6gMtZRCjS81g" target="_hESbs-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">target</attribute>
    </edge>
    <edge id="_hESbxuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_hESbs-iaEd6gMtZRCjS81g" target="_hESbt-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_hETCwOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_hESbtOiaEd6gMtZRCjS81g" target="_hESbs-iaEd6gMtZRCjS81g"/>
    <edge id="_hETCwOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_hESbs-iaEd6gMtZRCjS81g" target="_hESbtOiaEd6gMtZRCjS81g"/>
    <edge id="_hETCweiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_hESbteiaEd6gMtZRCjS81g" target="_hESbs-iaEd6gMtZRCjS81g"/>
    <edge id="_hETCweiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_hESbs-iaEd6gMtZRCjS81g" target="_hESbteiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
