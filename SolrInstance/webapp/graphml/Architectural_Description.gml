<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_dcOv4OiaEd6gMtZRCjS81g" projectName="ArchitecturalDescription">
    <node className="Architecture" id="_dcOv4-iaEd6gMtZRCjS81g"/>
    <node className="ArchitectureDescription" id="_dcOv5OiaEd6gMtZRCjS81g"/>
    <node className="ArchitectureView" id="_dcOv5eiaEd6gMtZRCjS81g"/>
    <node className="ArchitectureViewPoint" id="_dcOv5uiaEd6gMtZRCjS81g"/>
    <node className="MainView" id="_dcOv5-iaEd6gMtZRCjS81g"/>
    <node className="ModelElement" id="_dcOv6OiaEd6gMtZRCjS81g"/>
    <edge id="_dcOv7-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dcOv5OiaEd6gMtZRCjS81g" target="_dcOv5eiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">organizedBy</attribute>
    </edge>
    <edge id="_dcOv7-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dcOv5eiaEd6gMtZRCjS81g" target="_dcOv5OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dcOv8uiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dcOv5eiaEd6gMtZRCjS81g" target="_dcOv6OiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">constituents</attribute>
    </edge>
    <edge id="_dcOv8uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dcOv6OiaEd6gMtZRCjS81g" target="_dcOv5eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dcOv_uiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dcOv5-iaEd6gMtZRCjS81g" target="_dcOv6OiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">consistsOf</attribute>
    </edge>
    <edge id="_dcOv_uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dcOv6OiaEd6gMtZRCjS81g" target="_dcOv5-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dcOv6eiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dcOv4-iaEd6gMtZRCjS81g" target="_dcOv5OiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">describedBy</attribute>
    </edge>
    <edge id="_dcOv6eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dcOv5OiaEd6gMtZRCjS81g" target="_dcOv4-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dcOv7OiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dcOv5OiaEd6gMtZRCjS81g" target="_dcOv5eiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">selects</attribute>
    </edge>
    <edge id="_dcOv7OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dcOv5eiaEd6gMtZRCjS81g" target="_dcOv5OiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_dcOv9eiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dcOv5eiaEd6gMtZRCjS81g" target="_dcOv5uiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">conformsTo</attribute>
    </edge>
    <edge id="_dcOv9eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dcOv5uiaEd6gMtZRCjS81g" target="_dcOv5eiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_dcOv-OiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dcOv5uiaEd6gMtZRCjS81g" target="_dcOv5-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">defines</attribute>
    </edge>
    <edge id="_dcOv-OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dcOv5-iaEd6gMtZRCjS81g" target="_dcOv5uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dcOv--iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dcOv5-iaEd6gMtZRCjS81g" target="_dcOv5eiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">isProjectedOnto</attribute>
    </edge>
    <edge id="_dcOv--iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dcOv5eiaEd6gMtZRCjS81g" target="_dcOv5-iaEd6gMtZRCjS81g" upperValue="1"/>
  </graph>
</graphml>
