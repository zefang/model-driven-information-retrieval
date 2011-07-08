<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_eAvLIOiaEd6gMtZRCjS81g" projectName="DoDAF">
    <node className="Element" id="_eAvLI-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>description</attribute>
      <attribute>view</attribute>
    </node>
    <node className="DoDAFModel" id="_eAvLJOiaEd6gMtZRCjS81g"/>
    <node className="Document" id="_eAvLJeiaEd6gMtZRCjS81g">
      <attribute>type</attribute>
    </node>
    <node className="AMSpecification" id="_eAvLJuiaEd6gMtZRCjS81g"/>
    <node className="AMSpecificationElement" id="_eAvLJ-iaEd6gMtZRCjS81g"/>
    <node className="PAExchangeRequirement" id="_eAvLKOiaEd6gMtZRCjS81g"/>
    <node className="ArchitectureDocument" id="_eAvLKeiaEd6gMtZRCjS81g"/>
    <node className="IE" id="_eAvLKuiaEd6gMtZRCjS81g"/>
    <node className="AMIERole" id="_eAvLK-iaEd6gMtZRCjS81g"/>
    <node className="Control" id="_eAvLLOiaEd6gMtZRCjS81g">
      <attribute>source</attribute>
      <attribute>destination</attribute>
    </node>
    <node className="Input" id="_eAvLLeiaEd6gMtZRCjS81g">
      <attribute>source</attribute>
      <attribute>destination</attribute>
      <attribute>information</attribute>
    </node>
    <node className="Output" id="_eAvLLuiaEd6gMtZRCjS81g">
      <attribute>source</attribute>
      <attribute>destination</attribute>
      <attribute>information</attribute>
    </node>
    <node className="Mechanism" id="_eAvLL-iaEd6gMtZRCjS81g">
      <attribute>source</attribute>
      <attribute>destination</attribute>
      <attribute>resourceType</attribute>
    </node>
    <node className="MechanismSystem" id="_eAvLMOiaEd6gMtZRCjS81g"/>
    <node className="MechanismReference" id="_eAvLMeiaEd6gMtZRCjS81g"/>
    <node className="MechanismFacility" id="_eAvLMuiaEd6gMtZRCjS81g"/>
    <node className="InformationAssetDocument" id="_eAvLM-iaEd6gMtZRCjS81g"/>
    <node className="AMPA" id="_eAvLNOiaEd6gMtZRCjS81g"/>
    <node className="PACapability" id="_eAvLNeiaEd6gMtZRCjS81g"/>
    <node className="PA" id="_eAvLNuiaEd6gMtZRCjS81g"/>
    <node className="AM" id="_eAvLN-iaEd6gMtZRCjS81g">
      <attribute>type</attribute>
    </node>
    <node className="InformationAsset" id="_eAvLOOiaEd6gMtZRCjS81g"/>
    <node className="Task" id="_eAvLOeiaEd6gMtZRCjS81g">
      <attribute>levelIdentifier</attribute>
      <attribute>references</attribute>
      <attribute>cost</attribute>
    </node>
    <node className="PATask" id="_eAvLOuiaEd6gMtZRCjS81g"/>
    <node className="Organization" id="_eAvLO-iaEd6gMtZRCjS81g"/>
    <node className="OrganizationType" id="_eAvLPOiaEd6gMtZRCjS81g"/>
    <node className="OperationalRole" id="_eAvLPeiaEd6gMtZRCjS81g"/>
    <node className="Occupation" id="_eAvLPuiaEd6gMtZRCjS81g"/>
    <node className="PersonType" id="_eAvLP-iaEd6gMtZRCjS81g"/>
    <node className="Skill" id="_eAvLQOiaEd6gMtZRCjS81g"/>
    <node className="DOSCR" id="_eAvLQeiaEd6gMtZRCjS81g"/>
    <edge id="_eAvyNuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eAvLJOiaEd6gMtZRCjS81g" target="_eAvLJeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">document</attribute>
    </edge>
    <edge id="_eAvyNuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eAvLJeiaEd6gMtZRCjS81g" target="_eAvLJOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eAvyOeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eAvLJOiaEd6gMtZRCjS81g" target="_eAvLN-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">am</attribute>
    </edge>
    <edge id="_eAvyOeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eAvLN-iaEd6gMtZRCjS81g" target="_eAvLJOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eAvyPOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eAvLJOiaEd6gMtZRCjS81g" target="_eAvLOeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">task</attribute>
    </edge>
    <edge id="_eAvyPOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eAvLOeiaEd6gMtZRCjS81g" target="_eAvLJOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eAvyP-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eAvLJOiaEd6gMtZRCjS81g" target="_eAvLM-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">iaDocument</attribute>
    </edge>
    <edge id="_eAvyP-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eAvLM-iaEd6gMtZRCjS81g" target="_eAvLJOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eAvyQuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eAvLJOiaEd6gMtZRCjS81g" target="_eAvLJuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">amSpecification</attribute>
    </edge>
    <edge id="_eAvyQuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eAvLJuiaEd6gMtZRCjS81g" target="_eAvLJOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eAvyReiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eAvLJOiaEd6gMtZRCjS81g" target="_eAvLQeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">doscr</attribute>
    </edge>
    <edge id="_eAvyReiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eAvLQeiaEd6gMtZRCjS81g" target="_eAvLJOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eAvySOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eAvLJOiaEd6gMtZRCjS81g" target="_eAvLPOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">organizationType</attribute>
    </edge>
    <edge id="_eAvySOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eAvLPOiaEd6gMtZRCjS81g" target="_eAvLJOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eAvyTuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eAvLJeiaEd6gMtZRCjS81g" target="_eAvLKeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">records</attribute>
    </edge>
    <edge id="_eAvyTuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eAvLKeiaEd6gMtZRCjS81g" target="_eAvLJeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eAvyUeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eAvLJeiaEd6gMtZRCjS81g" target="_eAvLKuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">isTheReferenceFor</attribute>
    </edge>
    <edge id="_eAvyUeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eAvLKuiaEd6gMtZRCjS81g" target="_eAvLJeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eAvyVOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eAvLJeiaEd6gMtZRCjS81g" target="_eAvLNuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">isThePrimaryReferenceFor</attribute>
    </edge>
    <edge id="_eAvyVOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eAvLNuiaEd6gMtZRCjS81g" target="_eAvLJeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eAvyV-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eAvLJuiaEd6gMtZRCjS81g" target="_eAvLJ-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">isSpecifiedUsing</attribute>
    </edge>
    <edge id="_eAvyV-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eAvLJ-iaEd6gMtZRCjS81g" target="_eAvLJuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eAwZS-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eAvLNOiaEd6gMtZRCjS81g" target="_eAvLK-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">defines</attribute>
    </edge>
    <edge id="_eAwZS-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eAvLK-iaEd6gMtZRCjS81g" target="_eAvLNOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eAwZTuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eAvLNuiaEd6gMtZRCjS81g" target="_eAvLKOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">isTheProducerFor</attribute>
    </edge>
    <edge id="_eAwZTuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eAvLKOiaEd6gMtZRCjS81g" target="_eAvLNuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eAwZUeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eAvLNuiaEd6gMtZRCjS81g" target="_eAvLKOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">isTheConsumerFor</attribute>
    </edge>
    <edge id="_eAwZUeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eAvLKOiaEd6gMtZRCjS81g" target="_eAvLNuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eAwZV-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eAvLNuiaEd6gMtZRCjS81g" target="_eAvLNeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">has</attribute>
    </edge>
    <edge id="_eAwZV-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eAvLNeiaEd6gMtZRCjS81g" target="_eAvLNuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eAwZY-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eAvLN-iaEd6gMtZRCjS81g" target="_eAvLNOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">includes</attribute>
    </edge>
    <edge id="_eAwZY-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eAvLNOiaEd6gMtZRCjS81g" target="_eAvLN-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eAwZaeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eAvLOOiaEd6gMtZRCjS81g" target="_eAvLNeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">isDescribedUsing</attribute>
    </edge>
    <edge id="_eAwZaeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eAvLNeiaEd6gMtZRCjS81g" target="_eAvLOOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eAxAXOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eAvLPOiaEd6gMtZRCjS81g" target="_eAvLO-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">isTheTypeOf</attribute>
    </edge>
    <edge id="_eAxAXOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eAvLO-iaEd6gMtZRCjS81g" target="_eAvLPOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eAxAX-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eAvLPOiaEd6gMtZRCjS81g" target="_eAvLMeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">isCitedAs</attribute>
    </edge>
    <edge id="_eAxAX-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eAvLMeiaEd6gMtZRCjS81g" target="_eAvLPOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eAxAYuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eAvLPeiaEd6gMtZRCjS81g" target="_eAvLMeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">isCitedAs</attribute>
    </edge>
    <edge id="_eAxAYuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eAvLMeiaEd6gMtZRCjS81g" target="_eAvLPeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eAxAZeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eAvLPuiaEd6gMtZRCjS81g" target="_eAvLPeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">mayBeCitedForOR</attribute>
    </edge>
    <edge id="_eAxAZeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eAvLPeiaEd6gMtZRCjS81g" target="_eAvLPuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eAxAaOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eAvLPuiaEd6gMtZRCjS81g" target="_eAvLP-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">mayBeCitedForPT</attribute>
    </edge>
    <edge id="_eAxAaOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eAvLP-iaEd6gMtZRCjS81g" target="_eAvLPuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eAxAa-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eAvLP-iaEd6gMtZRCjS81g" target="_eAvLPeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">mayBeCitedFor</attribute>
    </edge>
    <edge id="_eAxAa-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eAvLPeiaEd6gMtZRCjS81g" target="_eAvLP-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eAxAbuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eAvLP-iaEd6gMtZRCjS81g" target="_eAvLQOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">can</attribute>
    </edge>
    <edge id="_eAxAbuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eAvLQOiaEd6gMtZRCjS81g" target="_eAvLP-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eAxAceiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eAvLQOiaEd6gMtZRCjS81g" target="_eAvLPeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">mayBeCitedFor</attribute>
    </edge>
    <edge id="_eAxAceiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eAvLPeiaEd6gMtZRCjS81g" target="_eAvLQOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eAxAdOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eAvLQeiaEd6gMtZRCjS81g" target="_eAvLPuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">mayBeAn</attribute>
    </edge>
    <edge id="_eAxAdOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eAvLPuiaEd6gMtZRCjS81g" target="_eAvLQeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eAxAd-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eAvLQeiaEd6gMtZRCjS81g" target="_eAvLP-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">appliesTo</attribute>
    </edge>
    <edge id="_eAxAd-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eAvLP-iaEd6gMtZRCjS81g" target="_eAvLQeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eAxAeuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eAvLQeiaEd6gMtZRCjS81g" target="_eAvLPeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">mayBeCitedFor</attribute>
    </edge>
    <edge id="_eAxAeuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eAvLPeiaEd6gMtZRCjS81g" target="_eAvLQeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eAvyS-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eAvLJeiaEd6gMtZRCjS81g" target="_eAvLM-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">cites</attribute>
    </edge>
    <edge id="_eAvyS-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eAvLM-iaEd6gMtZRCjS81g" target="_eAvLJeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eAvyWuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eAvLJ-iaEd6gMtZRCjS81g" target="_eAvLKOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">subject</attribute>
    </edge>
    <edge id="_eAvyWuiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_eAvLKOiaEd6gMtZRCjS81g" target="_eAvLJ-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_eAvyXeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eAvLKuiaEd6gMtZRCjS81g" target="_eAvLK-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">isAssociatedWith</attribute>
    </edge>
    <edge id="_eAvyXeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eAvLK-iaEd6gMtZRCjS81g" target="_eAvLKuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eAvyYOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eAvLKuiaEd6gMtZRCjS81g" target="_eAvLKuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">isOrdinateOf</attribute>
    </edge>
    <edge id="_eAvyYOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_eAvLKuiaEd6gMtZRCjS81g" target="_eAvLKuiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_eAwZQuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eAvLK-iaEd6gMtZRCjS81g" target="_eAvLNOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">defines</attribute>
    </edge>
    <edge id="_eAwZQuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eAvLNOiaEd6gMtZRCjS81g" target="_eAvLK-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eAwZReiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eAvLLeiaEd6gMtZRCjS81g" target="_eAvLLuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">isTheInputThatIsDefinedBy</attribute>
    </edge>
    <edge id="_eAwZReiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eAvLLuiaEd6gMtZRCjS81g" target="_eAvLLeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eAwZSOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eAvLNOiaEd6gMtZRCjS81g" target="_eAvLNOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">isOrdinateOf</attribute>
    </edge>
    <edge id="_eAwZSOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_eAvLNOiaEd6gMtZRCjS81g" target="_eAvLNOiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_eAwZVOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eAvLNuiaEd6gMtZRCjS81g" target="_eAvLNuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">isParentFor</attribute>
    </edge>
    <edge id="_eAwZVOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_eAvLNuiaEd6gMtZRCjS81g" target="_eAvLNuiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_eAwZWuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eAvLNuiaEd6gMtZRCjS81g" target="_eAvLNOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">isIncludedIn</attribute>
    </edge>
    <edge id="_eAwZWuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eAvLNOiaEd6gMtZRCjS81g" target="_eAvLNuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eAwZXeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eAvLNuiaEd6gMtZRCjS81g" target="_eAvLOuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">correspondsTo</attribute>
    </edge>
    <edge id="_eAwZXeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eAvLOuiaEd6gMtZRCjS81g" target="_eAvLNuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eAwZYOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eAvLN-iaEd6gMtZRCjS81g" target="_eAvLJuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">specifies</attribute>
    </edge>
    <edge id="_eAwZYOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eAvLJuiaEd6gMtZRCjS81g" target="_eAvLN-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eAwZZuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eAvLN-iaEd6gMtZRCjS81g" target="_eAvLOuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">paTask</attribute>
    </edge>
    <edge id="_eAwZZuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eAvLOuiaEd6gMtZRCjS81g" target="_eAvLN-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eAwZbOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eAvLOOiaEd6gMtZRCjS81g" target="_eAvLM-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">isCitedIn</attribute>
    </edge>
    <edge id="_eAwZbOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eAvLM-iaEd6gMtZRCjS81g" target="_eAvLOOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eAwZb-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eAvLOuiaEd6gMtZRCjS81g" target="_eAvLOOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">isCitedBy</attribute>
    </edge>
    <edge id="_eAwZb-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eAvLOOiaEd6gMtZRCjS81g" target="_eAvLOuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eAwZcuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eAvLO-iaEd6gMtZRCjS81g" target="_eAvLOOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">supplies</attribute>
    </edge>
    <edge id="_eAwZcuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eAvLOOiaEd6gMtZRCjS81g" target="_eAvLO-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eAxAUOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eAvLO-iaEd6gMtZRCjS81g" target="_eAvLOOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">providesStewardshipFor</attribute>
    </edge>
    <edge id="_eAxAUOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eAvLOOiaEd6gMtZRCjS81g" target="_eAvLO-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eAxAU-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eAvLO-iaEd6gMtZRCjS81g" target="_eAvLOOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">owns</attribute>
    </edge>
    <edge id="_eAxAU-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eAvLOOiaEd6gMtZRCjS81g" target="_eAvLO-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eAxAVuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eAvLO-iaEd6gMtZRCjS81g" target="_eAvLKuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">develops</attribute>
    </edge>
    <edge id="_eAxAVuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eAvLKuiaEd6gMtZRCjS81g" target="_eAvLO-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eAxAWeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eAvLO-iaEd6gMtZRCjS81g" target="_eAvLMeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">isCitedAs</attribute>
    </edge>
    <edge id="_eAxAWeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eAvLMeiaEd6gMtZRCjS81g" target="_eAvLO-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eAyOcOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eAvLJOiaEd6gMtZRCjS81g" target="_eAvLI-iaEd6gMtZRCjS81g"/>
    <edge id="_eAyOcOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eAvLI-iaEd6gMtZRCjS81g" target="_eAvLJOiaEd6gMtZRCjS81g"/>
    <edge id="_eAyOceiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eAvLJeiaEd6gMtZRCjS81g" target="_eAvLI-iaEd6gMtZRCjS81g"/>
    <edge id="_eAyOceiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eAvLI-iaEd6gMtZRCjS81g" target="_eAvLJeiaEd6gMtZRCjS81g"/>
    <edge id="_eAyOcuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eAvLJuiaEd6gMtZRCjS81g" target="_eAvLJeiaEd6gMtZRCjS81g"/>
    <edge id="_eAyOcuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eAvLJeiaEd6gMtZRCjS81g" target="_eAvLJuiaEd6gMtZRCjS81g"/>
    <edge id="_eAyOc-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eAvLJ-iaEd6gMtZRCjS81g" target="_eAvLI-iaEd6gMtZRCjS81g"/>
    <edge id="_eAyOc-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eAvLI-iaEd6gMtZRCjS81g" target="_eAvLJ-iaEd6gMtZRCjS81g"/>
    <edge id="_eAyOdOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eAvLKOiaEd6gMtZRCjS81g" target="_eAvLI-iaEd6gMtZRCjS81g"/>
    <edge id="_eAyOdOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eAvLI-iaEd6gMtZRCjS81g" target="_eAvLKOiaEd6gMtZRCjS81g"/>
    <edge id="_eAyOdeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eAvLKeiaEd6gMtZRCjS81g" target="_eAvLI-iaEd6gMtZRCjS81g"/>
    <edge id="_eAyOdeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eAvLI-iaEd6gMtZRCjS81g" target="_eAvLKeiaEd6gMtZRCjS81g"/>
    <edge id="_eAyOduiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eAvLKuiaEd6gMtZRCjS81g" target="_eAvLI-iaEd6gMtZRCjS81g"/>
    <edge id="_eAyOduiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eAvLI-iaEd6gMtZRCjS81g" target="_eAvLKuiaEd6gMtZRCjS81g"/>
    <edge id="_eAyOd-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eAvLK-iaEd6gMtZRCjS81g" target="_eAvLI-iaEd6gMtZRCjS81g"/>
    <edge id="_eAyOd-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eAvLI-iaEd6gMtZRCjS81g" target="_eAvLK-iaEd6gMtZRCjS81g"/>
    <edge id="_eAyOeOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eAvLLOiaEd6gMtZRCjS81g" target="_eAvLK-iaEd6gMtZRCjS81g"/>
    <edge id="_eAyOeOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eAvLK-iaEd6gMtZRCjS81g" target="_eAvLLOiaEd6gMtZRCjS81g"/>
    <edge id="_eAyOeeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eAvLLeiaEd6gMtZRCjS81g" target="_eAvLK-iaEd6gMtZRCjS81g"/>
    <edge id="_eAyOeeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eAvLK-iaEd6gMtZRCjS81g" target="_eAvLLeiaEd6gMtZRCjS81g"/>
    <edge id="_eAy1gOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eAvLLuiaEd6gMtZRCjS81g" target="_eAvLK-iaEd6gMtZRCjS81g"/>
    <edge id="_eAy1gOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eAvLK-iaEd6gMtZRCjS81g" target="_eAvLLuiaEd6gMtZRCjS81g"/>
    <edge id="_eAy1geiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eAvLL-iaEd6gMtZRCjS81g" target="_eAvLK-iaEd6gMtZRCjS81g"/>
    <edge id="_eAy1geiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eAvLK-iaEd6gMtZRCjS81g" target="_eAvLL-iaEd6gMtZRCjS81g"/>
    <edge id="_eAy1guiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eAvLMOiaEd6gMtZRCjS81g" target="_eAvLL-iaEd6gMtZRCjS81g"/>
    <edge id="_eAy1guiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eAvLL-iaEd6gMtZRCjS81g" target="_eAvLMOiaEd6gMtZRCjS81g"/>
    <edge id="_eAy1g-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eAvLMeiaEd6gMtZRCjS81g" target="_eAvLL-iaEd6gMtZRCjS81g"/>
    <edge id="_eAy1g-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eAvLL-iaEd6gMtZRCjS81g" target="_eAvLMeiaEd6gMtZRCjS81g"/>
    <edge id="_eAy1hOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eAvLMuiaEd6gMtZRCjS81g" target="_eAvLL-iaEd6gMtZRCjS81g"/>
    <edge id="_eAy1hOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eAvLL-iaEd6gMtZRCjS81g" target="_eAvLMuiaEd6gMtZRCjS81g"/>
    <edge id="_eAy1heiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eAvLM-iaEd6gMtZRCjS81g" target="_eAvLI-iaEd6gMtZRCjS81g"/>
    <edge id="_eAy1heiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eAvLI-iaEd6gMtZRCjS81g" target="_eAvLM-iaEd6gMtZRCjS81g"/>
    <edge id="_eAy1huiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eAvLNOiaEd6gMtZRCjS81g" target="_eAvLI-iaEd6gMtZRCjS81g"/>
    <edge id="_eAy1huiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eAvLI-iaEd6gMtZRCjS81g" target="_eAvLNOiaEd6gMtZRCjS81g"/>
    <edge id="_eAy1h-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eAvLNeiaEd6gMtZRCjS81g" target="_eAvLI-iaEd6gMtZRCjS81g"/>
    <edge id="_eAy1h-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eAvLI-iaEd6gMtZRCjS81g" target="_eAvLNeiaEd6gMtZRCjS81g"/>
    <edge id="_eAy1iOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eAvLNuiaEd6gMtZRCjS81g" target="_eAvLI-iaEd6gMtZRCjS81g"/>
    <edge id="_eAy1iOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eAvLI-iaEd6gMtZRCjS81g" target="_eAvLNuiaEd6gMtZRCjS81g"/>
    <edge id="_eAy1ieiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eAvLN-iaEd6gMtZRCjS81g" target="_eAvLOOiaEd6gMtZRCjS81g"/>
    <edge id="_eAy1ieiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eAvLOOiaEd6gMtZRCjS81g" target="_eAvLN-iaEd6gMtZRCjS81g"/>
    <edge id="_eAzckOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eAvLOOiaEd6gMtZRCjS81g" target="_eAvLI-iaEd6gMtZRCjS81g"/>
    <edge id="_eAzckOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eAvLI-iaEd6gMtZRCjS81g" target="_eAvLOOiaEd6gMtZRCjS81g"/>
    <edge id="_eAzckeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eAvLOeiaEd6gMtZRCjS81g" target="_eAvLI-iaEd6gMtZRCjS81g"/>
    <edge id="_eAzckeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eAvLI-iaEd6gMtZRCjS81g" target="_eAvLOeiaEd6gMtZRCjS81g"/>
    <edge id="_eAzckuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eAvLOuiaEd6gMtZRCjS81g" target="_eAvLOeiaEd6gMtZRCjS81g"/>
    <edge id="_eAzckuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eAvLOeiaEd6gMtZRCjS81g" target="_eAvLOuiaEd6gMtZRCjS81g"/>
    <edge id="_eAzck-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eAvLO-iaEd6gMtZRCjS81g" target="_eAvLI-iaEd6gMtZRCjS81g"/>
    <edge id="_eAzck-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eAvLI-iaEd6gMtZRCjS81g" target="_eAvLO-iaEd6gMtZRCjS81g"/>
    <edge id="_eAzclOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eAvLPOiaEd6gMtZRCjS81g" target="_eAvLI-iaEd6gMtZRCjS81g"/>
    <edge id="_eAzclOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eAvLI-iaEd6gMtZRCjS81g" target="_eAvLPOiaEd6gMtZRCjS81g"/>
    <edge id="_eAzcleiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eAvLPeiaEd6gMtZRCjS81g" target="_eAvLI-iaEd6gMtZRCjS81g"/>
    <edge id="_eAzcleiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eAvLI-iaEd6gMtZRCjS81g" target="_eAvLPeiaEd6gMtZRCjS81g"/>
    <edge id="_eAzcluiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eAvLPuiaEd6gMtZRCjS81g" target="_eAvLI-iaEd6gMtZRCjS81g"/>
    <edge id="_eAzcluiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eAvLI-iaEd6gMtZRCjS81g" target="_eAvLPuiaEd6gMtZRCjS81g"/>
    <edge id="_eAzcl-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eAvLP-iaEd6gMtZRCjS81g" target="_eAvLI-iaEd6gMtZRCjS81g"/>
    <edge id="_eAzcl-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eAvLI-iaEd6gMtZRCjS81g" target="_eAvLP-iaEd6gMtZRCjS81g"/>
    <edge id="_eAzcmOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eAvLQOiaEd6gMtZRCjS81g" target="_eAvLI-iaEd6gMtZRCjS81g"/>
    <edge id="_eAzcmOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eAvLI-iaEd6gMtZRCjS81g" target="_eAvLQOiaEd6gMtZRCjS81g"/>
    <edge id="_eAzcmeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eAvLQeiaEd6gMtZRCjS81g" target="_eAvLI-iaEd6gMtZRCjS81g"/>
    <edge id="_eAzcmeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eAvLI-iaEd6gMtZRCjS81g" target="_eAvLQeiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
