<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_gn_hQOiaEd6gMtZRCjS81g" projectName="UseCases">
    <node className="Classifier" id="_goAIUuiaEd6gMtZRCjS81g"/>
    <node className="Instance" id="_goAIU-iaEd6gMtZRCjS81g"/>
    <node className="Actor" id="_goAIVOiaEd6gMtZRCjS81g"/>
    <node className="UseCase" id="_goAIVeiaEd6gMtZRCjS81g">
      <attribute>extensionPoint</attribute>
    </node>
    <node className="UseCaseInstance" id="_goAIVuiaEd6gMtZRCjS81g"/>
    <node className="RelationShip" id="_goAIV-iaEd6gMtZRCjS81g"/>
    <node className="Include" id="_goAIWOiaEd6gMtZRCjS81g"/>
    <node className="Extend" id="_goAIWeiaEd6gMtZRCjS81g"/>
    <node className="BooleanExpression" id="_goAIWuiaEd6gMtZRCjS81g">
      <attribute>value</attribute>
    </node>
    <node className="ModelElement" id="_goAIW-iaEd6gMtZRCjS81g"/>
    <node className="ExtensionPoint" id="_goAIXOiaEd6gMtZRCjS81g"/>
    <node className="LocationReference" id="_goAIXeiaEd6gMtZRCjS81g">
      <attribute>value</attribute>
    </node>
    <edge id="_goAIYeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_goAIUuiaEd6gMtZRCjS81g" target="_goAIU-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">instance</attribute>
    </edge>
    <edge id="_goAIYeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_goAIU-iaEd6gMtZRCjS81g" target="_goAIUuiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_goAIZOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_goAIVeiaEd6gMtZRCjS81g" target="_goAIWOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">includeAddition</attribute>
    </edge>
    <edge id="_goAIZOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_goAIWOiaEd6gMtZRCjS81g" target="_goAIVeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_goAIZ-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_goAIVeiaEd6gMtZRCjS81g" target="_goAIWOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">includeBase</attribute>
    </edge>
    <edge id="_goAIZ-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_goAIWOiaEd6gMtZRCjS81g" target="_goAIVeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_goAIauiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_goAIVeiaEd6gMtZRCjS81g" target="_goAIWeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">extendExtension</attribute>
    </edge>
    <edge id="_goAIauiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_goAIWeiaEd6gMtZRCjS81g" target="_goAIVeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_goAIbeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_goAIVeiaEd6gMtZRCjS81g" target="_goAIWeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">extendBase</attribute>
    </edge>
    <edge id="_goAIbeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_goAIWeiaEd6gMtZRCjS81g" target="_goAIVeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_goAIcOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_goAIVeiaEd6gMtZRCjS81g" target="_goAIXOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">extensionPoints</attribute>
    </edge>
    <edge id="_goAIcOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_goAIXOiaEd6gMtZRCjS81g" target="_goAIVeiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_goAIc-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_goAIWeiaEd6gMtZRCjS81g" target="_goAIWuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">condition</attribute>
    </edge>
    <edge id="_goAIc-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_goAIWuiaEd6gMtZRCjS81g" target="_goAIWeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_goAIduiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_goAIWeiaEd6gMtZRCjS81g" target="_goAIXOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">extensionPoint</attribute>
    </edge>
    <edge id="_goAIduiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_goAIXOiaEd6gMtZRCjS81g" target="_goAIWeiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_goAIeeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_goAIXOiaEd6gMtZRCjS81g" target="_goAIXeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">location</attribute>
    </edge>
    <edge id="_goAIeeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_goAIXeiaEd6gMtZRCjS81g" target="_goAIXOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_goAvYOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_goAIVOiaEd6gMtZRCjS81g" target="_goAIUuiaEd6gMtZRCjS81g"/>
    <edge id="_goAvYOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_goAIUuiaEd6gMtZRCjS81g" target="_goAIVOiaEd6gMtZRCjS81g"/>
    <edge id="_goAvYeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_goAIVeiaEd6gMtZRCjS81g" target="_goAIUuiaEd6gMtZRCjS81g"/>
    <edge id="_goAvYeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_goAIUuiaEd6gMtZRCjS81g" target="_goAIVeiaEd6gMtZRCjS81g"/>
    <edge id="_goAvYuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_goAIVuiaEd6gMtZRCjS81g" target="_goAIU-iaEd6gMtZRCjS81g"/>
    <edge id="_goAvYuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_goAIU-iaEd6gMtZRCjS81g" target="_goAIVuiaEd6gMtZRCjS81g"/>
    <edge id="_goAvY-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_goAIWOiaEd6gMtZRCjS81g" target="_goAIV-iaEd6gMtZRCjS81g"/>
    <edge id="_goAvY-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_goAIV-iaEd6gMtZRCjS81g" target="_goAIWOiaEd6gMtZRCjS81g"/>
    <edge id="_goAvZOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_goAIWeiaEd6gMtZRCjS81g" target="_goAIV-iaEd6gMtZRCjS81g"/>
    <edge id="_goAvZOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_goAIV-iaEd6gMtZRCjS81g" target="_goAIWeiaEd6gMtZRCjS81g"/>
    <edge id="_goAvZeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_goAIXOiaEd6gMtZRCjS81g" target="_goAIW-iaEd6gMtZRCjS81g"/>
    <edge id="_goAvZeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_goAIW-iaEd6gMtZRCjS81g" target="_goAIXOiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
