<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_dd2ggOiaEd6gMtZRCjS81g" projectName="Automatoon">
    <node className="FiniteAutomaton" id="_dd3HkOiaEd6gMtZRCjS81g">
      <attribute>alphabet</attribute>
    </node>
    <node className="Transition" id="_dd3HkeiaEd6gMtZRCjS81g">
      <attribute>letter</attribute>
    </node>
    <node className="State" id="_dd3HkuiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <edge id="_dd3HluiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dd3HkOiaEd6gMtZRCjS81g" target="_dd3HkeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">transitionSet</attribute>
    </edge>
    <edge id="_dd3HluiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dd3HkeiaEd6gMtZRCjS81g" target="_dd3HkOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dd3HmeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dd3HkOiaEd6gMtZRCjS81g" target="_dd3HkuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">initialState</attribute>
    </edge>
    <edge id="_dd3HmeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dd3HkuiaEd6gMtZRCjS81g" target="_dd3HkOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dd3HnOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dd3HkOiaEd6gMtZRCjS81g" target="_dd3HkuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">finalStateSet</attribute>
    </edge>
    <edge id="_dd3HnOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dd3HkuiaEd6gMtZRCjS81g" target="_dd3HkOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dd3Hn-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dd3HkOiaEd6gMtZRCjS81g" target="_dd3HkuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">StateSet</attribute>
    </edge>
    <edge id="_dd3Hn-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dd3HkuiaEd6gMtZRCjS81g" target="_dd3HkOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dd3HouiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dd3HkeiaEd6gMtZRCjS81g" target="_dd3HkuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">source</attribute>
    </edge>
    <edge id="_dd3HouiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dd3HkuiaEd6gMtZRCjS81g" target="_dd3HkeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dd3HpeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dd3HkeiaEd6gMtZRCjS81g" target="_dd3HkuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">target</attribute>
    </edge>
    <edge id="_dd3HpeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dd3HkuiaEd6gMtZRCjS81g" target="_dd3HkeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dd3HqOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dd3HkuiaEd6gMtZRCjS81g" target="_dd3HkuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">combination</attribute>
    </edge>
    <edge id="_dd3HqOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dd3HkuiaEd6gMtZRCjS81g" target="_dd3HkuiaEd6gMtZRCjS81g" upperValue="1"/>
  </graph>
</graphml>
