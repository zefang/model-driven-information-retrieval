<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_gtj9wOiaEd6gMtZRCjS81g" projectName="SimpleRDBMS">
    <node className="Table" id="_gtj9w-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Column" id="_gtj9xOiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>type</attribute>
    </node>
    <node className="FKey" id="_gtj9xeiaEd6gMtZRCjS81g"/>
    <edge id="_gtj9yeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gtj9w-iaEd6gMtZRCjS81g" target="_gtj9xeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">fkeys</attribute>
    </edge>
    <edge id="_gtj9yeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gtj9xeiaEd6gMtZRCjS81g" target="_gtj9w-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gtkk0OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gtj9w-iaEd6gMtZRCjS81g" target="_gtj9xOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">cols</attribute>
    </edge>
    <edge id="_gtkk0OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gtj9xOiaEd6gMtZRCjS81g" target="_gtj9w-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gtj9zOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gtj9w-iaEd6gMtZRCjS81g" target="_gtj9xOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">pkey</attribute>
    </edge>
    <edge id="_gtj9zOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gtj9xOiaEd6gMtZRCjS81g" target="_gtj9w-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gtkk0-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gtj9xeiaEd6gMtZRCjS81g" target="_gtj9w-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">references</attribute>
    </edge>
    <edge id="_gtkk0-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gtj9w-iaEd6gMtZRCjS81g" target="_gtj9xeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gtkk1uiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gtj9xeiaEd6gMtZRCjS81g" target="_gtj9xOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">cols</attribute>
    </edge>
    <edge id="_gtkk1uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gtj9xOiaEd6gMtZRCjS81g" target="_gtj9xeiaEd6gMtZRCjS81g" upperValue="1"/>
  </graph>
</graphml>
