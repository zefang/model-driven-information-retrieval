<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_fU3FcOiaEd6gMtZRCjS81g" projectName="News">
    <node className="Element" id="_fU3Fc-iaEd6gMtZRCjS81g">
      <attribute>title</attribute>
      <attribute>description</attribute>
      <attribute>link</attribute>
    </node>
    <node className="Newspaper" id="_fU3FdOiaEd6gMtZRCjS81g">
      <attribute>language</attribute>
      <attribute>copyright</attribute>
    </node>
    <node className="News" id="_fU3FdeiaEd6gMtZRCjS81g">
      <attribute>author</attribute>
      <attribute>comments</attribute>
    </node>
    <node className="Category" id="_fU3FduiaEd6gMtZRCjS81g">
      <attribute>value</attribute>
    </node>
    <node className="Date" id="_fU3Fd-iaEd6gMtZRCjS81g">
      <attribute>eDay</attribute>
      <attribute>day</attribute>
      <attribute>month</attribute>
      <attribute>year</attribute>
      <attribute>hours</attribute>
      <attribute>minutes</attribute>
      <attribute>seconds</attribute>
    </node>
    <edge id="_fU3shOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fU3FdOiaEd6gMtZRCjS81g" target="_fU3Fd-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">pubDate</attribute>
    </edge>
    <edge id="_fU3shOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fU3Fd-iaEd6gMtZRCjS81g" target="_fU3FdOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fU3sh-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fU3FdOiaEd6gMtZRCjS81g" target="_fU3FduiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">category</attribute>
    </edge>
    <edge id="_fU3sh-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fU3FduiaEd6gMtZRCjS81g" target="_fU3FdOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fU3siuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fU3FdOiaEd6gMtZRCjS81g" target="_fU3FdeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">news</attribute>
    </edge>
    <edge id="_fU3siuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fU3FdeiaEd6gMtZRCjS81g" target="_fU3FdOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fU3sjeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fU3FdeiaEd6gMtZRCjS81g" target="_fU3Fd-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">pubDate</attribute>
    </edge>
    <edge id="_fU3sjeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fU3Fd-iaEd6gMtZRCjS81g" target="_fU3FdeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fU3skOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fU3FdeiaEd6gMtZRCjS81g" target="_fU3FduiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">category</attribute>
    </edge>
    <edge id="_fU3skOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fU3FduiaEd6gMtZRCjS81g" target="_fU3FdeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fU4TkOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fU3FdOiaEd6gMtZRCjS81g" target="_fU3Fc-iaEd6gMtZRCjS81g"/>
    <edge id="_fU4TkOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fU3Fc-iaEd6gMtZRCjS81g" target="_fU3FdOiaEd6gMtZRCjS81g"/>
    <edge id="_fU4TkeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fU3FdeiaEd6gMtZRCjS81g" target="_fU3Fc-iaEd6gMtZRCjS81g"/>
    <edge id="_fU4TkeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fU3Fc-iaEd6gMtZRCjS81g" target="_fU3FdeiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
