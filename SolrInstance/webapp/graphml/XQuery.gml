<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_g04GsOiaEd6gMtZRCjS81g" projectName="XQuery">
    <node className="XQueryProgram" id="_g04Gs-iaEd6gMtZRCjS81g"/>
    <node className="Expression" id="_g04GtOiaEd6gMtZRCjS81g"/>
    <node className="ExecutableExpression" id="_g04GteiaEd6gMtZRCjS81g"/>
    <node className="Node" id="_g04GtuiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="FLWOR" id="_g04Gt-iaEd6gMtZRCjS81g"/>
    <node className="FunctionCall" id="_g04GuOiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="FunctionDeclaration" id="_g04GueiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="ElementNode" id="_g04GuuiaEd6gMtZRCjS81g"/>
    <node className="AttributeNode" id="_g04Gu-iaEd6gMtZRCjS81g">
      <attribute>value</attribute>
    </node>
    <node className="TextNode" id="_g04twOiaEd6gMtZRCjS81g"/>
    <node className="ReturnXPath" id="_g04tweiaEd6gMtZRCjS81g">
      <attribute>value</attribute>
    </node>
    <node className="XPath" id="_g04twuiaEd6gMtZRCjS81g"/>
    <node className="BooleanExp" id="_g04tw-iaEd6gMtZRCjS81g"/>
    <node className="For" id="_g04txOiaEd6gMtZRCjS81g">
      <attribute>var</attribute>
    </node>
    <node className="Let" id="_g04txeiaEd6gMtZRCjS81g">
      <attribute>var</attribute>
    </node>
    <node className="Where" id="_g04txuiaEd6gMtZRCjS81g"/>
    <node className="OrderBy" id="_g04tx-iaEd6gMtZRCjS81g"/>
    <node className="Return" id="_g04tyOiaEd6gMtZRCjS81g"/>
    <edge id="_g04t0OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_g04Gs-iaEd6gMtZRCjS81g" target="_g04GteiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">expressions</attribute>
    </edge>
    <edge id="_g04t0OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_g04GteiaEd6gMtZRCjS81g" target="_g04Gs-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g04t0-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_g04Gt-iaEd6gMtZRCjS81g" target="_g04txOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">for</attribute>
    </edge>
    <edge id="_g04t0-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_g04txOiaEd6gMtZRCjS81g" target="_g04Gt-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g04t1uiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_g04Gt-iaEd6gMtZRCjS81g" target="_g04txeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">let</attribute>
    </edge>
    <edge id="_g04t1uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_g04txeiaEd6gMtZRCjS81g" target="_g04Gt-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g04t2eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_g04Gt-iaEd6gMtZRCjS81g" target="_g04txuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">where</attribute>
    </edge>
    <edge id="_g04t2eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_g04txuiaEd6gMtZRCjS81g" target="_g04Gt-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g04t3OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_g04Gt-iaEd6gMtZRCjS81g" target="_g04tx-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">orderBy</attribute>
    </edge>
    <edge id="_g04t3OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_g04tx-iaEd6gMtZRCjS81g" target="_g04Gt-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g04t3-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_g04Gt-iaEd6gMtZRCjS81g" target="_g04tyOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">return</attribute>
    </edge>
    <edge id="_g04t3-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_g04tyOiaEd6gMtZRCjS81g" target="_g04Gt-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g04t4uiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_g04GuOiaEd6gMtZRCjS81g" target="_g04twuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">parameters</attribute>
    </edge>
    <edge id="_g04t4uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_g04twuiaEd6gMtZRCjS81g" target="_g04GuOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g04t5eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_g04GueiaEd6gMtZRCjS81g" target="_g04GteiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">expression</attribute>
    </edge>
    <edge id="_g04t5eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_g04GteiaEd6gMtZRCjS81g" target="_g04GueiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g04t6OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_g04GuuiaEd6gMtZRCjS81g" target="_g04GtOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">nodes</attribute>
    </edge>
    <edge id="_g04t6OiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_g04GtOiaEd6gMtZRCjS81g" target="_g04GuuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g04t6-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_g04txOiaEd6gMtZRCjS81g" target="_g04twuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">expression</attribute>
    </edge>
    <edge id="_g04t6-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_g04twuiaEd6gMtZRCjS81g" target="_g04txOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g04t7uiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_g04txeiaEd6gMtZRCjS81g" target="_g04twuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">expression</attribute>
    </edge>
    <edge id="_g04t7uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_g04twuiaEd6gMtZRCjS81g" target="_g04txeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g04t8eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_g04txuiaEd6gMtZRCjS81g" target="_g04tw-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">expression</attribute>
    </edge>
    <edge id="_g04t8eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_g04tw-iaEd6gMtZRCjS81g" target="_g04txuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g04t9OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_g04tyOiaEd6gMtZRCjS81g" target="_g04GtOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">expressions</attribute>
    </edge>
    <edge id="_g04t9OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_g04GtOiaEd6gMtZRCjS81g" target="_g04tyOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g08YIOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g04GteiaEd6gMtZRCjS81g" target="_g04GtOiaEd6gMtZRCjS81g"/>
    <edge id="_g08YIOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g04GtOiaEd6gMtZRCjS81g" target="_g04GteiaEd6gMtZRCjS81g"/>
    <edge id="_g08_MOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g04GtuiaEd6gMtZRCjS81g" target="_g04GtOiaEd6gMtZRCjS81g"/>
    <edge id="_g08_MOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g04GtOiaEd6gMtZRCjS81g" target="_g04GtuiaEd6gMtZRCjS81g"/>
    <edge id="_g08_MeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g04Gt-iaEd6gMtZRCjS81g" target="_g04GteiaEd6gMtZRCjS81g"/>
    <edge id="_g08_MeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g04GteiaEd6gMtZRCjS81g" target="_g04Gt-iaEd6gMtZRCjS81g"/>
    <edge id="_g08_MuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g04GuOiaEd6gMtZRCjS81g" target="_g04GteiaEd6gMtZRCjS81g"/>
    <edge id="_g08_MuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g04GteiaEd6gMtZRCjS81g" target="_g04GuOiaEd6gMtZRCjS81g"/>
    <edge id="_g08_M-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g04GueiaEd6gMtZRCjS81g" target="_g04GteiaEd6gMtZRCjS81g"/>
    <edge id="_g08_M-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g04GteiaEd6gMtZRCjS81g" target="_g04GueiaEd6gMtZRCjS81g"/>
    <edge id="_g08_NOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g04GuuiaEd6gMtZRCjS81g" target="_g04GtuiaEd6gMtZRCjS81g"/>
    <edge id="_g08_NOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g04GtuiaEd6gMtZRCjS81g" target="_g04GuuiaEd6gMtZRCjS81g"/>
    <edge id="_g08_NeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g04Gu-iaEd6gMtZRCjS81g" target="_g04GtuiaEd6gMtZRCjS81g"/>
    <edge id="_g08_NeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g04GtuiaEd6gMtZRCjS81g" target="_g04Gu-iaEd6gMtZRCjS81g"/>
    <edge id="_g08_NuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g04twOiaEd6gMtZRCjS81g" target="_g04GuuiaEd6gMtZRCjS81g"/>
    <edge id="_g08_NuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g04GuuiaEd6gMtZRCjS81g" target="_g04twOiaEd6gMtZRCjS81g"/>
    <edge id="_g08_N-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g04tweiaEd6gMtZRCjS81g" target="_g04GtOiaEd6gMtZRCjS81g"/>
    <edge id="_g08_N-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g04GtOiaEd6gMtZRCjS81g" target="_g04tweiaEd6gMtZRCjS81g"/>
    <edge id="_g08_OOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g04twuiaEd6gMtZRCjS81g" target="_g04tweiaEd6gMtZRCjS81g"/>
    <edge id="_g08_OOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g04tweiaEd6gMtZRCjS81g" target="_g04twuiaEd6gMtZRCjS81g"/>
    <edge id="_g08_OeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g04tw-iaEd6gMtZRCjS81g" target="_g04twuiaEd6gMtZRCjS81g"/>
    <edge id="_g08_OeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g04twuiaEd6gMtZRCjS81g" target="_g04tw-iaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
