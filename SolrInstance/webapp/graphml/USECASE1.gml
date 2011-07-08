<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_gpwb0OiaEd6gMtZRCjS81g" projectName="USECASE1">
    <node className="Task" id="_gpxC4OiaEd6gMtZRCjS81g"/>
    <node className="User" id="_gpxC4eiaEd6gMtZRCjS81g"/>
    <node className="Actor" id="_gpxC4uiaEd6gMtZRCjS81g"/>
    <node className="Goal" id="_gpxC4-iaEd6gMtZRCjS81g"/>
    <node className="UseCase" id="_gpxC5OiaEd6gMtZRCjS81g"/>
    <node className="Service" id="_gpxC5eiaEd6gMtZRCjS81g"/>
    <node className="Scenario" id="_gpxC5uiaEd6gMtZRCjS81g"/>
    <node className="Context" id="_gpxC5-iaEd6gMtZRCjS81g"/>
    <node className="PreCondition" id="_gpxC6OiaEd6gMtZRCjS81g"/>
    <node className="PostCondition" id="_gpxC6eiaEd6gMtZRCjS81g"/>
    <node className="Episode" id="_gpxC6uiaEd6gMtZRCjS81g"/>
    <node className="Event" id="_gpxC6-iaEd6gMtZRCjS81g"/>
    <node className="Action" id="_gpxC7OiaEd6gMtZRCjS81g"/>
    <node className="Responce" id="_gpxC7eiaEd6gMtZRCjS81g"/>
    <node className="Stimilus" id="_gpxC7uiaEd6gMtZRCjS81g"/>
    <node className="Parameter" id="_gpxC7-iaEd6gMtZRCjS81g"/>
    <edge id="_gpxDAuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gpxC5OiaEd6gMtZRCjS81g" target="_gpxC5-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">context</attribute>
    </edge>
    <edge id="_gpxDAuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gpxC5-iaEd6gMtZRCjS81g" target="_gpxC5OiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gpxp8-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gpxC7eiaEd6gMtZRCjS81g" target="_gpxC7-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">parameter</attribute>
    </edge>
    <edge id="_gpxp8-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gpxC7-iaEd6gMtZRCjS81g" target="_gpxC7eiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gpxp9uiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gpxC7uiaEd6gMtZRCjS81g" target="_gpxC7-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">parameter</attribute>
    </edge>
    <edge id="_gpxp9uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gpxC7-iaEd6gMtZRCjS81g" target="_gpxC7uiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gpxC8OiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gpxC4OiaEd6gMtZRCjS81g" target="_gpxC5eiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">service</attribute>
    </edge>
    <edge id="_gpxC8OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gpxC5eiaEd6gMtZRCjS81g" target="_gpxC4OiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gpxC8-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gpxC4eiaEd6gMtZRCjS81g" target="_gpxC5OiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">useCase</attribute>
    </edge>
    <edge id="_gpxC8-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gpxC5OiaEd6gMtZRCjS81g" target="_gpxC4eiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gpxC9uiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gpxC4eiaEd6gMtZRCjS81g" target="_gpxC4uiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">actor</attribute>
    </edge>
    <edge id="_gpxC9uiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gpxC4uiaEd6gMtZRCjS81g" target="_gpxC4eiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gpxC-eiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gpxC4uiaEd6gMtZRCjS81g" target="_gpxC5OiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">useCase</attribute>
    </edge>
    <edge id="_gpxC-eiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gpxC5OiaEd6gMtZRCjS81g" target="_gpxC4uiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gpxC_OiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gpxC4uiaEd6gMtZRCjS81g" target="_gpxC4-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">goal</attribute>
    </edge>
    <edge id="_gpxC_OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gpxC4-iaEd6gMtZRCjS81g" target="_gpxC4uiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gpxC_-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gpxC4-iaEd6gMtZRCjS81g" target="_gpxC5eiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">service</attribute>
    </edge>
    <edge id="_gpxC_-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gpxC5eiaEd6gMtZRCjS81g" target="_gpxC4-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gpxDBeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gpxC5OiaEd6gMtZRCjS81g" target="_gpxC5eiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">service</attribute>
    </edge>
    <edge id="_gpxDBeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gpxC5eiaEd6gMtZRCjS81g" target="_gpxC5OiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gpxDCOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gpxC5-iaEd6gMtZRCjS81g" target="_gpxC6OiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">preCondition</attribute>
    </edge>
    <edge id="_gpxDCOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gpxC6OiaEd6gMtZRCjS81g" target="_gpxC5-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gpxDC-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gpxC5-iaEd6gMtZRCjS81g" target="_gpxC6eiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">postCondition</attribute>
    </edge>
    <edge id="_gpxDC-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gpxC6eiaEd6gMtZRCjS81g" target="_gpxC5-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gpxp8OiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gpxC6uiaEd6gMtZRCjS81g" target="_gpxC6-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">event</attribute>
    </edge>
    <edge id="_gpxp8OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gpxC6-iaEd6gMtZRCjS81g" target="_gpxC6uiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gpyRAOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gpxC7OiaEd6gMtZRCjS81g" target="_gpxC6-iaEd6gMtZRCjS81g"/>
    <edge id="_gpyRAOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gpxC6-iaEd6gMtZRCjS81g" target="_gpxC7OiaEd6gMtZRCjS81g"/>
    <edge id="_gpyRAeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gpxC7eiaEd6gMtZRCjS81g" target="_gpxC6-iaEd6gMtZRCjS81g"/>
    <edge id="_gpyRAeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gpxC6-iaEd6gMtZRCjS81g" target="_gpxC7eiaEd6gMtZRCjS81g"/>
    <edge id="_gpyRAuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gpxC7uiaEd6gMtZRCjS81g" target="_gpxC6-iaEd6gMtZRCjS81g"/>
    <edge id="_gpyRAuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gpxC6-iaEd6gMtZRCjS81g" target="_gpxC7uiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
