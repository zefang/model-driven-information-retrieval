<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_eaBN0OiaEd6gMtZRCjS81g" projectName="IMSTransactionMessage">
    <node className="TwoByteField" id="_eaBN0-iaEd6gMtZRCjS81g"/>
    <node className="VariableLengthField" id="_eaBN1OiaEd6gMtZRCjS81g"/>
    <node className="IMSTransactionMessage" id="_eaBN1eiaEd6gMtZRCjS81g">
      <attribute>OIMAPrefixFormat</attribute>
      <attribute>standardFieldsFlag</attribute>
    </node>
    <node className="OIMAPrefix" id="_eaBN1uiaEd6gMtZRCjS81g"/>
    <node className="ControlData" id="_eaBN1-iaEd6gMtZRCjS81g"/>
    <node className="StateData" id="_eaBN2OiaEd6gMtZRCjS81g"/>
    <node className="SecurityData" id="_eaBN2eiaEd6gMtZRCjS81g"/>
    <node className="UserData" id="_eaBN2uiaEd6gMtZRCjS81g"/>
    <node className="StandardFields" id="_eaBN2-iaEd6gMtZRCjS81g"/>
    <node className="ApplicationData" id="_eaBN3OiaEd6gMtZRCjS81g"/>
    <node className="Field" id="_eaBN3eiaEd6gMtZRCjS81g"/>
    <node className="TDLangElement" id="_eaBN3uiaEd6gMtZRCjS81g"/>
    <edge id="_eaBN4eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eaBN1eiaEd6gMtZRCjS81g" target="_eaBN1uiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">OIMAPrefixComponent</attribute>
    </edge>
    <edge id="_eaBN4eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eaBN1uiaEd6gMtZRCjS81g" target="_eaBN1eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eaBN5OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eaBN1eiaEd6gMtZRCjS81g" target="_eaBN2-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">standardFieldComponent</attribute>
    </edge>
    <edge id="_eaBN5OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eaBN2-iaEd6gMtZRCjS81g" target="_eaBN1eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eaBN5-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eaBN1eiaEd6gMtZRCjS81g" target="_eaBN3OiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">messageComponent</attribute>
    </edge>
    <edge id="_eaBN5-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eaBN3OiaEd6gMtZRCjS81g" target="_eaBN1eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eaBN6uiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eaBN1uiaEd6gMtZRCjS81g" target="_eaBN1-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">controlDataComponent</attribute>
    </edge>
    <edge id="_eaBN6uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eaBN1-iaEd6gMtZRCjS81g" target="_eaBN1uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eaBN7eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eaBN1uiaEd6gMtZRCjS81g" target="_eaBN2OiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">stateDataComponent</attribute>
    </edge>
    <edge id="_eaBN7eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eaBN2OiaEd6gMtZRCjS81g" target="_eaBN1uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eaBN8OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eaBN1uiaEd6gMtZRCjS81g" target="_eaBN2eiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">securityDataComponent</attribute>
    </edge>
    <edge id="_eaBN8OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eaBN2eiaEd6gMtZRCjS81g" target="_eaBN1uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eaB04OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eaBN1uiaEd6gMtZRCjS81g" target="_eaBN2uiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">userDataComponent</attribute>
    </edge>
    <edge id="_eaB04OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eaBN2uiaEd6gMtZRCjS81g" target="_eaBN1uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eaB07-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eaBN3OiaEd6gMtZRCjS81g" target="_eaBN3eiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">fieldComponents</attribute>
    </edge>
    <edge id="_eaB07-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eaBN3eiaEd6gMtZRCjS81g" target="_eaBN3OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eaB04-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eaBN2-iaEd6gMtZRCjS81g" target="_eaBN0-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">length</attribute>
    </edge>
    <edge id="_eaB04-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eaBN0-iaEd6gMtZRCjS81g" target="_eaBN2-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eaB05uiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eaBN2-iaEd6gMtZRCjS81g" target="_eaBN0-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">reservedField</attribute>
    </edge>
    <edge id="_eaB05uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eaBN0-iaEd6gMtZRCjS81g" target="_eaBN2-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eaB06eiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eaBN2-iaEd6gMtZRCjS81g" target="_eaBN1OiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">transactionCode</attribute>
    </edge>
    <edge id="_eaB06eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eaBN1OiaEd6gMtZRCjS81g" target="_eaBN2-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eaB07OiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eaBN3OiaEd6gMtZRCjS81g" target="_eaBN3uiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">languageElements</attribute>
    </edge>
    <edge id="_eaB07OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eaBN3uiaEd6gMtZRCjS81g" target="_eaBN3OiaEd6gMtZRCjS81g" upperValue="1"/>
  </graph>
</graphml>
