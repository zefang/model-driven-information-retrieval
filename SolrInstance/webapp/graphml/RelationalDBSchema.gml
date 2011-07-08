<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_gDaNgOiaEd6gMtZRCjS81g" projectName="RelationalDBSchema">
    <node className="NamedElement" id="_gDaNg-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="DataBase" id="_gDaNhOiaEd6gMtZRCjS81g">
      <attribute>SGBDname</attribute>
    </node>
    <node className="Table" id="_gDaNheiaEd6gMtZRCjS81g"/>
    <node className="Column" id="_gDaNhuiaEd6gMtZRCjS81g">
      <attribute>dataType</attribute>
      <attribute>null</attribute>
      <attribute>defaultValue</attribute>
    </node>
    <edge id="_gDaNjOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gDaNhOiaEd6gMtZRCjS81g" target="_gDaNheiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">tables</attribute>
    </edge>
    <edge id="_gDaNjOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gDaNheiaEd6gMtZRCjS81g" target="_gDaNhOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gDaNj-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gDaNheiaEd6gMtZRCjS81g" target="_gDaNhuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">columns</attribute>
    </edge>
    <edge id="_gDaNj-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gDaNhuiaEd6gMtZRCjS81g" target="_gDaNheiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gDaNkuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gDaNheiaEd6gMtZRCjS81g" target="_gDaNhuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">key</attribute>
    </edge>
    <edge id="_gDaNkuiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gDaNhuiaEd6gMtZRCjS81g" target="_gDaNheiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gDa0kOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gDaNhOiaEd6gMtZRCjS81g" target="_gDaNg-iaEd6gMtZRCjS81g"/>
    <edge id="_gDa0kOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gDaNg-iaEd6gMtZRCjS81g" target="_gDaNhOiaEd6gMtZRCjS81g"/>
    <edge id="_gDa0keiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gDaNheiaEd6gMtZRCjS81g" target="_gDaNg-iaEd6gMtZRCjS81g"/>
    <edge id="_gDa0keiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gDaNg-iaEd6gMtZRCjS81g" target="_gDaNheiaEd6gMtZRCjS81g"/>
    <edge id="_gDa0kuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gDaNhuiaEd6gMtZRCjS81g" target="_gDaNg-iaEd6gMtZRCjS81g"/>
    <edge id="_gDa0kuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gDaNg-iaEd6gMtZRCjS81g" target="_gDaNhuiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
