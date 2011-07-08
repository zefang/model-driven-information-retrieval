<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_fC06QOiaEd6gMtZRCjS81g" projectName="Make">
    <node className="Makefile" id="_fC06Q-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Element" id="_fC06ROiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Rule" id="_fC06ReiaEd6gMtZRCjS81g"/>
    <node className="Macro" id="_fC06RuiaEd6gMtZRCjS81g">
      <attribute>value</attribute>
    </node>
    <node className="ShellLine" id="_fC06R-iaEd6gMtZRCjS81g">
      <attribute>command</attribute>
      <attribute>display</attribute>
    </node>
    <node className="Comment" id="_fC06SOiaEd6gMtZRCjS81g">
      <attribute>text</attribute>
    </node>
    <node className="Dependency" id="_fC06SeiaEd6gMtZRCjS81g"/>
    <node className="RuleDep" id="_fC06SuiaEd6gMtZRCjS81g"/>
    <node className="FileDep" id="_fC06S-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <edge id="_fC06U-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fC06Q-iaEd6gMtZRCjS81g" target="_fC06SOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">comment</attribute>
    </edge>
    <edge id="_fC06U-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fC06SOiaEd6gMtZRCjS81g" target="_fC06Q-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fC06VuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fC06Q-iaEd6gMtZRCjS81g" target="_fC06ROiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">elements</attribute>
    </edge>
    <edge id="_fC06VuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fC06ROiaEd6gMtZRCjS81g" target="_fC06Q-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fC06WeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fC06ReiaEd6gMtZRCjS81g" target="_fC06SeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">dependencies</attribute>
    </edge>
    <edge id="_fC06WeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fC06SeiaEd6gMtZRCjS81g" target="_fC06ReiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fC06XOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fC06ReiaEd6gMtZRCjS81g" target="_fC06R-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">shellLines</attribute>
    </edge>
    <edge id="_fC06XOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fC06R-iaEd6gMtZRCjS81g" target="_fC06ReiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fC06X-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fC06SuiaEd6gMtZRCjS81g" target="_fC06ReiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">ruledep</attribute>
    </edge>
    <edge id="_fC06X-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fC06ReiaEd6gMtZRCjS81g" target="_fC06SuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fC1hUOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fC06ReiaEd6gMtZRCjS81g" target="_fC06ROiaEd6gMtZRCjS81g"/>
    <edge id="_fC1hUOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fC06ROiaEd6gMtZRCjS81g" target="_fC06ReiaEd6gMtZRCjS81g"/>
    <edge id="_fC1hUeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fC06RuiaEd6gMtZRCjS81g" target="_fC06ROiaEd6gMtZRCjS81g"/>
    <edge id="_fC1hUeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fC06ROiaEd6gMtZRCjS81g" target="_fC06RuiaEd6gMtZRCjS81g"/>
    <edge id="_fC1hUuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fC06SuiaEd6gMtZRCjS81g" target="_fC06SeiaEd6gMtZRCjS81g"/>
    <edge id="_fC1hUuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fC06SeiaEd6gMtZRCjS81g" target="_fC06SuiaEd6gMtZRCjS81g"/>
    <edge id="_fC1hU-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fC06S-iaEd6gMtZRCjS81g" target="_fC06SeiaEd6gMtZRCjS81g"/>
    <edge id="_fC1hU-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fC06SeiaEd6gMtZRCjS81g" target="_fC06S-iaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
