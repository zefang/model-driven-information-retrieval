<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_fRoLQOiaEd6gMtZRCjS81g" projectName="SimplfiedMiningMart">
    <node className="ModelElement" id="_fRoLROiaEd6gMtZRCjS81g"/>
    <node className="Classifier" id="_fRoLReiaEd6gMtZRCjS81g"/>
    <node className="StructuralFeature" id="_fRoLRuiaEd6gMtZRCjS81g"/>
    <node className="Class" id="_fRoLR-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="DataType" id="_fRoLSOiaEd6gMtZRCjS81g"/>
    <node className="Attribute" id="_fRoLSeiaEd6gMtZRCjS81g"/>
    <node className="Column" id="_fRoLSuiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="ColumnSet" id="_fRoLS-iaEd6gMtZRCjS81g">
      <attribute>number</attribute>
      <attribute>file</attribute>
      <attribute>dbConnectString</attribute>
      <attribute>user</attribute>
    </node>
    <node className="ColumnStatistics" id="_fRoyUOiaEd6gMtZRCjS81g">
      <attribute>unique</attribute>
      <attribute>missing</attribute>
      <attribute>min</attribute>
      <attribute>max</attribute>
      <attribute>average</attribute>
      <attribute>standarDeviation</attribute>
      <attribute>distributionValue</attribute>
      <attribute>distributionCount</attribute>
      <attribute>distributionMin</attribute>
      <attribute>distributionMax</attribute>
    </node>
    <node className="ColumnSetStatistics" id="_fRoyUeiaEd6gMtZRCjS81g">
      <attribute>allNumber</attribute>
      <attribute>ordinalNumber</attribute>
      <attribute>nominalNumber</attribute>
      <attribute>timeNumber</attribute>
    </node>
    <node className="Snapshot" id="_fRoyUuiaEd6gMtZRCjS81g"/>
    <node className="Table" id="_fRoyU-iaEd6gMtZRCjS81g"/>
    <node className="View" id="_fRoyVOiaEd6gMtZRCjS81g"/>
    <node className="Key" id="_fRoyVeiaEd6gMtZRCjS81g">
      <attribute>isUsedForIndex</attribute>
    </node>
    <node className="ForeignKey" id="_fRoyVuiaEd6gMtZRCjS81g"/>
    <node className="PrimaryKey" id="_fRoyV-iaEd6gMtZRCjS81g"/>
    <node className="Concept" id="_fRoyWOiaEd6gMtZRCjS81g">
      <attribute>subConceptRestriction</attribute>
    </node>
    <node className="RelationShip" id="_fRoyWeiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>subRelationShipRestriction</attribute>
      <attribute>defined</attribute>
    </node>
    <node className="FeatureAttribute" id="_fRoyWuiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>relevanceForMining</attribute>
    </node>
    <node className="BaseAttribute" id="_fRoyW-iaEd6gMtZRCjS81g"/>
    <node className="MultiColumnFeature" id="_fRoyXOiaEd6gMtZRCjS81g"/>
    <node className="Value" id="_fRoyXeiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="UserInput" id="_fRoyXuiaEd6gMtZRCjS81g"/>
    <node className="Ordinal" id="_fRoyX-iaEd6gMtZRCjS81g"/>
    <node className="Scalar" id="_fRoyYOiaEd6gMtZRCjS81g"/>
    <node className="Time" id="_fRoyYeiaEd6gMtZRCjS81g"/>
    <node className="Binary" id="_fRoyYuiaEd6gMtZRCjS81g"/>
    <node className="Categorial" id="_fRoyY-iaEd6gMtZRCjS81g"/>
    <node className="KeyAttribute" id="_fRoyZOiaEd6gMtZRCjS81g"/>
    <node className="TimeGroup" id="_fRoyZeiaEd6gMtZRCjS81g"/>
    <node className="Spatial" id="_fRoyZuiaEd6gMtZRCjS81g"/>
    <node className="Constant" id="_fRoyZ-iaEd6gMtZRCjS81g"/>
    <node className="RoleRestriction" id="_fRoyaOiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>min</attribute>
      <attribute>max</attribute>
    </node>
    <node className="DomainDataType" id="_fRoyaeiaEd6gMtZRCjS81g"/>
    <node className="Nominal" id="_fRoyauiaEd6gMtZRCjS81g"/>
    <node className="Parameter" id="_fRoya-iaEd6gMtZRCjS81g"/>
    <edge id="_fRoyi-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fRoLR-iaEd6gMtZRCjS81g" target="_fRoLSeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">attributes</attribute>
    </edge>
    <edge id="_fRoyi-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fRoLSeiaEd6gMtZRCjS81g" target="_fRoLR-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fRpZjeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fRoyWuiaEd6gMtZRCjS81g" target="_fRoyWOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">belongsToConcept</attribute>
    </edge>
    <edge id="_fRpZjeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fRoyWOiaEd6gMtZRCjS81g" target="_fRoyWuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fRpZluiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fRoyXOiaEd6gMtZRCjS81g" target="_fRoyW-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">consitsOfBaseAttributes</attribute>
    </edge>
    <edge id="_fRpZluiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fRoyW-iaEd6gMtZRCjS81g" target="_fRoyXOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fRqAdOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fRoyXeiaEd6gMtZRCjS81g" target="_fRoyXuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">belongsToUserInput</attribute>
    </edge>
    <edge id="_fRqAdOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fRoyXuiaEd6gMtZRCjS81g" target="_fRoyXeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fRoyjuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fRoLSOiaEd6gMtZRCjS81g" target="_fRoLSeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">attribute</attribute>
    </edge>
    <edge id="_fRoyjuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fRoLSeiaEd6gMtZRCjS81g" target="_fRoLSOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fRoykeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fRoLSuiaEd6gMtZRCjS81g" target="_fRoLSOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">dataType</attribute>
    </edge>
    <edge id="_fRoykeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fRoLSOiaEd6gMtZRCjS81g" target="_fRoLSuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fRpZYOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fRoLSuiaEd6gMtZRCjS81g" target="_fRoyVeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">keys</attribute>
    </edge>
    <edge id="_fRpZYOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fRoyVeiaEd6gMtZRCjS81g" target="_fRoLSuiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_fRpZY-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fRoLSuiaEd6gMtZRCjS81g" target="_fRoLS-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">belongsToColumnSet</attribute>
    </edge>
    <edge id="_fRpZY-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fRoLS-iaEd6gMtZRCjS81g" target="_fRoLSuiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_fRpZZuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fRoLSuiaEd6gMtZRCjS81g" target="_fRoyW-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">corespondsToBaseAttribute</attribute>
    </edge>
    <edge id="_fRpZZuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fRoyW-iaEd6gMtZRCjS81g" target="_fRoLSuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fRpZaeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fRoLS-iaEd6gMtZRCjS81g" target="_fRoyVeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">hasKey</attribute>
    </edge>
    <edge id="_fRpZaeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fRoyVeiaEd6gMtZRCjS81g" target="_fRoLS-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fRpZbOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fRoLS-iaEd6gMtZRCjS81g" target="_fRoyWOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">correspondsToConcept</attribute>
    </edge>
    <edge id="_fRpZbOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_fRoyWOiaEd6gMtZRCjS81g" target="_fRoLS-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fRpZb-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fRoLS-iaEd6gMtZRCjS81g" target="_fRoyWeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">correspondsToRelationShip</attribute>
    </edge>
    <edge id="_fRpZb-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_fRoyWeiaEd6gMtZRCjS81g" target="_fRoLS-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fRpZcuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fRoyUOiaEd6gMtZRCjS81g" target="_fRoLSuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">forColumn</attribute>
    </edge>
    <edge id="_fRpZcuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fRoLSuiaEd6gMtZRCjS81g" target="_fRoyUOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fRpZdeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fRoyUeiaEd6gMtZRCjS81g" target="_fRoLS-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">forColumnSet</attribute>
    </edge>
    <edge id="_fRpZdeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fRoLS-iaEd6gMtZRCjS81g" target="_fRoyUeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fRpZeOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fRoyVuiaEd6gMtZRCjS81g" target="_fRoyU-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">isConnectionTo</attribute>
    </edge>
    <edge id="_fRpZeOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fRoyU-iaEd6gMtZRCjS81g" target="_fRoyVuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fRpZe-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fRoyVuiaEd6gMtZRCjS81g" target="_fRoyWeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">correspondsToRelationShip</attribute>
    </edge>
    <edge id="_fRpZe-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fRoyWeiaEd6gMtZRCjS81g" target="_fRoyVuiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_fRpZfuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fRoyWOiaEd6gMtZRCjS81g" target="_fRoyWOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">isA</attribute>
    </edge>
    <edge id="_fRpZfuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fRoyWOiaEd6gMtZRCjS81g" target="_fRoyWOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fRpZgeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fRoyWOiaEd6gMtZRCjS81g" target="_fRoyWeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">FromConcept</attribute>
    </edge>
    <edge id="_fRpZgeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fRoyWeiaEd6gMtZRCjS81g" target="_fRoyWOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fRpZhOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fRoyWOiaEd6gMtZRCjS81g" target="_fRoyWeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">ToConcept</attribute>
    </edge>
    <edge id="_fRpZhOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fRoyWeiaEd6gMtZRCjS81g" target="_fRoyWOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fRpZh-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fRoyWeiaEd6gMtZRCjS81g" target="_fRoyWeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">isA</attribute>
    </edge>
    <edge id="_fRpZh-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fRoyWeiaEd6gMtZRCjS81g" target="_fRoyWeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fRpZiuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fRoyWuiaEd6gMtZRCjS81g" target="_fRoLSOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">attributeType</attribute>
    </edge>
    <edge id="_fRpZiuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fRoLSOiaEd6gMtZRCjS81g" target="_fRoyWuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fRpZkOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fRoyWuiaEd6gMtZRCjS81g" target="_fRoLSuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">correspondsToColumns</attribute>
    </edge>
    <edge id="_fRpZkOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fRoLSuiaEd6gMtZRCjS81g" target="_fRoyWuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fRpZk-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fRoyW-iaEd6gMtZRCjS81g" target="_fRoyaeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">domainDataType</attribute>
    </edge>
    <edge id="_fRpZk-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fRoyaeiaEd6gMtZRCjS81g" target="_fRoyW-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fRqAceiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fRoyXeiaEd6gMtZRCjS81g" target="_fRoyaeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">domainDataType</attribute>
    </edge>
    <edge id="_fRqAceiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fRoyaeiaEd6gMtZRCjS81g" target="_fRoyXeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fRqAd-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fRoyXuiaEd6gMtZRCjS81g" target="_fRoyXeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">containsValues</attribute>
    </edge>
    <edge id="_fRqAd-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fRoyXeiaEd6gMtZRCjS81g" target="_fRoyXuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fRqAeuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fRoyaOiaEd6gMtZRCjS81g" target="_fRoyWeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">restrictionForRelationShip</attribute>
    </edge>
    <edge id="_fRqAeuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fRoyWeiaEd6gMtZRCjS81g" target="_fRoyaOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fRqAfeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fRoyaOiaEd6gMtZRCjS81g" target="_fRoyWOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">restrictionForConcept</attribute>
    </edge>
    <edge id="_fRqAfeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fRoyWOiaEd6gMtZRCjS81g" target="_fRoyaOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fRqAgOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fRoyaOiaEd6gMtZRCjS81g" target="_fRoyWOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">restrictionToConcept</attribute>
    </edge>
    <edge id="_fRqAgOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fRoyWOiaEd6gMtZRCjS81g" target="_fRoyaOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fRqAg-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fRoyaOiaEd6gMtZRCjS81g" target="_fRoyWOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">belongsToConcept</attribute>
    </edge>
    <edge id="_fRqAg-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fRoyWOiaEd6gMtZRCjS81g" target="_fRoyaOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fRqngOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fRoLReiaEd6gMtZRCjS81g" target="_fRoLROiaEd6gMtZRCjS81g"/>
    <edge id="_fRqngOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fRoLROiaEd6gMtZRCjS81g" target="_fRoLReiaEd6gMtZRCjS81g"/>
    <edge id="_fRqngeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fRoLRuiaEd6gMtZRCjS81g" target="_fRoLROiaEd6gMtZRCjS81g"/>
    <edge id="_fRqngeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fRoLROiaEd6gMtZRCjS81g" target="_fRoLRuiaEd6gMtZRCjS81g"/>
    <edge id="_fRqnguiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fRoLR-iaEd6gMtZRCjS81g" target="_fRoLReiaEd6gMtZRCjS81g"/>
    <edge id="_fRqnguiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fRoLReiaEd6gMtZRCjS81g" target="_fRoLR-iaEd6gMtZRCjS81g"/>
    <edge id="_fRqng-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fRoLSOiaEd6gMtZRCjS81g" target="_fRoLReiaEd6gMtZRCjS81g"/>
    <edge id="_fRqng-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fRoLReiaEd6gMtZRCjS81g" target="_fRoLSOiaEd6gMtZRCjS81g"/>
    <edge id="_fRqnhOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fRoLSeiaEd6gMtZRCjS81g" target="_fRoLRuiaEd6gMtZRCjS81g"/>
    <edge id="_fRqnhOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fRoLRuiaEd6gMtZRCjS81g" target="_fRoLSeiaEd6gMtZRCjS81g"/>
    <edge id="_fRqnheiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fRoLSuiaEd6gMtZRCjS81g" target="_fRoLSeiaEd6gMtZRCjS81g"/>
    <edge id="_fRqnheiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fRoLSeiaEd6gMtZRCjS81g" target="_fRoLSuiaEd6gMtZRCjS81g"/>
    <edge id="_fRrOkOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fRoLS-iaEd6gMtZRCjS81g" target="_fRoLR-iaEd6gMtZRCjS81g"/>
    <edge id="_fRrOkOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fRoLR-iaEd6gMtZRCjS81g" target="_fRoLS-iaEd6gMtZRCjS81g"/>
    <edge id="_fRrOkeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fRoyUeiaEd6gMtZRCjS81g" target="_fRoLROiaEd6gMtZRCjS81g"/>
    <edge id="_fRrOkeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fRoLROiaEd6gMtZRCjS81g" target="_fRoyUeiaEd6gMtZRCjS81g"/>
    <edge id="_fRrOkuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fRoyUuiaEd6gMtZRCjS81g" target="_fRoLS-iaEd6gMtZRCjS81g"/>
    <edge id="_fRrOkuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fRoLS-iaEd6gMtZRCjS81g" target="_fRoyUuiaEd6gMtZRCjS81g"/>
    <edge id="_fRrOk-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fRoyU-iaEd6gMtZRCjS81g" target="_fRoLS-iaEd6gMtZRCjS81g"/>
    <edge id="_fRrOk-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fRoLS-iaEd6gMtZRCjS81g" target="_fRoyU-iaEd6gMtZRCjS81g"/>
    <edge id="_fRrOlOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fRoyVOiaEd6gMtZRCjS81g" target="_fRoLS-iaEd6gMtZRCjS81g"/>
    <edge id="_fRrOlOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fRoLS-iaEd6gMtZRCjS81g" target="_fRoyVOiaEd6gMtZRCjS81g"/>
    <edge id="_fRrOleiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fRoyVeiaEd6gMtZRCjS81g" target="_fRoLROiaEd6gMtZRCjS81g"/>
    <edge id="_fRrOleiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fRoLROiaEd6gMtZRCjS81g" target="_fRoyVeiaEd6gMtZRCjS81g"/>
    <edge id="_fRrOluiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fRoyVuiaEd6gMtZRCjS81g" target="_fRoyVeiaEd6gMtZRCjS81g"/>
    <edge id="_fRrOluiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fRoyVeiaEd6gMtZRCjS81g" target="_fRoyVuiaEd6gMtZRCjS81g"/>
    <edge id="_fRrOl-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fRoyV-iaEd6gMtZRCjS81g" target="_fRoyVeiaEd6gMtZRCjS81g"/>
    <edge id="_fRrOl-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fRoyVeiaEd6gMtZRCjS81g" target="_fRoyV-iaEd6gMtZRCjS81g"/>
    <edge id="_fRrOmOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fRoyWOiaEd6gMtZRCjS81g" target="_fRoLR-iaEd6gMtZRCjS81g"/>
    <edge id="_fRrOmOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fRoLR-iaEd6gMtZRCjS81g" target="_fRoyWOiaEd6gMtZRCjS81g"/>
    <edge id="_fRrOmeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fRoyWOiaEd6gMtZRCjS81g" target="_fRoya-iaEd6gMtZRCjS81g"/>
    <edge id="_fRrOmeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fRoya-iaEd6gMtZRCjS81g" target="_fRoyWOiaEd6gMtZRCjS81g"/>
    <edge id="_fRrOmuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fRoyWeiaEd6gMtZRCjS81g" target="_fRoLROiaEd6gMtZRCjS81g"/>
    <edge id="_fRrOmuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fRoLROiaEd6gMtZRCjS81g" target="_fRoyWeiaEd6gMtZRCjS81g"/>
    <edge id="_fRrOm-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fRoyWeiaEd6gMtZRCjS81g" target="_fRoya-iaEd6gMtZRCjS81g"/>
    <edge id="_fRrOm-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fRoya-iaEd6gMtZRCjS81g" target="_fRoyWeiaEd6gMtZRCjS81g"/>
    <edge id="_fRr1oOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fRoyWuiaEd6gMtZRCjS81g" target="_fRoLSeiaEd6gMtZRCjS81g"/>
    <edge id="_fRr1oOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fRoLSeiaEd6gMtZRCjS81g" target="_fRoyWuiaEd6gMtZRCjS81g"/>
    <edge id="_fRr1oeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fRoyW-iaEd6gMtZRCjS81g" target="_fRoyWuiaEd6gMtZRCjS81g"/>
    <edge id="_fRr1oeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fRoyWuiaEd6gMtZRCjS81g" target="_fRoyW-iaEd6gMtZRCjS81g"/>
    <edge id="_fRr1ouiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fRoyXOiaEd6gMtZRCjS81g" target="_fRoyWuiaEd6gMtZRCjS81g"/>
    <edge id="_fRr1ouiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fRoyWuiaEd6gMtZRCjS81g" target="_fRoyXOiaEd6gMtZRCjS81g"/>
    <edge id="_fRr1o-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fRoyXeiaEd6gMtZRCjS81g" target="_fRoLSeiaEd6gMtZRCjS81g"/>
    <edge id="_fRr1o-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fRoLSeiaEd6gMtZRCjS81g" target="_fRoyXeiaEd6gMtZRCjS81g"/>
    <edge id="_fRr1pOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fRoyXeiaEd6gMtZRCjS81g" target="_fRoya-iaEd6gMtZRCjS81g"/>
    <edge id="_fRr1pOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fRoya-iaEd6gMtZRCjS81g" target="_fRoyXeiaEd6gMtZRCjS81g"/>
    <edge id="_fRr1peiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fRoyXuiaEd6gMtZRCjS81g" target="_fRoLR-iaEd6gMtZRCjS81g"/>
    <edge id="_fRr1peiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fRoLR-iaEd6gMtZRCjS81g" target="_fRoyXuiaEd6gMtZRCjS81g"/>
    <edge id="_fRr1puiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fRoyX-iaEd6gMtZRCjS81g" target="_fRoyaeiaEd6gMtZRCjS81g"/>
    <edge id="_fRr1puiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fRoyaeiaEd6gMtZRCjS81g" target="_fRoyX-iaEd6gMtZRCjS81g"/>
    <edge id="_fRr1p-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fRoyYOiaEd6gMtZRCjS81g" target="_fRoyX-iaEd6gMtZRCjS81g"/>
    <edge id="_fRr1p-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fRoyX-iaEd6gMtZRCjS81g" target="_fRoyYOiaEd6gMtZRCjS81g"/>
    <edge id="_fRr1qOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fRoyYeiaEd6gMtZRCjS81g" target="_fRoyYOiaEd6gMtZRCjS81g"/>
    <edge id="_fRr1qOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fRoyYOiaEd6gMtZRCjS81g" target="_fRoyYeiaEd6gMtZRCjS81g"/>
    <edge id="_fRr1qeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fRoyYuiaEd6gMtZRCjS81g" target="_fRoyYOiaEd6gMtZRCjS81g"/>
    <edge id="_fRr1qeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fRoyYOiaEd6gMtZRCjS81g" target="_fRoyYuiaEd6gMtZRCjS81g"/>
    <edge id="_fRr1quiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fRoyYuiaEd6gMtZRCjS81g" target="_fRoyauiaEd6gMtZRCjS81g"/>
    <edge id="_fRr1quiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fRoyauiaEd6gMtZRCjS81g" target="_fRoyYuiaEd6gMtZRCjS81g"/>
    <edge id="_fRr1q-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fRoyY-iaEd6gMtZRCjS81g" target="_fRoyauiaEd6gMtZRCjS81g"/>
    <edge id="_fRr1q-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fRoyauiaEd6gMtZRCjS81g" target="_fRoyY-iaEd6gMtZRCjS81g"/>
    <edge id="_fRr1rOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fRoyZOiaEd6gMtZRCjS81g" target="_fRoyauiaEd6gMtZRCjS81g"/>
    <edge id="_fRr1rOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fRoyauiaEd6gMtZRCjS81g" target="_fRoyZOiaEd6gMtZRCjS81g"/>
    <edge id="_fRr1reiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fRoyZeiaEd6gMtZRCjS81g" target="_fRoyZOiaEd6gMtZRCjS81g"/>
    <edge id="_fRr1reiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fRoyZOiaEd6gMtZRCjS81g" target="_fRoyZeiaEd6gMtZRCjS81g"/>
    <edge id="_fRr1ruiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fRoyZuiaEd6gMtZRCjS81g" target="_fRoyZOiaEd6gMtZRCjS81g"/>
    <edge id="_fRr1ruiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fRoyZOiaEd6gMtZRCjS81g" target="_fRoyZuiaEd6gMtZRCjS81g"/>
    <edge id="_fRr1r-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fRoyZ-iaEd6gMtZRCjS81g" target="_fRoyauiaEd6gMtZRCjS81g"/>
    <edge id="_fRr1r-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fRoyauiaEd6gMtZRCjS81g" target="_fRoyZ-iaEd6gMtZRCjS81g"/>
    <edge id="_fRscsOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fRoyaOiaEd6gMtZRCjS81g" target="_fRoLSeiaEd6gMtZRCjS81g"/>
    <edge id="_fRscsOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fRoLSeiaEd6gMtZRCjS81g" target="_fRoyaOiaEd6gMtZRCjS81g"/>
    <edge id="_fRscseiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fRoyaeiaEd6gMtZRCjS81g" target="_fRoLSOiaEd6gMtZRCjS81g"/>
    <edge id="_fRscseiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fRoLSOiaEd6gMtZRCjS81g" target="_fRoyaeiaEd6gMtZRCjS81g"/>
    <edge id="_fRscsuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fRoyauiaEd6gMtZRCjS81g" target="_fRoyaeiaEd6gMtZRCjS81g"/>
    <edge id="_fRscsuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fRoyaeiaEd6gMtZRCjS81g" target="_fRoyauiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
