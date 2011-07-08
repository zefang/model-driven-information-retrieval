<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_gWKxcOiaEd6gMtZRCjS81g" projectName="Trace">
    <node className="Trace" id="_gWLYgOiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Level" id="_gWLYgeiaEd6gMtZRCjS81g"/>
    <node className="Call" id="_gWLYguiaEd6gMtZRCjS81g">
      <attribute>methodName</attribute>
      <attribute>DBAccessesNumber</attribute>
      <attribute>DBRowsNumber</attribute>
      <attribute>CPUTime</attribute>
    </node>
    <node className="Index" id="_gWLYg-iaEd6gMtZRCjS81g">
      <attribute>value</attribute>
    </node>
    <edge id="_gWLYiuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gWLYgOiaEd6gMtZRCjS81g" target="_gWLYgeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">levels</attribute>
    </edge>
    <edge id="_gWLYiuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gWLYgeiaEd6gMtZRCjS81g" target="_gWLYgOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gWLYjeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gWLYgeiaEd6gMtZRCjS81g" target="_gWLYguiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">calls</attribute>
    </edge>
    <edge id="_gWLYjeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gWLYguiaEd6gMtZRCjS81g" target="_gWLYgeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gWLYkOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gWLYguiaEd6gMtZRCjS81g" target="_gWLYg-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">indexes</attribute>
    </edge>
    <edge id="_gWLYkOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gWLYg-iaEd6gMtZRCjS81g" target="_gWLYguiaEd6gMtZRCjS81g" upperValue="1"/>
  </graph>
</graphml>
