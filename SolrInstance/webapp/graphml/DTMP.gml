<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_d-AnQOiaEd6gMtZRCjS81g" projectName="DTMP">
    <node className="State" id="_d-AnQ-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>isStart</attribute>
      <attribute>isEnd</attribute>
      <attribute>isFail</attribute>
    </node>
    <node className="Transition" id="_d-AnROiaEd6gMtZRCjS81g">
      <attribute>transProb</attribute>
    </node>
    <node className="Parameter" id="_d-AnReiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>type</attribute>
    </node>
    <edge id="_d-AnTeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_d-AnQ-iaEd6gMtZRCjS81g" target="_d-AnROiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">incoming</attribute>
    </edge>
    <edge id="_d-AnTeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_d-AnROiaEd6gMtZRCjS81g" target="_d-AnQ-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d-AnUOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_d-AnQ-iaEd6gMtZRCjS81g" target="_d-AnROiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">outGoing</attribute>
    </edge>
    <edge id="_d-AnUOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_d-AnROiaEd6gMtZRCjS81g" target="_d-AnQ-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d-AnU-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_d-AnQ-iaEd6gMtZRCjS81g" target="_d-AnReiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">formalParam</attribute>
    </edge>
    <edge id="_d-AnU-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_d-AnReiaEd6gMtZRCjS81g" target="_d-AnQ-iaEd6gMtZRCjS81g" upperValue="1"/>
  </graph>
</graphml>
