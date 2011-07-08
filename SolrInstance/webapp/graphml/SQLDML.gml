<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_gMEaQOiaEd6gMtZRCjS81g" projectName="SQLDML">
    <node className="LocatedElement" id="_gMEaQ-iaEd6gMtZRCjS81g">
      <attribute>location</attribute>
      <attribute>commentsBefore</attribute>
      <attribute>commentsAfter</attribute>
    </node>
    <node className="SQLRoot" id="_gMEaROiaEd6gMtZRCjS81g"/>
    <node className="Statement" id="_gMEaReiaEd6gMtZRCjS81g"/>
    <node className="ViewStatement" id="_gMEaRuiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="InsertStmt" id="_gMEaR-iaEd6gMtZRCjS81g">
      <attribute>tableName</attribute>
    </node>
    <node className="QueryStmt" id="_gMEaSOiaEd6gMtZRCjS81g"/>
    <node className="QueryStmtCol" id="_gMEaSeiaEd6gMtZRCjS81g"/>
    <node className="QueryStmtAllCol" id="_gMEaSuiaEd6gMtZRCjS81g"/>
    <node className="NamedElement" id="_gMFBUOiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Table" id="_gMFBUeiaEd6gMtZRCjS81g">
      <attribute>alias</attribute>
    </node>
    <node className="WhereClause" id="_gMFBUuiaEd6gMtZRCjS81g"/>
    <node className="Expression" id="_gMFBU-iaEd6gMtZRCjS81g"/>
    <node className="BinaryExp" id="_gMFBVOiaEd6gMtZRCjS81g">
      <attribute>opName</attribute>
    </node>
    <node className="OrExp" id="_gMFBVeiaEd6gMtZRCjS81g"/>
    <node className="AndExp" id="_gMFBVuiaEd6gMtZRCjS81g"/>
    <node className="NotExp" id="_gMFBV-iaEd6gMtZRCjS81g">
      <attribute>opName</attribute>
    </node>
    <node className="LikeExp" id="_gMFBWOiaEd6gMtZRCjS81g">
      <attribute>columnName</attribute>
    </node>
    <node className="InExp" id="_gMFBWeiaEd6gMtZRCjS81g">
      <attribute>columnName</attribute>
    </node>
    <node className="OperationExp" id="_gMFBWuiaEd6gMtZRCjS81g">
      <attribute>optName</attribute>
    </node>
    <node className="Predicate" id="_gMFBW-iaEd6gMtZRCjS81g"/>
    <node className="QueryPredicate" id="_gMFBXOiaEd6gMtZRCjS81g"/>
    <node className="ColumnExp" id="_gMFBXeiaEd6gMtZRCjS81g">
      <attribute>alias</attribute>
    </node>
    <node className="ValueExp" id="_gMFBXuiaEd6gMtZRCjS81g"/>
    <node className="StringValueExp" id="_gMFBX-iaEd6gMtZRCjS81g">
      <attribute>aValue</attribute>
    </node>
    <node className="IntegerValueExp" id="_gMFBYOiaEd6gMtZRCjS81g">
      <attribute>aValue</attribute>
    </node>
    <node className="ListExp" id="_gMFBYeiaEd6gMtZRCjS81g"/>
    <node className="FunctionExp" id="_gMFBYuiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="DataType" id="_gMFBY-iaEd6gMtZRCjS81g"/>
    <edge id="_gMFBdOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gMEaROiaEd6gMtZRCjS81g" target="_gMEaReiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">statements</attribute>
    </edge>
    <edge id="_gMFBdOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gMEaReiaEd6gMtZRCjS81g" target="_gMEaROiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gMFBd-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gMEaRuiaEd6gMtZRCjS81g" target="_gMFBXeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">columns</attribute>
    </edge>
    <edge id="_gMFBd-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gMFBXeiaEd6gMtZRCjS81g" target="_gMEaRuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gMFBeuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gMEaRuiaEd6gMtZRCjS81g" target="_gMEaSOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">query</attribute>
    </edge>
    <edge id="_gMFBeuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gMEaSOiaEd6gMtZRCjS81g" target="_gMEaRuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gMFBfeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gMEaR-iaEd6gMtZRCjS81g" target="_gMFBU-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">values</attribute>
    </edge>
    <edge id="_gMFBfeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gMFBU-iaEd6gMtZRCjS81g" target="_gMEaR-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gMFBgOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gMEaSOiaEd6gMtZRCjS81g" target="_gMFBUeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">tables</attribute>
    </edge>
    <edge id="_gMFBgOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gMFBUeiaEd6gMtZRCjS81g" target="_gMEaSOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gMFBg-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gMEaSOiaEd6gMtZRCjS81g" target="_gMFBUuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">condition</attribute>
    </edge>
    <edge id="_gMFBg-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gMFBUuiaEd6gMtZRCjS81g" target="_gMEaSOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gMFBhuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gMEaSeiaEd6gMtZRCjS81g" target="_gMFBU-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">columns</attribute>
    </edge>
    <edge id="_gMFBhuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gMFBU-iaEd6gMtZRCjS81g" target="_gMEaSeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gMFoYeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gMFBUuiaEd6gMtZRCjS81g" target="_gMFBU-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">expression</attribute>
    </edge>
    <edge id="_gMFoYeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gMFBU-iaEd6gMtZRCjS81g" target="_gMFBUuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gMFoZOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gMFBVOiaEd6gMtZRCjS81g" target="_gMFBU-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">leftExp</attribute>
    </edge>
    <edge id="_gMFoZOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gMFBU-iaEd6gMtZRCjS81g" target="_gMFBVOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gMFoZ-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gMFBVOiaEd6gMtZRCjS81g" target="_gMFBU-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">rightExp</attribute>
    </edge>
    <edge id="_gMFoZ-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gMFBU-iaEd6gMtZRCjS81g" target="_gMFBVOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gMFoauiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gMFBV-iaEd6gMtZRCjS81g" target="_gMFBU-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">valueExp</attribute>
    </edge>
    <edge id="_gMFoauiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gMFBU-iaEd6gMtZRCjS81g" target="_gMFBV-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gMFobeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gMFBV-iaEd6gMtZRCjS81g" target="_gMFBU-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">unused</attribute>
    </edge>
    <edge id="_gMFobeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gMFBU-iaEd6gMtZRCjS81g" target="_gMFBV-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gMFocOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gMFBWOiaEd6gMtZRCjS81g" target="_gMFBX-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">expression</attribute>
    </edge>
    <edge id="_gMFocOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gMFBX-iaEd6gMtZRCjS81g" target="_gMFBWOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gMFoc-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gMFBWeiaEd6gMtZRCjS81g" target="_gMFBW-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">elements</attribute>
    </edge>
    <edge id="_gMFoc-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gMFBW-iaEd6gMtZRCjS81g" target="_gMFBWeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gMFoduiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gMFBXOiaEd6gMtZRCjS81g" target="_gMEaSOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">query</attribute>
    </edge>
    <edge id="_gMFoduiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gMEaSOiaEd6gMtZRCjS81g" target="_gMFBXOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gMFoeeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gMFBXeiaEd6gMtZRCjS81g" target="_gMFBY-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">type</attribute>
    </edge>
    <edge id="_gMFoeeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gMFBY-iaEd6gMtZRCjS81g" target="_gMFBXeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gMFofOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gMFBXuiaEd6gMtZRCjS81g" target="_gMFBY-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">type</attribute>
    </edge>
    <edge id="_gMFofOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gMFBY-iaEd6gMtZRCjS81g" target="_gMFBXuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gMFof-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gMFBYeiaEd6gMtZRCjS81g" target="_gMFBU-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">elements</attribute>
    </edge>
    <edge id="_gMFof-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gMFBU-iaEd6gMtZRCjS81g" target="_gMFBYeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gMFoguiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gMFBYuiaEd6gMtZRCjS81g" target="_gMFBU-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">arguments</attribute>
    </edge>
    <edge id="_gMFoguiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gMFBU-iaEd6gMtZRCjS81g" target="_gMFBYuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gMGPcOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gMEaROiaEd6gMtZRCjS81g" target="_gMEaQ-iaEd6gMtZRCjS81g"/>
    <edge id="_gMGPcOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gMEaQ-iaEd6gMtZRCjS81g" target="_gMEaROiaEd6gMtZRCjS81g"/>
    <edge id="_gMGPceiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gMEaReiaEd6gMtZRCjS81g" target="_gMEaQ-iaEd6gMtZRCjS81g"/>
    <edge id="_gMGPceiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gMEaQ-iaEd6gMtZRCjS81g" target="_gMEaReiaEd6gMtZRCjS81g"/>
    <edge id="_gMGPcuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gMEaRuiaEd6gMtZRCjS81g" target="_gMEaReiaEd6gMtZRCjS81g"/>
    <edge id="_gMGPcuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gMEaReiaEd6gMtZRCjS81g" target="_gMEaRuiaEd6gMtZRCjS81g"/>
    <edge id="_gMGPc-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gMEaR-iaEd6gMtZRCjS81g" target="_gMEaReiaEd6gMtZRCjS81g"/>
    <edge id="_gMGPc-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gMEaReiaEd6gMtZRCjS81g" target="_gMEaR-iaEd6gMtZRCjS81g"/>
    <edge id="_gMGPdOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gMEaSOiaEd6gMtZRCjS81g" target="_gMEaReiaEd6gMtZRCjS81g"/>
    <edge id="_gMGPdOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gMEaReiaEd6gMtZRCjS81g" target="_gMEaSOiaEd6gMtZRCjS81g"/>
    <edge id="_gMGPdeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gMEaSeiaEd6gMtZRCjS81g" target="_gMEaSOiaEd6gMtZRCjS81g"/>
    <edge id="_gMGPdeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gMEaSOiaEd6gMtZRCjS81g" target="_gMEaSeiaEd6gMtZRCjS81g"/>
    <edge id="_gMG2gOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gMEaSuiaEd6gMtZRCjS81g" target="_gMEaSOiaEd6gMtZRCjS81g"/>
    <edge id="_gMG2gOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gMEaSOiaEd6gMtZRCjS81g" target="_gMEaSuiaEd6gMtZRCjS81g"/>
    <edge id="_gMG2geiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gMFBUOiaEd6gMtZRCjS81g" target="_gMEaQ-iaEd6gMtZRCjS81g"/>
    <edge id="_gMG2geiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gMEaQ-iaEd6gMtZRCjS81g" target="_gMFBUOiaEd6gMtZRCjS81g"/>
    <edge id="_gMG2guiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gMFBUeiaEd6gMtZRCjS81g" target="_gMFBUOiaEd6gMtZRCjS81g"/>
    <edge id="_gMG2guiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gMFBUOiaEd6gMtZRCjS81g" target="_gMFBUeiaEd6gMtZRCjS81g"/>
    <edge id="_gMG2g-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gMFBUuiaEd6gMtZRCjS81g" target="_gMEaQ-iaEd6gMtZRCjS81g"/>
    <edge id="_gMG2g-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gMEaQ-iaEd6gMtZRCjS81g" target="_gMFBUuiaEd6gMtZRCjS81g"/>
    <edge id="_gMG2hOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gMFBU-iaEd6gMtZRCjS81g" target="_gMEaQ-iaEd6gMtZRCjS81g"/>
    <edge id="_gMG2hOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gMEaQ-iaEd6gMtZRCjS81g" target="_gMFBU-iaEd6gMtZRCjS81g"/>
    <edge id="_gMG2heiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gMFBVOiaEd6gMtZRCjS81g" target="_gMFBU-iaEd6gMtZRCjS81g"/>
    <edge id="_gMG2heiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gMFBU-iaEd6gMtZRCjS81g" target="_gMFBVOiaEd6gMtZRCjS81g"/>
    <edge id="_gMG2huiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gMFBVeiaEd6gMtZRCjS81g" target="_gMFBVOiaEd6gMtZRCjS81g"/>
    <edge id="_gMG2huiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gMFBVOiaEd6gMtZRCjS81g" target="_gMFBVeiaEd6gMtZRCjS81g"/>
    <edge id="_gMG2h-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gMFBVuiaEd6gMtZRCjS81g" target="_gMFBVOiaEd6gMtZRCjS81g"/>
    <edge id="_gMG2h-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gMFBVOiaEd6gMtZRCjS81g" target="_gMFBVuiaEd6gMtZRCjS81g"/>
    <edge id="_gMG2iOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gMFBV-iaEd6gMtZRCjS81g" target="_gMFBU-iaEd6gMtZRCjS81g"/>
    <edge id="_gMG2iOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gMFBU-iaEd6gMtZRCjS81g" target="_gMFBV-iaEd6gMtZRCjS81g"/>
    <edge id="_gMG2ieiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gMFBWOiaEd6gMtZRCjS81g" target="_gMFBU-iaEd6gMtZRCjS81g"/>
    <edge id="_gMG2ieiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gMFBU-iaEd6gMtZRCjS81g" target="_gMFBWOiaEd6gMtZRCjS81g"/>
    <edge id="_gMG2iuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gMFBWeiaEd6gMtZRCjS81g" target="_gMFBU-iaEd6gMtZRCjS81g"/>
    <edge id="_gMG2iuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gMFBU-iaEd6gMtZRCjS81g" target="_gMFBWeiaEd6gMtZRCjS81g"/>
    <edge id="_gMG2i-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gMFBWuiaEd6gMtZRCjS81g" target="_gMFBVOiaEd6gMtZRCjS81g"/>
    <edge id="_gMG2i-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gMFBVOiaEd6gMtZRCjS81g" target="_gMFBWuiaEd6gMtZRCjS81g"/>
    <edge id="_gMG2jOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gMFBW-iaEd6gMtZRCjS81g" target="_gMFBU-iaEd6gMtZRCjS81g"/>
    <edge id="_gMG2jOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gMFBU-iaEd6gMtZRCjS81g" target="_gMFBW-iaEd6gMtZRCjS81g"/>
    <edge id="_gMG2jeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gMFBXOiaEd6gMtZRCjS81g" target="_gMFBU-iaEd6gMtZRCjS81g"/>
    <edge id="_gMG2jeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gMFBU-iaEd6gMtZRCjS81g" target="_gMFBXOiaEd6gMtZRCjS81g"/>
    <edge id="_gMG2juiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gMFBXeiaEd6gMtZRCjS81g" target="_gMFBW-iaEd6gMtZRCjS81g"/>
    <edge id="_gMG2juiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gMFBW-iaEd6gMtZRCjS81g" target="_gMFBXeiaEd6gMtZRCjS81g"/>
    <edge id="_gMG2j-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gMFBXeiaEd6gMtZRCjS81g" target="_gMFBUOiaEd6gMtZRCjS81g"/>
    <edge id="_gMG2j-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gMFBUOiaEd6gMtZRCjS81g" target="_gMFBXeiaEd6gMtZRCjS81g"/>
    <edge id="_gMHdkOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gMFBXuiaEd6gMtZRCjS81g" target="_gMFBW-iaEd6gMtZRCjS81g"/>
    <edge id="_gMHdkOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gMFBW-iaEd6gMtZRCjS81g" target="_gMFBXuiaEd6gMtZRCjS81g"/>
    <edge id="_gMHdkeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gMFBX-iaEd6gMtZRCjS81g" target="_gMFBXuiaEd6gMtZRCjS81g"/>
    <edge id="_gMHdkeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gMFBXuiaEd6gMtZRCjS81g" target="_gMFBX-iaEd6gMtZRCjS81g"/>
    <edge id="_gMHdkuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gMFBYOiaEd6gMtZRCjS81g" target="_gMFBXuiaEd6gMtZRCjS81g"/>
    <edge id="_gMHdkuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gMFBXuiaEd6gMtZRCjS81g" target="_gMFBYOiaEd6gMtZRCjS81g"/>
    <edge id="_gMHdk-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gMFBYeiaEd6gMtZRCjS81g" target="_gMFBW-iaEd6gMtZRCjS81g"/>
    <edge id="_gMHdk-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gMFBW-iaEd6gMtZRCjS81g" target="_gMFBYeiaEd6gMtZRCjS81g"/>
    <edge id="_gMHdlOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gMFBYuiaEd6gMtZRCjS81g" target="_gMFBW-iaEd6gMtZRCjS81g"/>
    <edge id="_gMHdlOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gMFBW-iaEd6gMtZRCjS81g" target="_gMFBYuiaEd6gMtZRCjS81g"/>
    <edge id="_gMHdleiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gMFBY-iaEd6gMtZRCjS81g" target="_gMFBUOiaEd6gMtZRCjS81g"/>
    <edge id="_gMHdleiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gMFBUOiaEd6gMtZRCjS81g" target="_gMFBY-iaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
