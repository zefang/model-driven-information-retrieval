<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_gTssQOiaEd6gMtZRCjS81g" projectName="OCLExpression">
    <node className="ModelElement" id="_gTssQ-iaEd6gMtZRCjS81g"/>
    <node className="SyncChart" id="_gTssROiaEd6gMtZRCjS81g"/>
    <node className="ReferenceState" id="_gTssReiaEd6gMtZRCjS81g"/>
    <node className="Arc" id="_gTssRuiaEd6gMtZRCjS81g">
      <attribute>isImmediate</attribute>
      <attribute>priority</attribute>
    </node>
    <node className="Vertex" id="_gTssR-iaEd6gMtZRCjS81g"/>
    <node className="PseudoState" id="_gTssSOiaEd6gMtZRCjS81g"/>
    <node className="PseudoStateKind" id="_gTssSeiaEd6gMtZRCjS81g"/>
    <node className="State" id="_gTssSuiaEd6gMtZRCjS81g">
      <attribute>isFinal</attribute>
    </node>
    <node className="SimpleState" id="_gTssS-iaEd6gMtZRCjS81g"/>
    <node className="CompositeState" id="_gTssTOiaEd6gMtZRCjS81g">
      <attribute>canTerminate</attribute>
      <attribute>isSuspendable</attribute>
    </node>
    <node className="Stg" id="_gTssTeiaEd6gMtZRCjS81g">
      <attribute>withFinal</attribute>
    </node>
    <node className="Transition" id="_gTssTuiaEd6gMtZRCjS81g"/>
    <node className="TransitionKind" id="_gTssT-iaEd6gMtZRCjS81g"/>
    <node className="PseudoTransition" id="_gTssUOiaEd6gMtZRCjS81g"/>
    <node className="PseudoTransitionKind" id="_gTssUeiaEd6gMtZRCjS81g"/>
    <edge id="_gTtTYOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gTssTeiaEd6gMtZRCjS81g" target="_gTssRuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">arc</attribute>
    </edge>
    <edge id="_gTtTYOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gTssRuiaEd6gMtZRCjS81g" target="_gTssTeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gTtTY-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gTssTeiaEd6gMtZRCjS81g" target="_gTssReiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">referenceState</attribute>
    </edge>
    <edge id="_gTtTY-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gTssReiaEd6gMtZRCjS81g" target="_gTssTeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gTssWOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gTssQ-iaEd6gMtZRCjS81g" target="_gTssROiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">behavior</attribute>
    </edge>
    <edge id="_gTssWOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gTssROiaEd6gMtZRCjS81g" target="_gTssQ-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gTtTUeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gTssROiaEd6gMtZRCjS81g" target="_gTssReiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">referenceState</attribute>
    </edge>
    <edge id="_gTtTUeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gTssReiaEd6gMtZRCjS81g" target="_gTssROiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gTtTVOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gTssRuiaEd6gMtZRCjS81g" target="_gTssR-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">target</attribute>
    </edge>
    <edge id="_gTtTVOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gTssR-iaEd6gMtZRCjS81g" target="_gTssRuiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gTtTV-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gTssRuiaEd6gMtZRCjS81g" target="_gTssR-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">source</attribute>
    </edge>
    <edge id="_gTtTV-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gTssR-iaEd6gMtZRCjS81g" target="_gTssRuiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gTtTWuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gTssSOiaEd6gMtZRCjS81g" target="_gTssSeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">kind</attribute>
    </edge>
    <edge id="_gTtTWuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gTssSeiaEd6gMtZRCjS81g" target="_gTssSOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gTtTXeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gTssTOiaEd6gMtZRCjS81g" target="_gTssTeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">stg</attribute>
    </edge>
    <edge id="_gTtTXeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gTssTeiaEd6gMtZRCjS81g" target="_gTssTOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gTtTZuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gTssTuiaEd6gMtZRCjS81g" target="_gTssT-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">kind</attribute>
    </edge>
    <edge id="_gTtTZuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gTssT-iaEd6gMtZRCjS81g" target="_gTssTuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gTtTaeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gTssUOiaEd6gMtZRCjS81g" target="_gTssUeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">kind</attribute>
    </edge>
    <edge id="_gTtTaeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gTssUeiaEd6gMtZRCjS81g" target="_gTssUOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gTt6YOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gTssRuiaEd6gMtZRCjS81g" target="_gTssQ-iaEd6gMtZRCjS81g"/>
    <edge id="_gTt6YOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gTssQ-iaEd6gMtZRCjS81g" target="_gTssRuiaEd6gMtZRCjS81g"/>
    <edge id="_gTt6YeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gTssR-iaEd6gMtZRCjS81g" target="_gTssQ-iaEd6gMtZRCjS81g"/>
    <edge id="_gTt6YeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gTssQ-iaEd6gMtZRCjS81g" target="_gTssR-iaEd6gMtZRCjS81g"/>
    <edge id="_gTt6YuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gTssSOiaEd6gMtZRCjS81g" target="_gTssR-iaEd6gMtZRCjS81g"/>
    <edge id="_gTt6YuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gTssR-iaEd6gMtZRCjS81g" target="_gTssSOiaEd6gMtZRCjS81g"/>
    <edge id="_gTt6Y-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gTssSuiaEd6gMtZRCjS81g" target="_gTssR-iaEd6gMtZRCjS81g"/>
    <edge id="_gTt6Y-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gTssR-iaEd6gMtZRCjS81g" target="_gTssSuiaEd6gMtZRCjS81g"/>
    <edge id="_gTt6ZOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gTssS-iaEd6gMtZRCjS81g" target="_gTssSuiaEd6gMtZRCjS81g"/>
    <edge id="_gTt6ZOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gTssSuiaEd6gMtZRCjS81g" target="_gTssS-iaEd6gMtZRCjS81g"/>
    <edge id="_gTt6ZeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gTssTOiaEd6gMtZRCjS81g" target="_gTssSuiaEd6gMtZRCjS81g"/>
    <edge id="_gTt6ZeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gTssSuiaEd6gMtZRCjS81g" target="_gTssTOiaEd6gMtZRCjS81g"/>
    <edge id="_gTt6ZuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gTssTOiaEd6gMtZRCjS81g" target="_gTssReiaEd6gMtZRCjS81g"/>
    <edge id="_gTt6ZuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gTssReiaEd6gMtZRCjS81g" target="_gTssTOiaEd6gMtZRCjS81g"/>
    <edge id="_gTt6Z-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gTssTuiaEd6gMtZRCjS81g" target="_gTssRuiaEd6gMtZRCjS81g"/>
    <edge id="_gTt6Z-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gTssRuiaEd6gMtZRCjS81g" target="_gTssTuiaEd6gMtZRCjS81g"/>
    <edge id="_gTt6aOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gTssUOiaEd6gMtZRCjS81g" target="_gTssRuiaEd6gMtZRCjS81g"/>
    <edge id="_gTt6aOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gTssRuiaEd6gMtZRCjS81g" target="_gTssUOiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
