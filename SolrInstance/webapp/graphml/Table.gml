<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_gVI2sOiaEd6gMtZRCjS81g" projectName="Table">
    <node className="Table" id="_gVI2s-iaEd6gMtZRCjS81g"/>
    <node className="Row" id="_gVI2tOiaEd6gMtZRCjS81g"/>
    <node className="Cell" id="_gVI2teiaEd6gMtZRCjS81g">
      <attribute>content</attribute>
    </node>
    <edge id="_gVI2t-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gVI2s-iaEd6gMtZRCjS81g" target="_gVI2tOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">rows</attribute>
    </edge>
    <edge id="_gVI2t-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gVI2tOiaEd6gMtZRCjS81g" target="_gVI2s-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gVJdwOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gVI2tOiaEd6gMtZRCjS81g" target="_gVI2teiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">cells</attribute>
    </edge>
    <edge id="_gVJdwOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gVI2teiaEd6gMtZRCjS81g" target="_gVI2tOiaEd6gMtZRCjS81g" upperValue="1"/>
  </graph>
</graphml>
