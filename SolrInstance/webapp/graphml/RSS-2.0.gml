<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_gBwnsOiaEd6gMtZRCjS81g" projectName="RSS">
    <node className="RSS" id="_gBwns-iaEd6gMtZRCjS81g">
      <attribute>version</attribute>
    </node>
    <node className="Channel" id="_gBwntOiaEd6gMtZRCjS81g">
      <attribute>title</attribute>
      <attribute>link</attribute>
      <attribute>description</attribute>
      <attribute>language</attribute>
      <attribute>copyright</attribute>
      <attribute>managingEditor</attribute>
      <attribute>webmaster</attribute>
      <attribute>generator</attribute>
      <attribute>docs</attribute>
      <attribute>ttl</attribute>
      <attribute>rating</attribute>
      <attribute>skipHours</attribute>
      <attribute>skipDays</attribute>
    </node>
    <node className="Item" id="_gBwnteiaEd6gMtZRCjS81g">
      <attribute>title</attribute>
      <attribute>link</attribute>
      <attribute>description</attribute>
      <attribute>author</attribute>
      <attribute>comments</attribute>
      <attribute>guid</attribute>
    </node>
    <node className="Image" id="_gBwntuiaEd6gMtZRCjS81g">
      <attribute>url</attribute>
      <attribute>title</attribute>
      <attribute>link</attribute>
      <attribute>description</attribute>
      <attribute>width</attribute>
      <attribute>height</attribute>
    </node>
    <node className="TextInput" id="_gBwnt-iaEd6gMtZRCjS81g">
      <attribute>title</attribute>
      <attribute>description</attribute>
      <attribute>name</attribute>
      <attribute>link</attribute>
    </node>
    <node className="Cloud" id="_gBwnuOiaEd6gMtZRCjS81g">
      <attribute>domain</attribute>
      <attribute>port</attribute>
      <attribute>path</attribute>
      <attribute>registerProcedure</attribute>
      <attribute>protocol</attribute>
    </node>
    <node className="Category" id="_gBwnueiaEd6gMtZRCjS81g">
      <attribute>domain</attribute>
      <attribute>value</attribute>
    </node>
    <node className="Enclosure" id="_gBwnuuiaEd6gMtZRCjS81g">
      <attribute>url</attribute>
      <attribute>lenght</attribute>
      <attribute>type</attribute>
    </node>
    <node className="Source" id="_gBwnu-iaEd6gMtZRCjS81g">
      <attribute>url</attribute>
      <attribute>value</attribute>
    </node>
    <node className="Date" id="_gBwnvOiaEd6gMtZRCjS81g">
      <attribute>eDay</attribute>
      <attribute>day</attribute>
      <attribute>month</attribute>
      <attribute>year</attribute>
      <attribute>hours</attribute>
      <attribute>minutes</attribute>
      <attribute>seconds</attribute>
    </node>
    <edge id="_gBxOw-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gBwns-iaEd6gMtZRCjS81g" target="_gBwntOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">channel</attribute>
    </edge>
    <edge id="_gBxOw-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gBwntOiaEd6gMtZRCjS81g" target="_gBwns-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gBxOxuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gBwntOiaEd6gMtZRCjS81g" target="_gBwnvOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">pubDate</attribute>
    </edge>
    <edge id="_gBxOxuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gBwnvOiaEd6gMtZRCjS81g" target="_gBwntOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gBxOyeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gBwntOiaEd6gMtZRCjS81g" target="_gBwnvOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">lastBuildDate</attribute>
    </edge>
    <edge id="_gBxOyeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gBwnvOiaEd6gMtZRCjS81g" target="_gBwntOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gBxOzOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gBwntOiaEd6gMtZRCjS81g" target="_gBwntuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">image</attribute>
    </edge>
    <edge id="_gBxOzOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gBwntuiaEd6gMtZRCjS81g" target="_gBwntOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gBxOz-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gBwntOiaEd6gMtZRCjS81g" target="_gBwnt-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">textInput</attribute>
    </edge>
    <edge id="_gBxOz-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gBwnt-iaEd6gMtZRCjS81g" target="_gBwntOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gBxO0uiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gBwntOiaEd6gMtZRCjS81g" target="_gBwnuOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">cloud</attribute>
    </edge>
    <edge id="_gBxO0uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gBwnuOiaEd6gMtZRCjS81g" target="_gBwntOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gBxO1eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gBwntOiaEd6gMtZRCjS81g" target="_gBwnueiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">category</attribute>
    </edge>
    <edge id="_gBxO1eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gBwnueiaEd6gMtZRCjS81g" target="_gBwntOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gBxO2OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gBwntOiaEd6gMtZRCjS81g" target="_gBwnteiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">items</attribute>
    </edge>
    <edge id="_gBxO2OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gBwnteiaEd6gMtZRCjS81g" target="_gBwntOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gBxO2-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gBwnteiaEd6gMtZRCjS81g" target="_gBwnu-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">source</attribute>
    </edge>
    <edge id="_gBxO2-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gBwnu-iaEd6gMtZRCjS81g" target="_gBwnteiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gBxO3uiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gBwnteiaEd6gMtZRCjS81g" target="_gBwnvOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">pubDate</attribute>
    </edge>
    <edge id="_gBxO3uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gBwnvOiaEd6gMtZRCjS81g" target="_gBwnteiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gBxO4eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gBwnteiaEd6gMtZRCjS81g" target="_gBwnuuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">enclosure</attribute>
    </edge>
    <edge id="_gBxO4eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gBwnuuiaEd6gMtZRCjS81g" target="_gBwnteiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gBxO5OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gBwnteiaEd6gMtZRCjS81g" target="_gBwnueiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">category</attribute>
    </edge>
    <edge id="_gBxO5OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gBwnueiaEd6gMtZRCjS81g" target="_gBwnteiaEd6gMtZRCjS81g" upperValue="1"/>
  </graph>
</graphml>
