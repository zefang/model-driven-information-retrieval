<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_gXSy0OiaEd6gMtZRCjS81g" projectName="GoalAndPlanConcepts">
    <node className="Actor" id="_gXSy0-iaEd6gMtZRCjS81g"/>
    <node className="Decomposition" id="_gXSy1OiaEd6gMtZRCjS81g"/>
    <node className="Contribution" id="_gXSy1eiaEd6gMtZRCjS81g">
      <attribute>metric</attribute>
    </node>
    <node className="Goal" id="_gXSy1uiaEd6gMtZRCjS81g"/>
    <node className="MeansEnd" id="_gXSy1-iaEd6gMtZRCjS81g"/>
    <node className="Resource" id="_gXSy2OiaEd6gMtZRCjS81g"/>
    <node className="Plan" id="_gXSy2eiaEd6gMtZRCjS81g"/>
    <node className="BooleanDecomposition" id="_gXSy2uiaEd6gMtZRCjS81g">
      <attribute>type</attribute>
    </node>
    <node className="BooleanDecLink" id="_gXSy2-iaEd6gMtZRCjS81g"/>
    <node className="AndDecLink" id="_gXSy3OiaEd6gMtZRCjS81g"/>
    <node className="OrDecLink" id="_gXSy3eiaEd6gMtZRCjS81g"/>
    <edge id="_gXTZ6eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gXSy2uiaEd6gMtZRCjS81g" target="_gXSy2-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">booleanDecLinkD</attribute>
    </edge>
    <edge id="_gXTZ6eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gXSy2-iaEd6gMtZRCjS81g" target="_gXSy2uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gXSy4OiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gXSy0-iaEd6gMtZRCjS81g" target="_gXSy1OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">decomposition</attribute>
    </edge>
    <edge id="_gXSy4OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gXSy1OiaEd6gMtZRCjS81g" target="_gXSy0-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gXSy4-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gXSy0-iaEd6gMtZRCjS81g" target="_gXSy1eiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">contribution</attribute>
    </edge>
    <edge id="_gXSy4-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gXSy1eiaEd6gMtZRCjS81g" target="_gXSy0-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gXSy5uiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gXSy0-iaEd6gMtZRCjS81g" target="_gXSy1-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">meansEnd</attribute>
    </edge>
    <edge id="_gXSy5uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gXSy1-iaEd6gMtZRCjS81g" target="_gXSy0-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gXSy6eiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gXSy1eiaEd6gMtZRCjS81g" target="_gXSy1uiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">contributer</attribute>
    </edge>
    <edge id="_gXSy6eiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gXSy1uiaEd6gMtZRCjS81g" target="_gXSy1eiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gXSy7OiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gXSy1eiaEd6gMtZRCjS81g" target="_gXSy1uiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">contributed</attribute>
    </edge>
    <edge id="_gXSy7OiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gXSy1uiaEd6gMtZRCjS81g" target="_gXSy1eiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gXSy7-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gXSy1uiaEd6gMtZRCjS81g" target="_gXSy1-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">meansEndS</attribute>
    </edge>
    <edge id="_gXSy7-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gXSy1-iaEd6gMtZRCjS81g" target="_gXSy1uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gXSy8uiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gXSy1uiaEd6gMtZRCjS81g" target="_gXSy1-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">meansEndD</attribute>
    </edge>
    <edge id="_gXSy8uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gXSy1-iaEd6gMtZRCjS81g" target="_gXSy1uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gXSy9eiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gXSy1uiaEd6gMtZRCjS81g" target="_gXSy2uiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">booleanDecomposition</attribute>
    </edge>
    <edge id="_gXSy9eiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gXSy2uiaEd6gMtZRCjS81g" target="_gXSy1uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gXSy-OiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gXSy1uiaEd6gMtZRCjS81g" target="_gXSy2-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">booleanDecLink</attribute>
    </edge>
    <edge id="_gXSy-OiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gXSy2-iaEd6gMtZRCjS81g" target="_gXSy1uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gXSy--iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gXSy1-iaEd6gMtZRCjS81g" target="_gXSy2OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">meansR</attribute>
    </edge>
    <edge id="_gXSy--iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gXSy2OiaEd6gMtZRCjS81g" target="_gXSy1-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gXTZ4OiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gXSy1-iaEd6gMtZRCjS81g" target="_gXSy2eiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">meansP</attribute>
    </edge>
    <edge id="_gXTZ4OiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gXSy2eiaEd6gMtZRCjS81g" target="_gXSy1-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gXTZ4-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gXSy2eiaEd6gMtZRCjS81g" target="_gXSy2uiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">booleanDecompositionP</attribute>
    </edge>
    <edge id="_gXTZ4-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gXSy2uiaEd6gMtZRCjS81g" target="_gXSy2eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gXTZ5uiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gXSy2eiaEd6gMtZRCjS81g" target="_gXSy2-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">booleanDecLinkP</attribute>
    </edge>
    <edge id="_gXTZ5uiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gXSy2-iaEd6gMtZRCjS81g" target="_gXSy2eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gXUA8OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gXSy2uiaEd6gMtZRCjS81g" target="_gXSy1OiaEd6gMtZRCjS81g"/>
    <edge id="_gXUA8OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gXSy1OiaEd6gMtZRCjS81g" target="_gXSy2uiaEd6gMtZRCjS81g"/>
    <edge id="_gXUA8eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gXSy3OiaEd6gMtZRCjS81g" target="_gXSy2-iaEd6gMtZRCjS81g"/>
    <edge id="_gXUA8eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gXSy2-iaEd6gMtZRCjS81g" target="_gXSy3OiaEd6gMtZRCjS81g"/>
    <edge id="_gXUA8uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gXSy3eiaEd6gMtZRCjS81g" target="_gXSy2-iaEd6gMtZRCjS81g"/>
    <edge id="_gXUA8uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gXSy2-iaEd6gMtZRCjS81g" target="_gXSy3eiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
