<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_gD7K4OiaEd6gMtZRCjS81g" projectName="Repository">
    <node className="Subsystem" id="_gD7K4-iaEd6gMtZRCjS81g"/>
    <node className="Relation" id="_gD7K5OiaEd6gMtZRCjS81g"/>
    <node className="Class" id="_gD7K5eiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>is_deferred</attribute>
    </node>
    <node className="Feature" id="_gD7K5uiaEd6gMtZRCjS81g"/>
    <node className="Type" id="_gD7K5-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Entity" id="_gD7K6OiaEd6gMtZRCjS81g"/>
    <node className="Routine" id="_gD7K6eiaEd6gMtZRCjS81g"/>
    <edge id="_gD7K7eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gD7K4-iaEd6gMtZRCjS81g" target="_gD7K5eiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">classes</attribute>
    </edge>
    <edge id="_gD7K7eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gD7K5eiaEd6gMtZRCjS81g" target="_gD7K4-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gD7K8OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gD7K4-iaEd6gMtZRCjS81g" target="_gD7K5OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">relations</attribute>
    </edge>
    <edge id="_gD7K8OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gD7K5OiaEd6gMtZRCjS81g" target="_gD7K4-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gD7K9uiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gD7K5eiaEd6gMtZRCjS81g" target="_gD7K5uiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">features</attribute>
    </edge>
    <edge id="_gD7K9uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gD7K5uiaEd6gMtZRCjS81g" target="_gD7K5eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gD7K8-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gD7K5OiaEd6gMtZRCjS81g" target="_gD7K5eiaEd6gMtZRCjS81g">
      <attribute lowerValue="2" upperValue="2">classes</attribute>
    </edge>
    <edge id="_gD7K8-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gD7K5eiaEd6gMtZRCjS81g" target="_gD7K5OiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gD7K-eiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gD7K5eiaEd6gMtZRCjS81g" target="_gD7K4-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">subsystem</attribute>
    </edge>
    <edge id="_gD7K-eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gD7K4-iaEd6gMtZRCjS81g" target="_gD7K5eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gD7K_OiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gD7K5uiaEd6gMtZRCjS81g" target="_gD7K5-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">type</attribute>
    </edge>
    <edge id="_gD7K_OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gD7K5-iaEd6gMtZRCjS81g" target="_gD7K5uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gD7x8OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gD7K6OiaEd6gMtZRCjS81g" target="_gD7K5uiaEd6gMtZRCjS81g"/>
    <edge id="_gD7x8OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gD7K5uiaEd6gMtZRCjS81g" target="_gD7K6OiaEd6gMtZRCjS81g"/>
    <edge id="_gD7x8eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gD7K6eiaEd6gMtZRCjS81g" target="_gD7K5uiaEd6gMtZRCjS81g"/>
    <edge id="_gD7x8eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gD7K5uiaEd6gMtZRCjS81g" target="_gD7K6eiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
