<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_gYXJ0OiaEd6gMtZRCjS81g" projectName="PIF">
    <node className="BusinessTemplate" id="_gYXJ0uiaEd6gMtZRCjS81g"/>
    <node className="BusinessContact" id="_gYXJ0-iaEd6gMtZRCjS81g"/>
    <node className="BusinessService" id="_gYXJ1OiaEd6gMtZRCjS81g"/>
    <node className="BusinessEntity" id="_gYXJ1eiaEd6gMtZRCjS81g"/>
    <node className="IdentifierBag" id="_gYXJ1uiaEd6gMtZRCjS81g"/>
    <node className="TModel" id="_gYXJ1-iaEd6gMtZRCjS81g"/>
    <node className="OverviewDocument" id="_gYXJ2OiaEd6gMtZRCjS81g"/>
    <edge id="_gYXJ3OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gYXJ1eiaEd6gMtZRCjS81g" target="_gYXJ1OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">businessServices</attribute>
    </edge>
    <edge id="_gYXJ3OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gYXJ1OiaEd6gMtZRCjS81g" target="_gYXJ1eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gYXJ4uiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gYXJ1-iaEd6gMtZRCjS81g" target="_gYXJ2OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">overviewDocuments</attribute>
    </edge>
    <edge id="_gYXJ4uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gYXJ2OiaEd6gMtZRCjS81g" target="_gYXJ1-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gYXJ2eiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gYXJ1eiaEd6gMtZRCjS81g" target="_gYXJ0-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">businessContacts</attribute>
    </edge>
    <edge id="_gYXJ2eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gYXJ0-iaEd6gMtZRCjS81g" target="_gYXJ1eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gYXJ3-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gYXJ1eiaEd6gMtZRCjS81g" target="_gYXJ1uiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">identifierBag</attribute>
    </edge>
    <edge id="_gYXJ3-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gYXJ1uiaEd6gMtZRCjS81g" target="_gYXJ1eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gYXJ5eiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gYXJ1-iaEd6gMtZRCjS81g" target="_gYXJ1uiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">identifierBag</attribute>
    </edge>
    <edge id="_gYXJ5eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gYXJ1uiaEd6gMtZRCjS81g" target="_gYXJ1-iaEd6gMtZRCjS81g" upperValue="1"/>
  </graph>
</graphml>
