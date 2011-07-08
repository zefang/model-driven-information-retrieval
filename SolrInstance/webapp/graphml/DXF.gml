<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_d-gWgOiaEd6gMtZRCjS81g" projectName="DXF">
    <node className="DXF" id="_d-gWg-iaEd6gMtZRCjS81g"/>
    <node className="Mesh" id="_d-gWhOiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Point" id="_d-gWheiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>x</attribute>
      <attribute>y</attribute>
      <attribute>z</attribute>
    </node>
    <edge id="_d-gWi-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_d-gWg-iaEd6gMtZRCjS81g" target="_d-gWhOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">meshes</attribute>
    </edge>
    <edge id="_d-gWi-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_d-gWhOiaEd6gMtZRCjS81g" target="_d-gWg-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d-gWjuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_d-gWhOiaEd6gMtZRCjS81g" target="_d-gWheiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">points</attribute>
    </edge>
    <edge id="_d-gWjuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_d-gWheiaEd6gMtZRCjS81g" target="_d-gWhOiaEd6gMtZRCjS81g" upperValue="1"/>
  </graph>
</graphml>
