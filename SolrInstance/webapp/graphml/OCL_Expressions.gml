<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_fWDYQOiaEd6gMtZRCjS81g" projectName="OCLExpressions">
    <node className="OclExpression" id="_fWDYQ-iaEd6gMtZRCjS81g"/>
    <node className="SelfExp" id="_fWDYROiaEd6gMtZRCjS81g"/>
    <node className="ResultExp" id="_fWDYReiaEd6gMtZRCjS81g"/>
    <node className="VariableExp" id="_fWDYRuiaEd6gMtZRCjS81g">
      <attribute>var</attribute>
    </node>
    <node className="OperationExp" id="_fWDYR-iaEd6gMtZRCjS81g"/>
    <node className="QueryExp" id="_fWDYSOiaEd6gMtZRCjS81g"/>
    <node className="Type" id="_fWDYSeiaEd6gMtZRCjS81g"/>
    <node className="VariableDeclaration" id="_fWDYSuiaEd6gMtZRCjS81g">
      <attribute>var</attribute>
    </node>
    <node className="VariableInitialisation" id="_fWDYS-iaEd6gMtZRCjS81g"/>
    <node className="ForAllExp" id="_fWDYTOiaEd6gMtZRCjS81g"/>
    <node className="ExistsExp" id="_fWDYTeiaEd6gMtZRCjS81g"/>
    <node className="SelectExp" id="_fWDYTuiaEd6gMtZRCjS81g"/>
    <node className="RejectExp" id="_fWD_UOiaEd6gMtZRCjS81g"/>
    <node className="CollectExp" id="_fWD_UeiaEd6gMtZRCjS81g"/>
    <node className="IterateExp" id="_fWD_UuiaEd6gMtZRCjS81g"/>
    <edge id="_fWD_VeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fWDYQ-iaEd6gMtZRCjS81g" target="_fWDYSeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">resultType</attribute>
    </edge>
    <edge id="_fWD_VeiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fWDYSeiaEd6gMtZRCjS81g" target="_fWDYQ-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_fWD_W-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fWDYSOiaEd6gMtZRCjS81g" target="_fWDYQ-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">argument</attribute>
    </edge>
    <edge id="_fWD_W-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fWDYQ-iaEd6gMtZRCjS81g" target="_fWDYSOiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_fWD_XuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fWDYSOiaEd6gMtZRCjS81g" target="_fWDYQ-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">source</attribute>
    </edge>
    <edge id="_fWD_XuiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fWDYQ-iaEd6gMtZRCjS81g" target="_fWDYSOiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_fWD_YeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fWDYSOiaEd6gMtZRCjS81g" target="_fWDYSuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">varDeclaration</attribute>
    </edge>
    <edge id="_fWD_YeiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fWDYSuiaEd6gMtZRCjS81g" target="_fWDYSOiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_fWD_ZOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fWDYSeiaEd6gMtZRCjS81g" target="_fWDYSuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">varDec</attribute>
    </edge>
    <edge id="_fWD_ZOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fWDYSuiaEd6gMtZRCjS81g" target="_fWDYSeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fWD_Z-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fWDYS-iaEd6gMtZRCjS81g" target="_fWDYQ-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">initExpression</attribute>
    </edge>
    <edge id="_fWD_Z-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fWDYQ-iaEd6gMtZRCjS81g" target="_fWDYS-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_fWD_auiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fWDYS-iaEd6gMtZRCjS81g" target="_fWDYSuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">varDec</attribute>
    </edge>
    <edge id="_fWD_auiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fWDYSuiaEd6gMtZRCjS81g" target="_fWDYS-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_fWD_beiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fWDYS-iaEd6gMtZRCjS81g" target="_fWD_UuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">iterateExp</attribute>
    </edge>
    <edge id="_fWD_beiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fWD_UuiaEd6gMtZRCjS81g" target="_fWDYS-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fWD_WOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fWDYQ-iaEd6gMtZRCjS81g" target="_fWDYSuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">varDec</attribute>
    </edge>
    <edge id="_fWD_WOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_fWDYSuiaEd6gMtZRCjS81g" target="_fWDYQ-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_fWEmYOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fWDYROiaEd6gMtZRCjS81g" target="_fWDYQ-iaEd6gMtZRCjS81g"/>
    <edge id="_fWEmYOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fWDYQ-iaEd6gMtZRCjS81g" target="_fWDYROiaEd6gMtZRCjS81g"/>
    <edge id="_fWEmYeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fWDYReiaEd6gMtZRCjS81g" target="_fWDYQ-iaEd6gMtZRCjS81g"/>
    <edge id="_fWEmYeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fWDYQ-iaEd6gMtZRCjS81g" target="_fWDYReiaEd6gMtZRCjS81g"/>
    <edge id="_fWEmYuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fWDYRuiaEd6gMtZRCjS81g" target="_fWDYQ-iaEd6gMtZRCjS81g"/>
    <edge id="_fWEmYuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fWDYQ-iaEd6gMtZRCjS81g" target="_fWDYRuiaEd6gMtZRCjS81g"/>
    <edge id="_fWEmY-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fWDYR-iaEd6gMtZRCjS81g" target="_fWDYQ-iaEd6gMtZRCjS81g"/>
    <edge id="_fWEmY-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fWDYQ-iaEd6gMtZRCjS81g" target="_fWDYR-iaEd6gMtZRCjS81g"/>
    <edge id="_fWEmZOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fWDYSOiaEd6gMtZRCjS81g" target="_fWDYQ-iaEd6gMtZRCjS81g"/>
    <edge id="_fWEmZOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fWDYQ-iaEd6gMtZRCjS81g" target="_fWDYSOiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
