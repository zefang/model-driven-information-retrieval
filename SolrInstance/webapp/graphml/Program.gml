<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_fyKsgOiaEd6gMtZRCjS81g" projectName="Program">
    <node className="LocatedElement" id="_fyKsg-iaEd6gMtZRCjS81g">
      <attribute>location</attribute>
    </node>
    <node className="NamedElement" id="_fyKshOiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Structure" id="_fyKsheiaEd6gMtZRCjS81g"/>
    <node className="ProcContainerElement" id="_fyKshuiaEd6gMtZRCjS81g"/>
    <node className="Program" id="_fyKsh-iaEd6gMtZRCjS81g"/>
    <node className="Monitor" id="_fyKsiOiaEd6gMtZRCjS81g"/>
    <node className="Procedure" id="_fyKsieiaEd6gMtZRCjS81g"/>
    <node className="VariableDeclaration" id="_fyKsiuiaEd6gMtZRCjS81g"/>
    <node className="Parameter" id="_fyKsi-iaEd6gMtZRCjS81g">
      <attribute>direction</attribute>
    </node>
    <node className="Type" id="_fyKsjOiaEd6gMtZRCjS81g"/>
    <node className="Expression" id="_fyKsjeiaEd6gMtZRCjS81g"/>
    <node className="VariableExp" id="_fyKsjuiaEd6gMtZRCjS81g"/>
    <node className="PropertyCallExp" id="_fyKsj-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="OperatorCallExp" id="_fyKskOiaEd6gMtZRCjS81g"/>
    <node className="AttributeCallExp" id="_fyKskeiaEd6gMtZRCjS81g"/>
    <node className="ProcedureCallExp" id="_fyKskuiaEd6gMtZRCjS81g"/>
    <node className="LiteralExp" id="_fyKsk-iaEd6gMtZRCjS81g"/>
    <node className="BooleanExp" id="_fyKslOiaEd6gMtZRCjS81g">
      <attribute>symbol</attribute>
    </node>
    <node className="IntegerExp" id="_fyKsleiaEd6gMtZRCjS81g">
      <attribute>symbol</attribute>
    </node>
    <node className="Statement" id="_fyKsluiaEd6gMtZRCjS81g"/>
    <node className="AssignmentStat" id="_fyKsl-iaEd6gMtZRCjS81g"/>
    <node className="ConditionalStat" id="_fyKsmOiaEd6gMtZRCjS81g"/>
    <node className="WhileStat" id="_fyKsmeiaEd6gMtZRCjS81g"/>
    <node className="ExpressionStat" id="_fyKsmuiaEd6gMtZRCjS81g"/>
    <edge id="_fyKsoeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fyKsheiaEd6gMtZRCjS81g" target="_fyKsiuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">variables</attribute>
    </edge>
    <edge id="_fyKsoeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fyKsiuiaEd6gMtZRCjS81g" target="_fyKsheiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fyLTkeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fyKshuiaEd6gMtZRCjS81g" target="_fyKsieiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">procedures</attribute>
    </edge>
    <edge id="_fyLTkeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fyKsieiaEd6gMtZRCjS81g" target="_fyKshuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fyLTlOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fyKsh-iaEd6gMtZRCjS81g" target="_fyKsiOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">monitors</attribute>
    </edge>
    <edge id="_fyLTlOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fyKsiOiaEd6gMtZRCjS81g" target="_fyKsh-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fyLTl-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fyKsieiaEd6gMtZRCjS81g" target="_fyKsi-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">parameters</attribute>
    </edge>
    <edge id="_fyLTl-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fyKsi-iaEd6gMtZRCjS81g" target="_fyKsieiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fyLTmuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fyKsieiaEd6gMtZRCjS81g" target="_fyKsluiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">statements</attribute>
    </edge>
    <edge id="_fyLTmuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fyKsluiaEd6gMtZRCjS81g" target="_fyKsieiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fyLToOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fyKsiuiaEd6gMtZRCjS81g" target="_fyKsjeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">initialValue</attribute>
    </edge>
    <edge id="_fyLToOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fyKsjeiaEd6gMtZRCjS81g" target="_fyKsiuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fyLTpuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fyKsj-iaEd6gMtZRCjS81g" target="_fyKsjeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">source</attribute>
    </edge>
    <edge id="_fyLTpuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fyKsjeiaEd6gMtZRCjS81g" target="_fyKsj-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fyLTqeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fyKskOiaEd6gMtZRCjS81g" target="_fyKsjeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">right</attribute>
    </edge>
    <edge id="_fyLTqeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fyKsjeiaEd6gMtZRCjS81g" target="_fyKskOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fyLTrOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fyKskuiaEd6gMtZRCjS81g" target="_fyKsjeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">arguments</attribute>
    </edge>
    <edge id="_fyLTrOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fyKsjeiaEd6gMtZRCjS81g" target="_fyKskuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fyLTr-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fyKsl-iaEd6gMtZRCjS81g" target="_fyKsjuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">target</attribute>
    </edge>
    <edge id="_fyLTr-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fyKsjuiaEd6gMtZRCjS81g" target="_fyKsl-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fyLTsuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fyKsl-iaEd6gMtZRCjS81g" target="_fyKsjeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">value</attribute>
    </edge>
    <edge id="_fyLTsuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fyKsjeiaEd6gMtZRCjS81g" target="_fyKsl-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fyLTteiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fyKsmOiaEd6gMtZRCjS81g" target="_fyKsjeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">condition</attribute>
    </edge>
    <edge id="_fyLTteiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fyKsjeiaEd6gMtZRCjS81g" target="_fyKsmOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fyLTuOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fyKsmOiaEd6gMtZRCjS81g" target="_fyKsluiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">thenStats</attribute>
    </edge>
    <edge id="_fyLTuOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fyKsluiaEd6gMtZRCjS81g" target="_fyKsmOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fyLTu-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fyKsmOiaEd6gMtZRCjS81g" target="_fyKsluiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">elseStats</attribute>
    </edge>
    <edge id="_fyLTu-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fyKsluiaEd6gMtZRCjS81g" target="_fyKsmOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fyLTvuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fyKsmeiaEd6gMtZRCjS81g" target="_fyKsjeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">condition</attribute>
    </edge>
    <edge id="_fyLTvuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fyKsjeiaEd6gMtZRCjS81g" target="_fyKsmeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fyMhseiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fyKsmeiaEd6gMtZRCjS81g" target="_fyKsluiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">doStats</attribute>
    </edge>
    <edge id="_fyMhseiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fyKsluiaEd6gMtZRCjS81g" target="_fyKsmeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fyMhtOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fyKsmuiaEd6gMtZRCjS81g" target="_fyKsjeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">expression</attribute>
    </edge>
    <edge id="_fyMhtOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fyKsjeiaEd6gMtZRCjS81g" target="_fyKsmuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fyLTneiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fyKsiuiaEd6gMtZRCjS81g" target="_fyKsjOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">type</attribute>
    </edge>
    <edge id="_fyLTneiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fyKsjOiaEd6gMtZRCjS81g" target="_fyKsiuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fyLTo-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fyKsjuiaEd6gMtZRCjS81g" target="_fyKsiuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">declaration</attribute>
    </edge>
    <edge id="_fyLTo-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fyKsiuiaEd6gMtZRCjS81g" target="_fyKsjuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fyNIwOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fyKshOiaEd6gMtZRCjS81g" target="_fyKsg-iaEd6gMtZRCjS81g"/>
    <edge id="_fyNIwOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fyKsg-iaEd6gMtZRCjS81g" target="_fyKshOiaEd6gMtZRCjS81g"/>
    <edge id="_fyNIweiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fyKsheiaEd6gMtZRCjS81g" target="_fyKshOiaEd6gMtZRCjS81g"/>
    <edge id="_fyNIweiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fyKshOiaEd6gMtZRCjS81g" target="_fyKsheiaEd6gMtZRCjS81g"/>
    <edge id="_fyNIwuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fyKshuiaEd6gMtZRCjS81g" target="_fyKsheiaEd6gMtZRCjS81g"/>
    <edge id="_fyNIwuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fyKsheiaEd6gMtZRCjS81g" target="_fyKshuiaEd6gMtZRCjS81g"/>
    <edge id="_fyNIw-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fyKsh-iaEd6gMtZRCjS81g" target="_fyKshuiaEd6gMtZRCjS81g"/>
    <edge id="_fyNIw-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fyKshuiaEd6gMtZRCjS81g" target="_fyKsh-iaEd6gMtZRCjS81g"/>
    <edge id="_fyNIxOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fyKsiOiaEd6gMtZRCjS81g" target="_fyKshuiaEd6gMtZRCjS81g"/>
    <edge id="_fyNIxOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fyKshuiaEd6gMtZRCjS81g" target="_fyKsiOiaEd6gMtZRCjS81g"/>
    <edge id="_fyNIxeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fyKsieiaEd6gMtZRCjS81g" target="_fyKsheiaEd6gMtZRCjS81g"/>
    <edge id="_fyNIxeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fyKsheiaEd6gMtZRCjS81g" target="_fyKsieiaEd6gMtZRCjS81g"/>
    <edge id="_fyNIxuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fyKsiuiaEd6gMtZRCjS81g" target="_fyKshOiaEd6gMtZRCjS81g"/>
    <edge id="_fyNIxuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fyKshOiaEd6gMtZRCjS81g" target="_fyKsiuiaEd6gMtZRCjS81g"/>
    <edge id="_fyNIx-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fyKsi-iaEd6gMtZRCjS81g" target="_fyKsiuiaEd6gMtZRCjS81g"/>
    <edge id="_fyNIx-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fyKsiuiaEd6gMtZRCjS81g" target="_fyKsi-iaEd6gMtZRCjS81g"/>
    <edge id="_fyNIyOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fyKsjOiaEd6gMtZRCjS81g" target="_fyKshOiaEd6gMtZRCjS81g"/>
    <edge id="_fyNIyOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fyKshOiaEd6gMtZRCjS81g" target="_fyKsjOiaEd6gMtZRCjS81g"/>
    <edge id="_fyNIyeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fyKsjeiaEd6gMtZRCjS81g" target="_fyKsg-iaEd6gMtZRCjS81g"/>
    <edge id="_fyNIyeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fyKsg-iaEd6gMtZRCjS81g" target="_fyKsjeiaEd6gMtZRCjS81g"/>
    <edge id="_fyNIyuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fyKsjuiaEd6gMtZRCjS81g" target="_fyKsjeiaEd6gMtZRCjS81g"/>
    <edge id="_fyNIyuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fyKsjeiaEd6gMtZRCjS81g" target="_fyKsjuiaEd6gMtZRCjS81g"/>
    <edge id="_fyNIy-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fyKsj-iaEd6gMtZRCjS81g" target="_fyKsjeiaEd6gMtZRCjS81g"/>
    <edge id="_fyNIy-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fyKsjeiaEd6gMtZRCjS81g" target="_fyKsj-iaEd6gMtZRCjS81g"/>
    <edge id="_fyNv0OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fyKskOiaEd6gMtZRCjS81g" target="_fyKsj-iaEd6gMtZRCjS81g"/>
    <edge id="_fyNv0OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fyKsj-iaEd6gMtZRCjS81g" target="_fyKskOiaEd6gMtZRCjS81g"/>
    <edge id="_fyNv0eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fyKskeiaEd6gMtZRCjS81g" target="_fyKsj-iaEd6gMtZRCjS81g"/>
    <edge id="_fyNv0eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fyKsj-iaEd6gMtZRCjS81g" target="_fyKskeiaEd6gMtZRCjS81g"/>
    <edge id="_fyNv0uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fyKskuiaEd6gMtZRCjS81g" target="_fyKsj-iaEd6gMtZRCjS81g"/>
    <edge id="_fyNv0uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fyKsj-iaEd6gMtZRCjS81g" target="_fyKskuiaEd6gMtZRCjS81g"/>
    <edge id="_fyNv0-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fyKsk-iaEd6gMtZRCjS81g" target="_fyKsjeiaEd6gMtZRCjS81g"/>
    <edge id="_fyNv0-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fyKsjeiaEd6gMtZRCjS81g" target="_fyKsk-iaEd6gMtZRCjS81g"/>
    <edge id="_fyNv1OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fyKslOiaEd6gMtZRCjS81g" target="_fyKsk-iaEd6gMtZRCjS81g"/>
    <edge id="_fyNv1OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fyKsk-iaEd6gMtZRCjS81g" target="_fyKslOiaEd6gMtZRCjS81g"/>
    <edge id="_fyNv1eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fyKsleiaEd6gMtZRCjS81g" target="_fyKsk-iaEd6gMtZRCjS81g"/>
    <edge id="_fyNv1eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fyKsk-iaEd6gMtZRCjS81g" target="_fyKsleiaEd6gMtZRCjS81g"/>
    <edge id="_fyNv1uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fyKsluiaEd6gMtZRCjS81g" target="_fyKsg-iaEd6gMtZRCjS81g"/>
    <edge id="_fyNv1uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fyKsg-iaEd6gMtZRCjS81g" target="_fyKsluiaEd6gMtZRCjS81g"/>
    <edge id="_fyNv1-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fyKsl-iaEd6gMtZRCjS81g" target="_fyKsluiaEd6gMtZRCjS81g"/>
    <edge id="_fyNv1-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fyKsluiaEd6gMtZRCjS81g" target="_fyKsl-iaEd6gMtZRCjS81g"/>
    <edge id="_fyNv2OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fyKsmOiaEd6gMtZRCjS81g" target="_fyKsluiaEd6gMtZRCjS81g"/>
    <edge id="_fyNv2OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fyKsluiaEd6gMtZRCjS81g" target="_fyKsmOiaEd6gMtZRCjS81g"/>
    <edge id="_fyNv2eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fyKsmeiaEd6gMtZRCjS81g" target="_fyKsluiaEd6gMtZRCjS81g"/>
    <edge id="_fyNv2eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fyKsluiaEd6gMtZRCjS81g" target="_fyKsmeiaEd6gMtZRCjS81g"/>
    <edge id="_fyNv2uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fyKsmuiaEd6gMtZRCjS81g" target="_fyKsluiaEd6gMtZRCjS81g"/>
    <edge id="_fyNv2uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fyKsluiaEd6gMtZRCjS81g" target="_fyKsmuiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
