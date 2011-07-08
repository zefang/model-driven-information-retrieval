<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_hE2cYOiaEd6gMtZRCjS81g" projectName="ebXML">
    <node className="MultyPartyCollaboration" id="_hE2cY-iaEd6gMtZRCjS81g"/>
    <node className="BusinessPartnerRole" id="_hE2cZOiaEd6gMtZRCjS81g"/>
    <node className="Performs" id="_hE2cZeiaEd6gMtZRCjS81g"/>
    <node className="AuthorizedRole" id="_hE2cZuiaEd6gMtZRCjS81g">
      <attribute>isInitiator</attribute>
    </node>
    <node className="Transaction" id="_hE2cZ-iaEd6gMtZRCjS81g">
      <attribute>onInitiation</attribute>
      <attribute>conditionGuard</attribute>
      <attribute>conditionExpression</attribute>
    </node>
    <node className="BinaryCollaboration" id="_hE2caOiaEd6gMtZRCjS81g">
      <attribute>pattern</attribute>
      <attribute>timeToPerform</attribute>
      <attribute>preCondition</attribute>
      <attribute>postCondition</attribute>
      <attribute>beginsWhen</attribute>
      <attribute>endsWhen</attribute>
    </node>
    <node className="BusinessState" id="_hE2caeiaEd6gMtZRCjS81g"/>
    <node className="Start" id="_hE2cauiaEd6gMtZRCjS81g"/>
    <node className="Fork" id="_hE2ca-iaEd6gMtZRCjS81g">
      <attribute>waitForAll</attribute>
    </node>
    <node className="Join" id="_hE2cbOiaEd6gMtZRCjS81g"/>
    <node className="CompletionState" id="_hE2cbeiaEd6gMtZRCjS81g">
      <attribute>guardCondition</attribute>
    </node>
    <node className="Failure" id="_hE2cbuiaEd6gMtZRCjS81g"/>
    <node className="Success" id="_hE2cb-iaEd6gMtZRCjS81g"/>
    <node className="BusinessActivity" id="_hE2ccOiaEd6gMtZRCjS81g"/>
    <node className="BusinessTransactionActivity" id="_hE2cceiaEd6gMtZRCjS81g">
      <attribute>timeToPerform</attribute>
      <attribute>isConcurrent</attribute>
      <attribute>isLegallyBinding</attribute>
    </node>
    <node className="CollaborationActivity" id="_hE2ccuiaEd6gMtZRCjS81g"/>
    <node className="BusinessTransaction" id="_hE2cc-iaEd6gMtZRCjS81g">
      <attribute>pattern</attribute>
      <attribute>isGuaranteedDeliveryRequired</attribute>
      <attribute>preCondition</attribute>
      <attribute>postCondition</attribute>
      <attribute>beginsWhen</attribute>
      <attribute>endsWhen</attribute>
    </node>
    <node className="BusinessAction" id="_hE2cdOiaEd6gMtZRCjS81g">
      <attribute>isIntelligiblecheckRequired</attribute>
      <attribute>isAuthorizationRequired</attribute>
      <attribute>timeToAcknowledgeReceipt</attribute>
      <attribute>isNonRepudiationRequired</attribute>
      <attribute>isNonRepudiationOfRecipientRequired</attribute>
    </node>
    <node className="RequestingBusinessActivity" id="_hE2cdeiaEd6gMtZRCjS81g">
      <attribute>timeToAcknowledgeAcceptance</attribute>
    </node>
    <node className="RespondingBusinessActivity" id="_hE2cduiaEd6gMtZRCjS81g"/>
    <node className="DocumentSecurity" id="_hE2cd-iaEd6gMtZRCjS81g">
      <attribute>isConfidential</attribute>
      <attribute>isTamperProof</attribute>
      <attribute>isAuthenticated</attribute>
    </node>
    <node className="DocumentEnvelope" id="_hE2ceOiaEd6gMtZRCjS81g">
      <attribute>isPositiveResponse</attribute>
    </node>
    <node className="Attachment" id="_hE2ceeiaEd6gMtZRCjS81g">
      <attribute>mimeType</attribute>
      <attribute>specification</attribute>
      <attribute>version</attribute>
    </node>
    <node className="BusinessDocument" id="_hE2ceuiaEd6gMtZRCjS81g">
      <attribute>specificationLocation</attribute>
      <attribute>specificationElement</attribute>
      <attribute>conditionExpression</attribute>
    </node>
    <edge id="_hE3DduiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_hE2cY-iaEd6gMtZRCjS81g" target="_hE2cZOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">partners</attribute>
    </edge>
    <edge id="_hE3DduiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_hE2cZOiaEd6gMtZRCjS81g" target="_hE2cY-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_hE3DeeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_hE2cZOiaEd6gMtZRCjS81g" target="_hE2cZ-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">transition</attribute>
    </edge>
    <edge id="_hE3DeeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_hE2cZ-iaEd6gMtZRCjS81g" target="_hE2cZOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_hE3DfOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_hE2cZOiaEd6gMtZRCjS81g" target="_hE2cZeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">performers</attribute>
    </edge>
    <edge id="_hE3DfOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_hE2cZeiaEd6gMtZRCjS81g" target="_hE2cZOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_hE3DiOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_hE2caOiaEd6gMtZRCjS81g" target="_hE2cZeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">roles</attribute>
    </edge>
    <edge id="_hE3DiOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_hE2cZeiaEd6gMtZRCjS81g" target="_hE2caOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_hE3Di-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_hE2caOiaEd6gMtZRCjS81g" target="_hE2cZ-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">transitions</attribute>
    </edge>
    <edge id="_hE3Di-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_hE2cZ-iaEd6gMtZRCjS81g" target="_hE2caOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_hE3DjuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_hE2caOiaEd6gMtZRCjS81g" target="_hE2caeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">states</attribute>
    </edge>
    <edge id="_hE3DjuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_hE2caeiaEd6gMtZRCjS81g" target="_hE2caOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_hE3DneiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_hE2cc-iaEd6gMtZRCjS81g" target="_hE2cdeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">requester</attribute>
    </edge>
    <edge id="_hE3DneiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_hE2cdeiaEd6gMtZRCjS81g" target="_hE2cc-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_hE3DoOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_hE2cc-iaEd6gMtZRCjS81g" target="_hE2cduiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">responder</attribute>
    </edge>
    <edge id="_hE3DoOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_hE2cduiaEd6gMtZRCjS81g" target="_hE2cc-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_hE3qheiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_hE2ceOiaEd6gMtZRCjS81g" target="_hE2ceeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">attachements</attribute>
    </edge>
    <edge id="_hE3qheiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_hE2ceeiaEd6gMtZRCjS81g" target="_hE2ceOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_hE3Df-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_hE2cZeiaEd6gMtZRCjS81g" target="_hE2cZuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">role</attribute>
    </edge>
    <edge id="_hE3Df-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_hE2cZuiaEd6gMtZRCjS81g" target="_hE2cZeiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_hE3DguiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_hE2cZ-iaEd6gMtZRCjS81g" target="_hE2caeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">from</attribute>
    </edge>
    <edge id="_hE3DguiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_hE2caeiaEd6gMtZRCjS81g" target="_hE2cZ-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_hE3DheiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_hE2cZ-iaEd6gMtZRCjS81g" target="_hE2caeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">to</attribute>
    </edge>
    <edge id="_hE3DheiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_hE2caeiaEd6gMtZRCjS81g" target="_hE2cZ-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_hE3DkeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_hE2caeiaEd6gMtZRCjS81g" target="_hE2cZuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">from</attribute>
    </edge>
    <edge id="_hE3DkeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_hE2cZuiaEd6gMtZRCjS81g" target="_hE2caeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_hE3DlOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_hE2caeiaEd6gMtZRCjS81g" target="_hE2cZuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">to</attribute>
    </edge>
    <edge id="_hE3DlOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_hE2cZuiaEd6gMtZRCjS81g" target="_hE2caeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_hE3Dl-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_hE2cceiaEd6gMtZRCjS81g" target="_hE2cc-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">use</attribute>
    </edge>
    <edge id="_hE3Dl-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_hE2cc-iaEd6gMtZRCjS81g" target="_hE2cceiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_hE3DmuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_hE2ccuiaEd6gMtZRCjS81g" target="_hE2caOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">use</attribute>
    </edge>
    <edge id="_hE3DmuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_hE2caOiaEd6gMtZRCjS81g" target="_hE2ccuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_hE3Do-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_hE2cdeiaEd6gMtZRCjS81g" target="_hE2ceOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">documentEnvelope</attribute>
    </edge>
    <edge id="_hE3Do-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_hE2ceOiaEd6gMtZRCjS81g" target="_hE2cdeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_hE3qguiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_hE2cduiaEd6gMtZRCjS81g" target="_hE2ceOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">documentEnvelope</attribute>
    </edge>
    <edge id="_hE3qguiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_hE2ceOiaEd6gMtZRCjS81g" target="_hE2cduiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_hE3qiOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_hE2ceOiaEd6gMtZRCjS81g" target="_hE2ceuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">document</attribute>
    </edge>
    <edge id="_hE3qiOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_hE2ceuiaEd6gMtZRCjS81g" target="_hE2ceOiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_hE3qi-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_hE2ceeiaEd6gMtZRCjS81g" target="_hE2ceuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">document</attribute>
    </edge>
    <edge id="_hE3qi-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_hE2ceuiaEd6gMtZRCjS81g" target="_hE2ceeiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_hE4RkOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_hE2cauiaEd6gMtZRCjS81g" target="_hE2caeiaEd6gMtZRCjS81g"/>
    <edge id="_hE4RkOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_hE2caeiaEd6gMtZRCjS81g" target="_hE2cauiaEd6gMtZRCjS81g"/>
    <edge id="_hE4RkeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_hE2ca-iaEd6gMtZRCjS81g" target="_hE2caeiaEd6gMtZRCjS81g"/>
    <edge id="_hE4RkeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_hE2caeiaEd6gMtZRCjS81g" target="_hE2ca-iaEd6gMtZRCjS81g"/>
    <edge id="_hE4RkuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_hE2cbOiaEd6gMtZRCjS81g" target="_hE2caeiaEd6gMtZRCjS81g"/>
    <edge id="_hE4RkuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_hE2caeiaEd6gMtZRCjS81g" target="_hE2cbOiaEd6gMtZRCjS81g"/>
    <edge id="_hE4Rk-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_hE2cbeiaEd6gMtZRCjS81g" target="_hE2caeiaEd6gMtZRCjS81g"/>
    <edge id="_hE4Rk-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_hE2caeiaEd6gMtZRCjS81g" target="_hE2cbeiaEd6gMtZRCjS81g"/>
    <edge id="_hE4RlOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_hE2cbuiaEd6gMtZRCjS81g" target="_hE2cbeiaEd6gMtZRCjS81g"/>
    <edge id="_hE4RlOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_hE2cbeiaEd6gMtZRCjS81g" target="_hE2cbuiaEd6gMtZRCjS81g"/>
    <edge id="_hE4RleiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_hE2cb-iaEd6gMtZRCjS81g" target="_hE2cbeiaEd6gMtZRCjS81g"/>
    <edge id="_hE4RleiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_hE2cbeiaEd6gMtZRCjS81g" target="_hE2cb-iaEd6gMtZRCjS81g"/>
    <edge id="_hE4RluiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_hE2ccOiaEd6gMtZRCjS81g" target="_hE2caeiaEd6gMtZRCjS81g"/>
    <edge id="_hE4RluiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_hE2caeiaEd6gMtZRCjS81g" target="_hE2ccOiaEd6gMtZRCjS81g"/>
    <edge id="_hE44oOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_hE2cceiaEd6gMtZRCjS81g" target="_hE2ccOiaEd6gMtZRCjS81g"/>
    <edge id="_hE44oOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_hE2ccOiaEd6gMtZRCjS81g" target="_hE2cceiaEd6gMtZRCjS81g"/>
    <edge id="_hE44oeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_hE2ccuiaEd6gMtZRCjS81g" target="_hE2ccOiaEd6gMtZRCjS81g"/>
    <edge id="_hE44oeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_hE2ccOiaEd6gMtZRCjS81g" target="_hE2ccuiaEd6gMtZRCjS81g"/>
    <edge id="_hE44ouiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_hE2cdeiaEd6gMtZRCjS81g" target="_hE2cdOiaEd6gMtZRCjS81g"/>
    <edge id="_hE44ouiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_hE2cdOiaEd6gMtZRCjS81g" target="_hE2cdeiaEd6gMtZRCjS81g"/>
    <edge id="_hE44o-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_hE2cduiaEd6gMtZRCjS81g" target="_hE2cdOiaEd6gMtZRCjS81g"/>
    <edge id="_hE44o-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_hE2cdOiaEd6gMtZRCjS81g" target="_hE2cduiaEd6gMtZRCjS81g"/>
    <edge id="_hE44pOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_hE2ceOiaEd6gMtZRCjS81g" target="_hE2cd-iaEd6gMtZRCjS81g"/>
    <edge id="_hE44pOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_hE2cd-iaEd6gMtZRCjS81g" target="_hE2ceOiaEd6gMtZRCjS81g"/>
    <edge id="_hE44peiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_hE2ceeiaEd6gMtZRCjS81g" target="_hE2cd-iaEd6gMtZRCjS81g"/>
    <edge id="_hE44peiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_hE2cd-iaEd6gMtZRCjS81g" target="_hE2ceeiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
