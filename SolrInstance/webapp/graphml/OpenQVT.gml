<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_fgS5YOiaEd6gMtZRCjS81g" projectName="OpenQVT">
    <node className="Variable" id="_fgS5Y-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>type</attribute>
      <attribute>value</attribute>
      <attribute>visibility</attribute>
    </node>
    <node className="Context" id="_fgS5ZOiaEd6gMtZRCjS81g"/>
    <node className="Rule" id="_fgS5ZeiaEd6gMtZRCjS81g"/>
    <node className="RootRule" id="_fgS5ZuiaEd6gMtZRCjS81g"/>
    <node className="RuleSetCall" id="_fgS5Z-iaEd6gMtZRCjS81g"/>
    <node className="QARule" id="_fgS5aOiaEd6gMtZRCjS81g"/>
    <node className="RuleSet" id="_fgS5aeiaEd6gMtZRCjS81g"/>
    <node className="Service" id="_fgS5auiaEd6gMtZRCjS81g">
      <attribute>visibility</attribute>
      <attribute>signature</attribute>
    </node>
    <node className="OCLService" id="_fgS5a-iaEd6gMtZRCjS81g"/>
    <node className="RTransService" id="_fgS5bOiaEd6gMtZRCjS81g"/>
    <node className="JavaService" id="_fgS5beiaEd6gMtZRCjS81g"/>
    <node className="RulePart" id="_fgS5buiaEd6gMtZRCjS81g"/>
    <node className="Action" id="_fgS5b-iaEd6gMtZRCjS81g"/>
    <node className="RTransAction" id="_fgS5cOiaEd6gMtZRCjS81g"/>
    <node className="JavaAction" id="_fgS5ceiaEd6gMtZRCjS81g"/>
    <node className="Query" id="_fgS5cuiaEd6gMtZRCjS81g"/>
    <node className="OCLFilter" id="_fgS5c-iaEd6gMtZRCjS81g"/>
    <node className="RTransQuery" id="_fgS5dOiaEd6gMtZRCjS81g"/>
    <node className="JavaQuery" id="_fgS5deiaEd6gMtZRCjS81g"/>
    <node className="JavaFilter" id="_fgS5duiaEd6gMtZRCjS81g"/>
    <edge id="_fgS5feiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fgS5ZOiaEd6gMtZRCjS81g" target="_fgS5Y-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">variables</attribute>
    </edge>
    <edge id="_fgS5feiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fgS5Y-iaEd6gMtZRCjS81g" target="_fgS5ZOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fgTgceiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fgS5ZeiaEd6gMtZRCjS81g" target="_fgS5ZOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">context</attribute>
    </edge>
    <edge id="_fgTgceiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fgS5ZOiaEd6gMtZRCjS81g" target="_fgS5ZeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fgTgdOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fgS5ZeiaEd6gMtZRCjS81g" target="_fgS5ZeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">subRule</attribute>
    </edge>
    <edge id="_fgTgdOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fgS5ZeiaEd6gMtZRCjS81g" target="_fgS5ZeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fgTgd-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fgS5ZeiaEd6gMtZRCjS81g" target="_fgS5auiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">services</attribute>
    </edge>
    <edge id="_fgTgd-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fgS5auiaEd6gMtZRCjS81g" target="_fgS5ZeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fgTgfeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fgS5aOiaEd6gMtZRCjS81g" target="_fgS5cuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">query</attribute>
    </edge>
    <edge id="_fgTgfeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fgS5cuiaEd6gMtZRCjS81g" target="_fgS5aOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fgTggOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fgS5aOiaEd6gMtZRCjS81g" target="_fgS5b-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">action</attribute>
    </edge>
    <edge id="_fgTggOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fgS5b-iaEd6gMtZRCjS81g" target="_fgS5aOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fgTgg-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fgS5aeiaEd6gMtZRCjS81g" target="_fgS5ZuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">rootRule</attribute>
    </edge>
    <edge id="_fgTgg-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fgS5ZuiaEd6gMtZRCjS81g" target="_fgS5aeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fgTgeuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fgS5Z-iaEd6gMtZRCjS81g" target="_fgS5aeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">ruleSet</attribute>
    </edge>
    <edge id="_fgTgeuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fgS5aeiaEd6gMtZRCjS81g" target="_fgS5Z-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fgTghuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fgS5buiaEd6gMtZRCjS81g" target="_fgS5auiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">service</attribute>
    </edge>
    <edge id="_fgTghuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fgS5auiaEd6gMtZRCjS81g" target="_fgS5buiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fgUHgOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fgS5ZuiaEd6gMtZRCjS81g" target="_fgS5ZeiaEd6gMtZRCjS81g"/>
    <edge id="_fgUHgOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fgS5ZeiaEd6gMtZRCjS81g" target="_fgS5ZuiaEd6gMtZRCjS81g"/>
    <edge id="_fgUHgeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fgS5Z-iaEd6gMtZRCjS81g" target="_fgS5ZeiaEd6gMtZRCjS81g"/>
    <edge id="_fgUHgeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fgS5ZeiaEd6gMtZRCjS81g" target="_fgS5Z-iaEd6gMtZRCjS81g"/>
    <edge id="_fgUHguiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fgS5aOiaEd6gMtZRCjS81g" target="_fgS5ZeiaEd6gMtZRCjS81g"/>
    <edge id="_fgUHguiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fgS5ZeiaEd6gMtZRCjS81g" target="_fgS5aOiaEd6gMtZRCjS81g"/>
    <edge id="_fgUHg-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fgS5a-iaEd6gMtZRCjS81g" target="_fgS5auiaEd6gMtZRCjS81g"/>
    <edge id="_fgUHg-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fgS5auiaEd6gMtZRCjS81g" target="_fgS5a-iaEd6gMtZRCjS81g"/>
    <edge id="_fgUHhOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fgS5bOiaEd6gMtZRCjS81g" target="_fgS5auiaEd6gMtZRCjS81g"/>
    <edge id="_fgUHhOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fgS5auiaEd6gMtZRCjS81g" target="_fgS5bOiaEd6gMtZRCjS81g"/>
    <edge id="_fgUHheiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fgS5beiaEd6gMtZRCjS81g" target="_fgS5auiaEd6gMtZRCjS81g"/>
    <edge id="_fgUHheiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fgS5auiaEd6gMtZRCjS81g" target="_fgS5beiaEd6gMtZRCjS81g"/>
    <edge id="_fgUHhuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fgS5b-iaEd6gMtZRCjS81g" target="_fgS5buiaEd6gMtZRCjS81g"/>
    <edge id="_fgUHhuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fgS5buiaEd6gMtZRCjS81g" target="_fgS5b-iaEd6gMtZRCjS81g"/>
    <edge id="_fgUHh-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fgS5cOiaEd6gMtZRCjS81g" target="_fgS5b-iaEd6gMtZRCjS81g"/>
    <edge id="_fgUHh-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fgS5b-iaEd6gMtZRCjS81g" target="_fgS5cOiaEd6gMtZRCjS81g"/>
    <edge id="_fgUHiOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fgS5ceiaEd6gMtZRCjS81g" target="_fgS5b-iaEd6gMtZRCjS81g"/>
    <edge id="_fgUHiOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fgS5b-iaEd6gMtZRCjS81g" target="_fgS5ceiaEd6gMtZRCjS81g"/>
    <edge id="_fgUHieiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fgS5cuiaEd6gMtZRCjS81g" target="_fgS5buiaEd6gMtZRCjS81g"/>
    <edge id="_fgUHieiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fgS5buiaEd6gMtZRCjS81g" target="_fgS5cuiaEd6gMtZRCjS81g"/>
    <edge id="_fgUHiuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fgS5c-iaEd6gMtZRCjS81g" target="_fgS5cuiaEd6gMtZRCjS81g"/>
    <edge id="_fgUHiuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fgS5cuiaEd6gMtZRCjS81g" target="_fgS5c-iaEd6gMtZRCjS81g"/>
    <edge id="_fgUHi-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fgS5dOiaEd6gMtZRCjS81g" target="_fgS5cuiaEd6gMtZRCjS81g"/>
    <edge id="_fgUHi-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fgS5cuiaEd6gMtZRCjS81g" target="_fgS5dOiaEd6gMtZRCjS81g"/>
    <edge id="_fgUukOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fgS5deiaEd6gMtZRCjS81g" target="_fgS5cuiaEd6gMtZRCjS81g"/>
    <edge id="_fgUukOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fgS5cuiaEd6gMtZRCjS81g" target="_fgS5deiaEd6gMtZRCjS81g"/>
    <edge id="_fgUukeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fgS5duiaEd6gMtZRCjS81g" target="_fgS5cuiaEd6gMtZRCjS81g"/>
    <edge id="_fgUukeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fgS5cuiaEd6gMtZRCjS81g" target="_fgS5duiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
