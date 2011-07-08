<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_gzK2gOiaEd6gMtZRCjS81g" projectName="ViewAbstractSyntaxOfXMorphLanguage">
    <node className="VarScope" id="_gzK2g-iaEd6gMtZRCjS81g"/>
    <node className="AbstractVar" id="_gzK2hOiaEd6gMtZRCjS81g"/>
    <node className="VarUse" id="_gzK2heiaEd6gMtZRCjS81g"/>
    <node className="MOF::Property" id="_gzK2huiaEd6gMtZRCjS81g"/>
    <node className="Key" id="_gzK2h-iaEd6gMtZRCjS81g"/>
    <node className="PatternScope" id="_gzK2iOiaEd6gMtZRCjS81g"/>
    <node className="PatternDefn" id="_gzK2ieiaEd6gMtZRCjS81g"/>
    <node className="TRule" id="_gzK2iuiaEd6gMtZRCjS81g"/>
    <node className="Transformation" id="_gzK2i-iaEd6gMtZRCjS81g"/>
    <node className="Query" id="_gzK2jOiaEd6gMtZRCjS81g"/>
    <node className="Term" id="_gzK2jeiaEd6gMtZRCjS81g"/>
    <node className="TRuleVar" id="_gzK2juiaEd6gMtZRCjS81g"/>
    <node className="PatternVar" id="_gzK2j-iaEd6gMtZRCjS81g"/>
    <node className="ExtentVar" id="_gzK2kOiaEd6gMtZRCjS81g"/>
    <node className="CompoundTerm" id="_gzK2keiaEd6gMtZRCjS81g"/>
    <node className="AndTerm" id="_gzK2kuiaEd6gMtZRCjS81g"/>
    <node className="OrTerm" id="_gzK2k-iaEd6gMtZRCjS81g"/>
    <node className="NotTerm" id="_gzK2lOiaEd6gMtZRCjS81g"/>
    <node className="IfTerm" id="_gzK2leiaEd6gMtZRCjS81g"/>
    <node className="SimpleTerm" id="_gzK2luiaEd6gMtZRCjS81g"/>
    <node className="TrackingUse" id="_gzK2l-iaEd6gMtZRCjS81g">
      <attribute>featureNames</attribute>
    </node>
    <node className="MOF::Class" id="_gzK2mOiaEd6gMtZRCjS81g"/>
    <node className="PatternUse" id="_gzK2meiaEd6gMtZRCjS81g"/>
    <node className="MofTerm" id="_gzK2muiaEd6gMtZRCjS81g"/>
    <node className="Condition" id="_gzK2m-iaEd6gMtZRCjS81g">
      <attribute>reason</attribute>
    </node>
    <node className="MofInstance" id="_gzK2nOiaEd6gMtZRCjS81g">
      <attribute>isExactly</attribute>
    </node>
    <node className="MofOrder" id="_gzK2neiaEd6gMtZRCjS81g"/>
    <node className="Expression" id="_gzK2nuiaEd6gMtZRCjS81g"/>
    <node className="CoumpoundExpr" id="_gzK2n-iaEd6gMtZRCjS81g"/>
    <node className="CollectionExpr" id="_gzK2oOiaEd6gMtZRCjS81g">
      <attribute>unique</attribute>
      <attribute>ordered</attribute>
    </node>
    <node className="FunctionExpr" id="_gzK2oeiaEd6gMtZRCjS81g">
      <attribute>function</attribute>
    </node>
    <node className="FeatureExpr" id="_gzK2ouiaEd6gMtZRCjS81g">
      <attribute>collect</attribute>
      <attribute>featureName</attribute>
    </node>
    <node className="InstanceRef" id="_gzK2o-iaEd6gMtZRCjS81g"/>
    <node className="MOF::Object" id="_gzK2pOiaEd6gMtZRCjS81g"/>
    <node className="SimpleExpr" id="_gzK2peiaEd6gMtZRCjS81g">
      <attribute>representation</attribute>
    </node>
    <node className="StringConstant" id="_gzK2puiaEd6gMtZRCjS81g"/>
    <node className="IntConstant" id="_gzK2p-iaEd6gMtZRCjS81g"/>
    <node className="BooleanConstant" id="_gzK2qOiaEd6gMtZRCjS81g"/>
    <node className="EnumConstant" id="_gzK2qeiaEd6gMtZRCjS81g"/>
    <edge id="_gzLdk-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gzK2g-iaEd6gMtZRCjS81g" target="_gzK2hOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">var</attribute>
    </edge>
    <edge id="_gzLdk-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gzK2hOiaEd6gMtZRCjS81g" target="_gzK2g-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gzLdnOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gzK2iOiaEd6gMtZRCjS81g" target="_gzK2ieiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">patternDefn</attribute>
    </edge>
    <edge id="_gzLdnOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gzK2ieiaEd6gMtZRCjS81g" target="_gzK2iOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gzLdouiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gzK2ieiaEd6gMtZRCjS81g" target="_gzK2jeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">body</attribute>
    </edge>
    <edge id="_gzLdouiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gzK2jeiaEd6gMtZRCjS81g" target="_gzK2ieiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gzLdq-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gzK2iuiaEd6gMtZRCjS81g" target="_gzK2jeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">term</attribute>
    </edge>
    <edge id="_gzLdq-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gzK2jeiaEd6gMtZRCjS81g" target="_gzK2iuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gzLdruiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gzK2iuiaEd6gMtZRCjS81g" target="_gzK2luiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">tgt</attribute>
    </edge>
    <edge id="_gzLdruiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gzK2luiaEd6gMtZRCjS81g" target="_gzK2iuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gzLdseiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gzK2i-iaEd6gMtZRCjS81g" target="_gzK2h-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">keys</attribute>
    </edge>
    <edge id="_gzLdseiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gzK2h-iaEd6gMtZRCjS81g" target="_gzK2i-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gzLdtOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gzK2i-iaEd6gMtZRCjS81g" target="_gzK2iuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">tRule</attribute>
    </edge>
    <edge id="_gzLdtOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gzK2iuiaEd6gMtZRCjS81g" target="_gzK2i-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gzLdt-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gzK2jOiaEd6gMtZRCjS81g" target="_gzK2jeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">term</attribute>
    </edge>
    <edge id="_gzLdt-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gzK2jeiaEd6gMtZRCjS81g" target="_gzK2jOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gzMEoOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gzK2keiaEd6gMtZRCjS81g" target="_gzK2jeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">term</attribute>
    </edge>
    <edge id="_gzMEoOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gzK2jeiaEd6gMtZRCjS81g" target="_gzK2keiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gzMEo-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gzK2luiaEd6gMtZRCjS81g" target="_gzK2nuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">arg</attribute>
    </edge>
    <edge id="_gzMEo-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gzK2nuiaEd6gMtZRCjS81g" target="_gzK2luiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gzMEuOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gzK2n-iaEd6gMtZRCjS81g" target="_gzK2nuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">arg</attribute>
    </edge>
    <edge id="_gzMEuOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gzK2nuiaEd6gMtZRCjS81g" target="_gzK2n-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gzLdluiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gzK2hOiaEd6gMtZRCjS81g" target="_gzK2heiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">varUse</attribute>
    </edge>
    <edge id="_gzLdluiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gzK2heiaEd6gMtZRCjS81g" target="_gzK2hOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gzLdmeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gzK2huiaEd6gMtZRCjS81g" target="_gzK2h-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">part</attribute>
    </edge>
    <edge id="_gzLdmeiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gzK2h-iaEd6gMtZRCjS81g" target="_gzK2huiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gzLdn-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gzK2ieiaEd6gMtZRCjS81g" target="_gzK2j-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">parameter</attribute>
    </edge>
    <edge id="_gzLdn-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gzK2j-iaEd6gMtZRCjS81g" target="_gzK2ieiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gzLdpeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gzK2iuiaEd6gMtZRCjS81g" target="_gzK2iuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">superseded</attribute>
    </edge>
    <edge id="_gzLdpeiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gzK2iuiaEd6gMtZRCjS81g" target="_gzK2iuiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gzLdqOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gzK2iuiaEd6gMtZRCjS81g" target="_gzK2iuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">extended</attribute>
    </edge>
    <edge id="_gzLdqOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gzK2iuiaEd6gMtZRCjS81g" target="_gzK2iuiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gzLduuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gzK2jOiaEd6gMtZRCjS81g" target="_gzK2j-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">parameter</attribute>
    </edge>
    <edge id="_gzLduuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gzK2j-iaEd6gMtZRCjS81g" target="_gzK2jOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gzLdveiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gzK2jeiaEd6gMtZRCjS81g" target="_gzK2kOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">context</attribute>
    </edge>
    <edge id="_gzLdveiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gzK2kOiaEd6gMtZRCjS81g" target="_gzK2jeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gzLdwOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gzK2juiaEd6gMtZRCjS81g" target="_gzK2juiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">superseder</attribute>
    </edge>
    <edge id="_gzLdwOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gzK2juiaEd6gMtZRCjS81g" target="_gzK2juiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gzLdw-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gzK2juiaEd6gMtZRCjS81g" target="_gzK2juiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">extended</attribute>
    </edge>
    <edge id="_gzLdw-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gzK2juiaEd6gMtZRCjS81g" target="_gzK2juiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gzMEpuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gzK2l-iaEd6gMtZRCjS81g" target="_gzK2mOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">tracking</attribute>
    </edge>
    <edge id="_gzMEpuiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gzK2mOiaEd6gMtZRCjS81g" target="_gzK2l-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gzMEqeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gzK2nOiaEd6gMtZRCjS81g" target="_gzK2nuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">typeName</attribute>
    </edge>
    <edge id="_gzMEqeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gzK2nuiaEd6gMtZRCjS81g" target="_gzK2nOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gzMErOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gzK2nOiaEd6gMtZRCjS81g" target="_gzK2nuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">instance</attribute>
    </edge>
    <edge id="_gzMErOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gzK2nuiaEd6gMtZRCjS81g" target="_gzK2nOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gzMEr-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gzK2neiaEd6gMtZRCjS81g" target="_gzK2nuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">lesser</attribute>
    </edge>
    <edge id="_gzMEr-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gzK2nuiaEd6gMtZRCjS81g" target="_gzK2neiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gzMEsuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gzK2neiaEd6gMtZRCjS81g" target="_gzK2nuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">instance</attribute>
    </edge>
    <edge id="_gzMEsuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gzK2nuiaEd6gMtZRCjS81g" target="_gzK2neiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gzMEteiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gzK2neiaEd6gMtZRCjS81g" target="_gzK2nuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">greater</attribute>
    </edge>
    <edge id="_gzMEteiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gzK2nuiaEd6gMtZRCjS81g" target="_gzK2neiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gzMEu-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gzK2o-iaEd6gMtZRCjS81g" target="_gzK2pOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">obj</attribute>
    </edge>
    <edge id="_gzMEu-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gzK2pOiaEd6gMtZRCjS81g" target="_gzK2o-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gzMrsOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gzK2heiaEd6gMtZRCjS81g" target="_gzK2nuiaEd6gMtZRCjS81g"/>
    <edge id="_gzMrsOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gzK2nuiaEd6gMtZRCjS81g" target="_gzK2heiaEd6gMtZRCjS81g"/>
    <edge id="_gzMrseiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gzK2iOiaEd6gMtZRCjS81g" target="_gzK2g-iaEd6gMtZRCjS81g"/>
    <edge id="_gzMrseiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gzK2g-iaEd6gMtZRCjS81g" target="_gzK2iOiaEd6gMtZRCjS81g"/>
    <edge id="_gzMrsuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gzK2ieiaEd6gMtZRCjS81g" target="_gzK2g-iaEd6gMtZRCjS81g"/>
    <edge id="_gzMrsuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gzK2g-iaEd6gMtZRCjS81g" target="_gzK2ieiaEd6gMtZRCjS81g"/>
    <edge id="_gzMrs-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gzK2iuiaEd6gMtZRCjS81g" target="_gzK2g-iaEd6gMtZRCjS81g"/>
    <edge id="_gzMrs-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gzK2g-iaEd6gMtZRCjS81g" target="_gzK2iuiaEd6gMtZRCjS81g"/>
    <edge id="_gzNSwOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gzK2i-iaEd6gMtZRCjS81g" target="_gzK2iOiaEd6gMtZRCjS81g"/>
    <edge id="_gzNSwOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gzK2iOiaEd6gMtZRCjS81g" target="_gzK2i-iaEd6gMtZRCjS81g"/>
    <edge id="_gzNSweiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gzK2jOiaEd6gMtZRCjS81g" target="_gzK2iOiaEd6gMtZRCjS81g"/>
    <edge id="_gzNSweiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gzK2iOiaEd6gMtZRCjS81g" target="_gzK2jOiaEd6gMtZRCjS81g"/>
    <edge id="_gzNSwuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gzK2juiaEd6gMtZRCjS81g" target="_gzK2hOiaEd6gMtZRCjS81g"/>
    <edge id="_gzNSwuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gzK2hOiaEd6gMtZRCjS81g" target="_gzK2juiaEd6gMtZRCjS81g"/>
    <edge id="_gzNSw-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gzK2j-iaEd6gMtZRCjS81g" target="_gzK2hOiaEd6gMtZRCjS81g"/>
    <edge id="_gzNSw-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gzK2hOiaEd6gMtZRCjS81g" target="_gzK2j-iaEd6gMtZRCjS81g"/>
    <edge id="_gzNSxOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gzK2kOiaEd6gMtZRCjS81g" target="_gzK2hOiaEd6gMtZRCjS81g"/>
    <edge id="_gzNSxOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gzK2hOiaEd6gMtZRCjS81g" target="_gzK2kOiaEd6gMtZRCjS81g"/>
    <edge id="_gzNSxeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gzK2keiaEd6gMtZRCjS81g" target="_gzK2jeiaEd6gMtZRCjS81g"/>
    <edge id="_gzNSxeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gzK2jeiaEd6gMtZRCjS81g" target="_gzK2keiaEd6gMtZRCjS81g"/>
    <edge id="_gzNSxuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gzK2kuiaEd6gMtZRCjS81g" target="_gzK2keiaEd6gMtZRCjS81g"/>
    <edge id="_gzNSxuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gzK2keiaEd6gMtZRCjS81g" target="_gzK2kuiaEd6gMtZRCjS81g"/>
    <edge id="_gzNSx-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gzK2k-iaEd6gMtZRCjS81g" target="_gzK2keiaEd6gMtZRCjS81g"/>
    <edge id="_gzNSx-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gzK2keiaEd6gMtZRCjS81g" target="_gzK2k-iaEd6gMtZRCjS81g"/>
    <edge id="_gzNSyOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gzK2lOiaEd6gMtZRCjS81g" target="_gzK2keiaEd6gMtZRCjS81g"/>
    <edge id="_gzNSyOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gzK2keiaEd6gMtZRCjS81g" target="_gzK2lOiaEd6gMtZRCjS81g"/>
    <edge id="_gzNSyeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gzK2leiaEd6gMtZRCjS81g" target="_gzK2keiaEd6gMtZRCjS81g"/>
    <edge id="_gzNSyeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gzK2keiaEd6gMtZRCjS81g" target="_gzK2leiaEd6gMtZRCjS81g"/>
    <edge id="_gzNSyuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gzK2luiaEd6gMtZRCjS81g" target="_gzK2jeiaEd6gMtZRCjS81g"/>
    <edge id="_gzNSyuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gzK2jeiaEd6gMtZRCjS81g" target="_gzK2luiaEd6gMtZRCjS81g"/>
    <edge id="_gzNSy-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gzK2l-iaEd6gMtZRCjS81g" target="_gzK2luiaEd6gMtZRCjS81g"/>
    <edge id="_gzNSy-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gzK2luiaEd6gMtZRCjS81g" target="_gzK2l-iaEd6gMtZRCjS81g"/>
    <edge id="_gzNSzOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gzK2meiaEd6gMtZRCjS81g" target="_gzK2luiaEd6gMtZRCjS81g"/>
    <edge id="_gzNSzOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gzK2luiaEd6gMtZRCjS81g" target="_gzK2meiaEd6gMtZRCjS81g"/>
    <edge id="_gzNSzeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gzK2muiaEd6gMtZRCjS81g" target="_gzK2luiaEd6gMtZRCjS81g"/>
    <edge id="_gzNSzeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gzK2luiaEd6gMtZRCjS81g" target="_gzK2muiaEd6gMtZRCjS81g"/>
    <edge id="_gzN50OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gzK2m-iaEd6gMtZRCjS81g" target="_gzK2luiaEd6gMtZRCjS81g"/>
    <edge id="_gzN50OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gzK2luiaEd6gMtZRCjS81g" target="_gzK2m-iaEd6gMtZRCjS81g"/>
    <edge id="_gzN50eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gzK2nOiaEd6gMtZRCjS81g" target="_gzK2muiaEd6gMtZRCjS81g"/>
    <edge id="_gzN50eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gzK2muiaEd6gMtZRCjS81g" target="_gzK2nOiaEd6gMtZRCjS81g"/>
    <edge id="_gzN50uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gzK2neiaEd6gMtZRCjS81g" target="_gzK2muiaEd6gMtZRCjS81g"/>
    <edge id="_gzN50uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gzK2muiaEd6gMtZRCjS81g" target="_gzK2neiaEd6gMtZRCjS81g"/>
    <edge id="_gzN50-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gzK2n-iaEd6gMtZRCjS81g" target="_gzK2nuiaEd6gMtZRCjS81g"/>
    <edge id="_gzN50-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gzK2nuiaEd6gMtZRCjS81g" target="_gzK2n-iaEd6gMtZRCjS81g"/>
    <edge id="_gzN51OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gzK2oOiaEd6gMtZRCjS81g" target="_gzK2n-iaEd6gMtZRCjS81g"/>
    <edge id="_gzN51OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gzK2n-iaEd6gMtZRCjS81g" target="_gzK2oOiaEd6gMtZRCjS81g"/>
    <edge id="_gzN51eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gzK2oeiaEd6gMtZRCjS81g" target="_gzK2n-iaEd6gMtZRCjS81g"/>
    <edge id="_gzN51eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gzK2n-iaEd6gMtZRCjS81g" target="_gzK2oeiaEd6gMtZRCjS81g"/>
    <edge id="_gzN51uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gzK2ouiaEd6gMtZRCjS81g" target="_gzK2n-iaEd6gMtZRCjS81g"/>
    <edge id="_gzN51uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gzK2n-iaEd6gMtZRCjS81g" target="_gzK2ouiaEd6gMtZRCjS81g"/>
    <edge id="_gzN51-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gzK2o-iaEd6gMtZRCjS81g" target="_gzK2nuiaEd6gMtZRCjS81g"/>
    <edge id="_gzN51-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gzK2nuiaEd6gMtZRCjS81g" target="_gzK2o-iaEd6gMtZRCjS81g"/>
    <edge id="_gzN52OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gzK2pOiaEd6gMtZRCjS81g" target="_gzK2nuiaEd6gMtZRCjS81g"/>
    <edge id="_gzN52OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gzK2nuiaEd6gMtZRCjS81g" target="_gzK2pOiaEd6gMtZRCjS81g"/>
    <edge id="_gzN52eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gzK2peiaEd6gMtZRCjS81g" target="_gzK2nuiaEd6gMtZRCjS81g"/>
    <edge id="_gzN52eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gzK2nuiaEd6gMtZRCjS81g" target="_gzK2peiaEd6gMtZRCjS81g"/>
    <edge id="_gzN52uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gzK2puiaEd6gMtZRCjS81g" target="_gzK2peiaEd6gMtZRCjS81g"/>
    <edge id="_gzN52uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gzK2peiaEd6gMtZRCjS81g" target="_gzK2puiaEd6gMtZRCjS81g"/>
    <edge id="_gzN52-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gzK2p-iaEd6gMtZRCjS81g" target="_gzK2peiaEd6gMtZRCjS81g"/>
    <edge id="_gzN52-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gzK2peiaEd6gMtZRCjS81g" target="_gzK2p-iaEd6gMtZRCjS81g"/>
    <edge id="_gzN53OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gzK2qOiaEd6gMtZRCjS81g" target="_gzK2peiaEd6gMtZRCjS81g"/>
    <edge id="_gzN53OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gzK2peiaEd6gMtZRCjS81g" target="_gzK2qOiaEd6gMtZRCjS81g"/>
    <edge id="_gzN53eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gzK2qeiaEd6gMtZRCjS81g" target="_gzK2peiaEd6gMtZRCjS81g"/>
    <edge id="_gzN53eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gzK2peiaEd6gMtZRCjS81g" target="_gzK2qeiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
