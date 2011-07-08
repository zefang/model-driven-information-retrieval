<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_gvQm4OiaEd6gMtZRCjS81g" projectName="WfMC">
    <node className="WorkflowProcessDefinition" id="_gvQm4-iaEd6gMtZRCjS81g"/>
    <node className="WorkflowApplicationDeclaration" id="_gvQm5OiaEd6gMtZRCjS81g"/>
    <node className="WorkflowRelevantData" id="_gvQm5eiaEd6gMtZRCjS81g"/>
    <node className="WorkflowParticipantSpecification" id="_gvQm5uiaEd6gMtZRCjS81g"/>
    <node className="WorkflowProcessActivity" id="_gvQm5-iaEd6gMtZRCjS81g"/>
    <node className="TransitionInformation" id="_gvQm6OiaEd6gMtZRCjS81g"/>
    <edge id="_gvQm6eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gvQm4-iaEd6gMtZRCjS81g" target="_gvQm5uiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">participantSpecificatons</attribute>
    </edge>
    <edge id="_gvQm6eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gvQm5uiaEd6gMtZRCjS81g" target="_gvQm4-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gvQm7OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gvQm4-iaEd6gMtZRCjS81g" target="_gvQm5eiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">revelantDatas</attribute>
    </edge>
    <edge id="_gvQm7OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gvQm5eiaEd6gMtZRCjS81g" target="_gvQm4-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gvQm7-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gvQm4-iaEd6gMtZRCjS81g" target="_gvQm5OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">applicationDeclarations</attribute>
    </edge>
    <edge id="_gvQm7-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gvQm5OiaEd6gMtZRCjS81g" target="_gvQm4-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gvQm8uiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gvQm4-iaEd6gMtZRCjS81g" target="_gvQm5-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">processActivities</attribute>
    </edge>
    <edge id="_gvQm8uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gvQm5-iaEd6gMtZRCjS81g" target="_gvQm4-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gvQm9eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gvQm4-iaEd6gMtZRCjS81g" target="_gvQm6OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">transitionInformations</attribute>
    </edge>
    <edge id="_gvQm9eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gvQm6OiaEd6gMtZRCjS81g" target="_gvQm4-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gvQm-OiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gvQm5OiaEd6gMtZRCjS81g" target="_gvQm5-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">processActivities</attribute>
    </edge>
    <edge id="_gvQm-OiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gvQm5-iaEd6gMtZRCjS81g" target="_gvQm5OiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gvQm--iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gvQm5OiaEd6gMtZRCjS81g" target="_gvQm5eiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">revelantDatas</attribute>
    </edge>
    <edge id="_gvQm--iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gvQm5eiaEd6gMtZRCjS81g" target="_gvQm5OiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gvQm_uiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gvQm5eiaEd6gMtZRCjS81g" target="_gvQm5-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">processActivities</attribute>
    </edge>
    <edge id="_gvQm_uiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gvQm5-iaEd6gMtZRCjS81g" target="_gvQm5eiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gvQnAeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gvQm5eiaEd6gMtZRCjS81g" target="_gvQm5uiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">participantSpecifications</attribute>
    </edge>
    <edge id="_gvQnAeiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gvQm5uiaEd6gMtZRCjS81g" target="_gvQm5eiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gvQnBOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gvQm5eiaEd6gMtZRCjS81g" target="_gvQm6OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">transitionInformations</attribute>
    </edge>
    <edge id="_gvQnBOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gvQm6OiaEd6gMtZRCjS81g" target="_gvQm5eiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gvQnB-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gvQm5uiaEd6gMtZRCjS81g" target="_gvQm5-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">processActivities</attribute>
    </edge>
    <edge id="_gvQnB-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gvQm5-iaEd6gMtZRCjS81g" target="_gvQm5uiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gvRN8OiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gvQm5-iaEd6gMtZRCjS81g" target="_gvQm6OiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">to_transitionInformation</attribute>
    </edge>
    <edge id="_gvRN8OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gvQm6OiaEd6gMtZRCjS81g" target="_gvQm5-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gvRN8-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gvQm5-iaEd6gMtZRCjS81g" target="_gvQm6OiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">from_transitionInformation</attribute>
    </edge>
    <edge id="_gvRN8-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gvQm6OiaEd6gMtZRCjS81g" target="_gvQm5-iaEd6gMtZRCjS81g" upperValue="1"/>
  </graph>
</graphml>
