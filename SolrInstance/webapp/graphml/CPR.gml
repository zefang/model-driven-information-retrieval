<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_duiA0OiaEd6gMtZRCjS81g" projectName="CPR">
    <node className="Plan" id="_duiA0-iaEd6gMtZRCjS81g"/>
    <node className="Objective" id="_duiA1OiaEd6gMtZRCjS81g"/>
    <node className="EvaluationCriteria" id="_duiA1eiaEd6gMtZRCjS81g"/>
    <node className="Action" id="_duiA1uiaEd6gMtZRCjS81g"/>
    <node className="Actor" id="_duiA1-iaEd6gMtZRCjS81g"/>
    <node className="Resource" id="_duiA2OiaEd6gMtZRCjS81g"/>
    <node className="TimeSpec" id="_duiA2eiaEd6gMtZRCjS81g"/>
    <edge id="_duiA2uiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_duiA0-iaEd6gMtZRCjS81g" target="_duiA0-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">sub_plans</attribute>
    </edge>
    <edge id="_duiA2uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_duiA0-iaEd6gMtZRCjS81g" target="_duiA0-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_duiA3eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_duiA0-iaEd6gMtZRCjS81g" target="_duiA1OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">objectives</attribute>
    </edge>
    <edge id="_duiA3eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_duiA1OiaEd6gMtZRCjS81g" target="_duiA0-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_duiA4OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_duiA0-iaEd6gMtZRCjS81g" target="_duiA1uiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">actions</attribute>
    </edge>
    <edge id="_duiA4OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_duiA1uiaEd6gMtZRCjS81g" target="_duiA0-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_duin4eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_duiA1OiaEd6gMtZRCjS81g" target="_duiA1eiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">criterias</attribute>
    </edge>
    <edge id="_duin4eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_duiA1eiaEd6gMtZRCjS81g" target="_duiA1OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_duin5OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_duiA1uiaEd6gMtZRCjS81g" target="_duiA1uiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">sub_actions</attribute>
    </edge>
    <edge id="_duin5OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_duiA1uiaEd6gMtZRCjS81g" target="_duiA1uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_duin5-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_duiA1uiaEd6gMtZRCjS81g" target="_duiA1-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">actor</attribute>
    </edge>
    <edge id="_duin5-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_duiA1-iaEd6gMtZRCjS81g" target="_duiA1uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_duin6uiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_duiA1uiaEd6gMtZRCjS81g" target="_duiA2OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">resources</attribute>
    </edge>
    <edge id="_duin6uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_duiA2OiaEd6gMtZRCjS81g" target="_duiA1uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_duin7eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_duiA1uiaEd6gMtZRCjS81g" target="_duiA2eiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">timeSpecs</attribute>
    </edge>
    <edge id="_duin7eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_duiA2eiaEd6gMtZRCjS81g" target="_duiA1uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_duin8OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_duiA1-iaEd6gMtZRCjS81g" target="_duiA1-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">sub_actors</attribute>
    </edge>
    <edge id="_duin8OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_duiA1-iaEd6gMtZRCjS81g" target="_duiA1-iaEd6gMtZRCjS81g" upperValue="1"/>
  </graph>
</graphml>
