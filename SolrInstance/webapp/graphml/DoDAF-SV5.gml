<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_eCgswOiaEd6gMtZRCjS81g" projectName="DoDAF">
    <node className="Element" id="_eCgsw-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>description</attribute>
      <attribute>view</attribute>
    </node>
    <node className="DoDAFModel" id="_eCgsxOiaEd6gMtZRCjS81g"/>
    <node className="Document" id="_eCgsxeiaEd6gMtZRCjS81g">
      <attribute>type</attribute>
    </node>
    <node className="SystemFunctionTraceabilityMatrix" id="_eCgsxuiaEd6gMtZRCjS81g"/>
    <node className="SystemFunctionTraceabilityElement" id="_eCgsx-iaEd6gMtZRCjS81g">
      <attribute>supportStatusCode</attribute>
    </node>
    <node className="SystemDocument" id="_eCgsyOiaEd6gMtZRCjS81g"/>
    <node className="ArchitectureDocument" id="_eCgsyeiaEd6gMtZRCjS81g"/>
    <node className="PA" id="_eCgsyuiaEd6gMtZRCjS81g"/>
    <node className="SystemFunction" id="_eCgsy-iaEd6gMtZRCjS81g"/>
    <node className="SystemPA" id="_eChT0OiaEd6gMtZRCjS81g"/>
    <node className="SoftwareApplicationProcedurePA" id="_eChT0eiaEd6gMtZRCjS81g"/>
    <node className="AM" id="_eChT0uiaEd6gMtZRCjS81g">
      <attribute>type</attribute>
    </node>
    <node className="InformationAsset" id="_eChT0-iaEd6gMtZRCjS81g"/>
    <node className="AMPA" id="_eChT1OiaEd6gMtZRCjS81g"/>
    <node className="System" id="_eChT1eiaEd6gMtZRCjS81g"/>
    <node className="Task" id="_eChT1uiaEd6gMtZRCjS81g">
      <attribute>levelIdentifier</attribute>
      <attribute>references</attribute>
      <attribute>cost</attribute>
    </node>
    <node className="ArchitectureTask" id="_eChT1-iaEd6gMtZRCjS81g"/>
    <node className="OperationalCapabilityTask" id="_eChT2OiaEd6gMtZRCjS81g"/>
    <node className="SystemOperationalCapabilityTask" id="_eChT2eiaEd6gMtZRCjS81g"/>
    <node className="PATask" id="_eChT2uiaEd6gMtZRCjS81g"/>
    <node className="Capability" id="_eChT2-iaEd6gMtZRCjS81g"/>
    <node className="CapabilityDocument" id="_eChT3OiaEd6gMtZRCjS81g"/>
    <node className="SystemCapability" id="_eChT3eiaEd6gMtZRCjS81g"/>
    <node className="NetworkCapability" id="_eChT3uiaEd6gMtZRCjS81g"/>
    <node className="NodeLinkCapability" id="_eChT3-iaEd6gMtZRCjS81g"/>
    <node className="MaterielItemCapabilityNorm" id="_eChT4OiaEd6gMtZRCjS81g"/>
    <node className="OrganizationTypeCapabilityNorm" id="_eChT4eiaEd6gMtZRCjS81g"/>
    <node className="RequiredInformationTechnologyCapability" id="_eChT4uiaEd6gMtZRCjS81g"/>
    <node className="InformationTechnologyRequirement" id="_eChT4-iaEd6gMtZRCjS81g"/>
    <node className="InformationExchangeRequirement" id="_eChT5OiaEd6gMtZRCjS81g"/>
    <node className="PAExchangeRequirement" id="_eChT5eiaEd6gMtZRCjS81g"/>
    <edge id="_eChT7-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eCgsxOiaEd6gMtZRCjS81g" target="_eCgsxeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">document</attribute>
    </edge>
    <edge id="_eChT7-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eCgsxeiaEd6gMtZRCjS81g" target="_eCgsxOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eChT8uiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eCgsxOiaEd6gMtZRCjS81g" target="_eCgsxuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">sftm</attribute>
    </edge>
    <edge id="_eChT8uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eCgsxuiaEd6gMtZRCjS81g" target="_eCgsxOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eChT9eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eCgsxOiaEd6gMtZRCjS81g" target="_eCgsyOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">sd</attribute>
    </edge>
    <edge id="_eChT9eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eCgsyOiaEd6gMtZRCjS81g" target="_eCgsxOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eChT-OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eCgsxOiaEd6gMtZRCjS81g" target="_eChT0uiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">am</attribute>
    </edge>
    <edge id="_eChT-OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eChT0uiaEd6gMtZRCjS81g" target="_eCgsxOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eChT--iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eCgsxOiaEd6gMtZRCjS81g" target="_eChT1eiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">system</attribute>
    </edge>
    <edge id="_eChT--iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eChT1eiaEd6gMtZRCjS81g" target="_eCgsxOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eChT_uiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eCgsxOiaEd6gMtZRCjS81g" target="_eChT1uiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">task</attribute>
    </edge>
    <edge id="_eChT_uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eChT1uiaEd6gMtZRCjS81g" target="_eCgsxOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eChUAeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eCgsxOiaEd6gMtZRCjS81g" target="_eChT2-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">capability</attribute>
    </edge>
    <edge id="_eChUAeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eChT2-iaEd6gMtZRCjS81g" target="_eCgsxOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eChUBOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eCgsxOiaEd6gMtZRCjS81g" target="_eChT3OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">capabilityDocument</attribute>
    </edge>
    <edge id="_eChUBOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eChT3OiaEd6gMtZRCjS81g" target="_eCgsxOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eChUB-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eCgsxOiaEd6gMtZRCjS81g" target="_eChT3eiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">systemCapability</attribute>
    </edge>
    <edge id="_eChUB-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eChT3eiaEd6gMtZRCjS81g" target="_eCgsxOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eCh65uiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eCgsxeiaEd6gMtZRCjS81g" target="_eCgsyeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">records</attribute>
    </edge>
    <edge id="_eCh65uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eCgsyeiaEd6gMtZRCjS81g" target="_eCgsxeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eCh66eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eCgsxeiaEd6gMtZRCjS81g" target="_eCgsyuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">isThePrimaryReferenceFor</attribute>
    </edge>
    <edge id="_eCh66eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eCgsyuiaEd6gMtZRCjS81g" target="_eCgsxeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eCh67OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eCgsxuiaEd6gMtZRCjS81g" target="_eCgsx-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">isDefinedBy</attribute>
    </edge>
    <edge id="_eCh67OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eCgsx-iaEd6gMtZRCjS81g" target="_eCgsxuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eCh7CuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eCgsyuiaEd6gMtZRCjS81g" target="_eChT0eiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">isSupportedBy</attribute>
    </edge>
    <edge id="_eCh7CuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eChT0eiaEd6gMtZRCjS81g" target="_eCgsyuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eCh7DeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eCgsyuiaEd6gMtZRCjS81g" target="_eChT5eiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">isTheConsumerFor</attribute>
    </edge>
    <edge id="_eCh7DeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eChT5eiaEd6gMtZRCjS81g" target="_eCgsyuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eCh7EOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eCgsyuiaEd6gMtZRCjS81g" target="_eChT5eiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">isTheProducerFor</attribute>
    </edge>
    <edge id="_eCh7EOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eChT5eiaEd6gMtZRCjS81g" target="_eCgsyuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eCh7E-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eChT0OiaEd6gMtZRCjS81g" target="_eChT3eiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">provides</attribute>
    </edge>
    <edge id="_eCh7E-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eChT3eiaEd6gMtZRCjS81g" target="_eChT0OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eCh7FuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eChT0OiaEd6gMtZRCjS81g" target="_eChT2eiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">enables</attribute>
    </edge>
    <edge id="_eCh7FuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eChT2eiaEd6gMtZRCjS81g" target="_eChT0OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eCih8uiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eChT0uiaEd6gMtZRCjS81g" target="_eChT2uiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">isCitedBy</attribute>
    </edge>
    <edge id="_eCih8uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eChT2uiaEd6gMtZRCjS81g" target="_eChT0uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eCih9eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eChT0uiaEd6gMtZRCjS81g" target="_eChT1OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">includes</attribute>
    </edge>
    <edge id="_eCih9eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eChT1OiaEd6gMtZRCjS81g" target="_eChT0uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eCih--iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eChT1eiaEd6gMtZRCjS81g" target="_eChT0OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">isDesignedToProvide</attribute>
    </edge>
    <edge id="_eCih--iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eChT0OiaEd6gMtZRCjS81g" target="_eChT1eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eCiiDeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eChT1uiaEd6gMtZRCjS81g" target="_eChT5OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">isTheSourceOfNeedFor</attribute>
    </edge>
    <edge id="_eCiiDeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eChT5OiaEd6gMtZRCjS81g" target="_eChT1uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eCiiEOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eChT1uiaEd6gMtZRCjS81g" target="_eChT5OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">isTheDestinationOfNeedFor</attribute>
    </edge>
    <edge id="_eCiiEOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eChT5OiaEd6gMtZRCjS81g" target="_eChT1uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eCjJGOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eChT5eiaEd6gMtZRCjS81g" target="_eChT5OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">isCitedIn</attribute>
    </edge>
    <edge id="_eCjJGOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eChT5OiaEd6gMtZRCjS81g" target="_eChT5eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eCh64OiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eCgsxeiaEd6gMtZRCjS81g" target="_eChT3OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">cites</attribute>
    </edge>
    <edge id="_eCh64OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eChT3OiaEd6gMtZRCjS81g" target="_eCgsxeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eCh64-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eCgsxeiaEd6gMtZRCjS81g" target="_eCgsyOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">describes</attribute>
    </edge>
    <edge id="_eCh64-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eCgsyOiaEd6gMtZRCjS81g" target="_eCgsxeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eCh67-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eCgsx-iaEd6gMtZRCjS81g" target="_eCgsy-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">systemFunction</attribute>
    </edge>
    <edge id="_eCh67-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_eCgsy-iaEd6gMtZRCjS81g" target="_eCgsx-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_eCh68uiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eCgsx-iaEd6gMtZRCjS81g" target="_eChT1uiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">operationalActivity</attribute>
    </edge>
    <edge id="_eCh68uiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_eChT1uiaEd6gMtZRCjS81g" target="_eCgsx-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_eCh69eiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eCgsx-iaEd6gMtZRCjS81g" target="_eChT0OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">systemProcessActivity</attribute>
    </edge>
    <edge id="_eCh69eiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_eChT0OiaEd6gMtZRCjS81g" target="_eCgsx-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_eCh6-OiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eCgsx-iaEd6gMtZRCjS81g" target="_eChT1eiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">system</attribute>
    </edge>
    <edge id="_eCh6-OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eChT1eiaEd6gMtZRCjS81g" target="_eCgsx-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eCh6--iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eCgsx-iaEd6gMtZRCjS81g" target="_eChT2-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">capability</attribute>
    </edge>
    <edge id="_eCh6--iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eChT2-iaEd6gMtZRCjS81g" target="_eCgsx-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eCh6_uiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eCgsyuiaEd6gMtZRCjS81g" target="_eCgsyuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">isParentFor</attribute>
    </edge>
    <edge id="_eCh6_uiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_eCgsyuiaEd6gMtZRCjS81g" target="_eCgsyuiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_eCh7AeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eCgsyuiaEd6gMtZRCjS81g" target="_eChT2uiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">correspondsTo</attribute>
    </edge>
    <edge id="_eCh7AeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eChT2uiaEd6gMtZRCjS81g" target="_eCgsyuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eCh7BOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eCgsyuiaEd6gMtZRCjS81g" target="_eChT1OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">isIncludedIn</attribute>
    </edge>
    <edge id="_eCh7BOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eChT1OiaEd6gMtZRCjS81g" target="_eCgsyuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eCh7B-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eCgsyuiaEd6gMtZRCjS81g" target="_eChT0OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">isAssignedTo</attribute>
    </edge>
    <edge id="_eCh7B-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eChT0OiaEd6gMtZRCjS81g" target="_eCgsyuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eCih-OiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eChT1OiaEd6gMtZRCjS81g" target="_eChT1OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">isOrdinateOf</attribute>
    </edge>
    <edge id="_eCih-OiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_eChT1OiaEd6gMtZRCjS81g" target="_eChT1OiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_eCih_uiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eChT1eiaEd6gMtZRCjS81g" target="_eCgsyOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">isDescribedBy</attribute>
    </edge>
    <edge id="_eCih_uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eCgsyOiaEd6gMtZRCjS81g" target="_eChT1eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eCiiAeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eChT1eiaEd6gMtZRCjS81g" target="_eChT3eiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">performs</attribute>
    </edge>
    <edge id="_eCiiAeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eChT3eiaEd6gMtZRCjS81g" target="_eChT1eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eCiiBOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eChT1eiaEd6gMtZRCjS81g" target="_eChT2eiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">isUsedToAccomplish</attribute>
    </edge>
    <edge id="_eCiiBOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eChT2eiaEd6gMtZRCjS81g" target="_eChT1eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eCiiB-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eChT1uiaEd6gMtZRCjS81g" target="_eChT2uiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">correspondsTo</attribute>
    </edge>
    <edge id="_eCiiB-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eChT2uiaEd6gMtZRCjS81g" target="_eChT1uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eCiiCuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eChT1uiaEd6gMtZRCjS81g" target="_eChT1-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">isSupportedBy</attribute>
    </edge>
    <edge id="_eCiiCuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eChT1-iaEd6gMtZRCjS81g" target="_eChT1uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eCiiE-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eChT2OiaEd6gMtZRCjS81g" target="_eChT2eiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">isAccomplishedA</attribute>
    </edge>
    <edge id="_eCiiE-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eChT2eiaEd6gMtZRCjS81g" target="_eChT2OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eCiiFuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eChT2-iaEd6gMtZRCjS81g" target="_eChT3eiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">isPerformedBy</attribute>
    </edge>
    <edge id="_eCiiFuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eChT3eiaEd6gMtZRCjS81g" target="_eChT2-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eCiiGeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eChT2-iaEd6gMtZRCjS81g" target="_eChT2-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">isOrdinateFor</attribute>
    </edge>
    <edge id="_eCiiGeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eChT2-iaEd6gMtZRCjS81g" target="_eChT2-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eCiiHOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eChT2-iaEd6gMtZRCjS81g" target="_eChT2-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">isSubordinateOf</attribute>
    </edge>
    <edge id="_eCiiHOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eChT2-iaEd6gMtZRCjS81g" target="_eChT2-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eCiiH-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eChT2-iaEd6gMtZRCjS81g" target="_eChT3uiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">isPerformedByNC</attribute>
    </edge>
    <edge id="_eCiiH-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eChT3uiaEd6gMtZRCjS81g" target="_eChT2-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eCiiIuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eChT2-iaEd6gMtZRCjS81g" target="_eChT3-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">isPerformedByNLC</attribute>
    </edge>
    <edge id="_eCiiIuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eChT3-iaEd6gMtZRCjS81g" target="_eChT2-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eCjJAOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eChT2-iaEd6gMtZRCjS81g" target="_eChT3eiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">isPerformedBySC</attribute>
    </edge>
    <edge id="_eCjJAOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eChT3eiaEd6gMtZRCjS81g" target="_eChT2-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eCjJA-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eChT2-iaEd6gMtZRCjS81g" target="_eChT3OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">isCitedInCD</attribute>
    </edge>
    <edge id="_eCjJA-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eChT3OiaEd6gMtZRCjS81g" target="_eChT2-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eCjJBuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eChT2-iaEd6gMtZRCjS81g" target="_eChT4OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">isUsedInMICN</attribute>
    </edge>
    <edge id="_eCjJBuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eChT4OiaEd6gMtZRCjS81g" target="_eChT2-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eCjJCeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eChT2-iaEd6gMtZRCjS81g" target="_eChT4eiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">isUsedInOTCN</attribute>
    </edge>
    <edge id="_eCjJCeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eChT4eiaEd6gMtZRCjS81g" target="_eChT2-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eCjJDOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eChT2-iaEd6gMtZRCjS81g" target="_eChT4uiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">isAttainedFor</attribute>
    </edge>
    <edge id="_eCjJDOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eChT4uiaEd6gMtZRCjS81g" target="_eChT2-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eCjJD-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eChT3OiaEd6gMtZRCjS81g" target="_eChT2-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">isCitedIn</attribute>
    </edge>
    <edge id="_eCjJD-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eChT2-iaEd6gMtZRCjS81g" target="_eChT3OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eCjJEuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eChT3eiaEd6gMtZRCjS81g" target="_eChT2-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">isCitedIn</attribute>
    </edge>
    <edge id="_eCjJEuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eChT2-iaEd6gMtZRCjS81g" target="_eChT3eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eCjJFeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eChT4-iaEd6gMtZRCjS81g" target="_eChT4uiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">specifies</attribute>
    </edge>
    <edge id="_eCjJFeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eChT4uiaEd6gMtZRCjS81g" target="_eChT4-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eCjwEOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eCgsxOiaEd6gMtZRCjS81g" target="_eCgsw-iaEd6gMtZRCjS81g"/>
    <edge id="_eCjwEOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eCgsw-iaEd6gMtZRCjS81g" target="_eCgsxOiaEd6gMtZRCjS81g"/>
    <edge id="_eCjwEeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eCgsxeiaEd6gMtZRCjS81g" target="_eCgsw-iaEd6gMtZRCjS81g"/>
    <edge id="_eCjwEeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eCgsw-iaEd6gMtZRCjS81g" target="_eCgsxeiaEd6gMtZRCjS81g"/>
    <edge id="_eCkXIOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eCgsxuiaEd6gMtZRCjS81g" target="_eCgsxeiaEd6gMtZRCjS81g"/>
    <edge id="_eCkXIOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eCgsxeiaEd6gMtZRCjS81g" target="_eCgsxuiaEd6gMtZRCjS81g"/>
    <edge id="_eCkXIeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eCgsx-iaEd6gMtZRCjS81g" target="_eCgsw-iaEd6gMtZRCjS81g"/>
    <edge id="_eCkXIeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eCgsw-iaEd6gMtZRCjS81g" target="_eCgsx-iaEd6gMtZRCjS81g"/>
    <edge id="_eCkXIuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eCgsyOiaEd6gMtZRCjS81g" target="_eCgsw-iaEd6gMtZRCjS81g"/>
    <edge id="_eCkXIuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eCgsw-iaEd6gMtZRCjS81g" target="_eCgsyOiaEd6gMtZRCjS81g"/>
    <edge id="_eCkXI-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eCgsyeiaEd6gMtZRCjS81g" target="_eCgsw-iaEd6gMtZRCjS81g"/>
    <edge id="_eCkXI-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eCgsw-iaEd6gMtZRCjS81g" target="_eCgsyeiaEd6gMtZRCjS81g"/>
    <edge id="_eCkXJOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eCgsyuiaEd6gMtZRCjS81g" target="_eCgsw-iaEd6gMtZRCjS81g"/>
    <edge id="_eCkXJOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eCgsw-iaEd6gMtZRCjS81g" target="_eCgsyuiaEd6gMtZRCjS81g"/>
    <edge id="_eCkXJeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eCgsy-iaEd6gMtZRCjS81g" target="_eCgsyuiaEd6gMtZRCjS81g"/>
    <edge id="_eCkXJeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eCgsyuiaEd6gMtZRCjS81g" target="_eCgsy-iaEd6gMtZRCjS81g"/>
    <edge id="_eCkXJuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eChT0OiaEd6gMtZRCjS81g" target="_eCgsw-iaEd6gMtZRCjS81g"/>
    <edge id="_eCkXJuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eCgsw-iaEd6gMtZRCjS81g" target="_eChT0OiaEd6gMtZRCjS81g"/>
    <edge id="_eCkXJ-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eChT0eiaEd6gMtZRCjS81g" target="_eCgsw-iaEd6gMtZRCjS81g"/>
    <edge id="_eCkXJ-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eCgsw-iaEd6gMtZRCjS81g" target="_eChT0eiaEd6gMtZRCjS81g"/>
    <edge id="_eCkXKOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eChT0uiaEd6gMtZRCjS81g" target="_eChT0-iaEd6gMtZRCjS81g"/>
    <edge id="_eCkXKOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eChT0-iaEd6gMtZRCjS81g" target="_eChT0uiaEd6gMtZRCjS81g"/>
    <edge id="_eCkXKeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eChT0-iaEd6gMtZRCjS81g" target="_eCgsw-iaEd6gMtZRCjS81g"/>
    <edge id="_eCkXKeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eCgsw-iaEd6gMtZRCjS81g" target="_eChT0-iaEd6gMtZRCjS81g"/>
    <edge id="_eCkXKuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eChT1OiaEd6gMtZRCjS81g" target="_eCgsw-iaEd6gMtZRCjS81g"/>
    <edge id="_eCkXKuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eCgsw-iaEd6gMtZRCjS81g" target="_eChT1OiaEd6gMtZRCjS81g"/>
    <edge id="_eCk-MOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eChT1eiaEd6gMtZRCjS81g" target="_eCgsw-iaEd6gMtZRCjS81g"/>
    <edge id="_eCk-MOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eCgsw-iaEd6gMtZRCjS81g" target="_eChT1eiaEd6gMtZRCjS81g"/>
    <edge id="_eCk-MeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eChT1uiaEd6gMtZRCjS81g" target="_eCgsw-iaEd6gMtZRCjS81g"/>
    <edge id="_eCk-MeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eCgsw-iaEd6gMtZRCjS81g" target="_eChT1uiaEd6gMtZRCjS81g"/>
    <edge id="_eCk-MuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eChT1-iaEd6gMtZRCjS81g" target="_eCgsw-iaEd6gMtZRCjS81g"/>
    <edge id="_eCk-MuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eCgsw-iaEd6gMtZRCjS81g" target="_eChT1-iaEd6gMtZRCjS81g"/>
    <edge id="_eCk-M-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eChT2OiaEd6gMtZRCjS81g" target="_eChT1uiaEd6gMtZRCjS81g"/>
    <edge id="_eCk-M-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eChT1uiaEd6gMtZRCjS81g" target="_eChT2OiaEd6gMtZRCjS81g"/>
    <edge id="_eCk-NOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eChT2eiaEd6gMtZRCjS81g" target="_eChT1uiaEd6gMtZRCjS81g"/>
    <edge id="_eCk-NOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eChT1uiaEd6gMtZRCjS81g" target="_eChT2eiaEd6gMtZRCjS81g"/>
    <edge id="_eCk-NeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eChT2uiaEd6gMtZRCjS81g" target="_eChT1uiaEd6gMtZRCjS81g"/>
    <edge id="_eCk-NeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eChT1uiaEd6gMtZRCjS81g" target="_eChT2uiaEd6gMtZRCjS81g"/>
    <edge id="_eCk-NuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eChT2-iaEd6gMtZRCjS81g" target="_eCgsw-iaEd6gMtZRCjS81g"/>
    <edge id="_eCk-NuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eCgsw-iaEd6gMtZRCjS81g" target="_eChT2-iaEd6gMtZRCjS81g"/>
    <edge id="_eCk-N-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eChT3OiaEd6gMtZRCjS81g" target="_eCgsw-iaEd6gMtZRCjS81g"/>
    <edge id="_eCk-N-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eCgsw-iaEd6gMtZRCjS81g" target="_eChT3OiaEd6gMtZRCjS81g"/>
    <edge id="_eCk-OOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eChT3eiaEd6gMtZRCjS81g" target="_eCgsw-iaEd6gMtZRCjS81g"/>
    <edge id="_eCk-OOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eCgsw-iaEd6gMtZRCjS81g" target="_eChT3eiaEd6gMtZRCjS81g"/>
    <edge id="_eCk-OeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eChT3uiaEd6gMtZRCjS81g" target="_eChT2-iaEd6gMtZRCjS81g"/>
    <edge id="_eCk-OeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eChT2-iaEd6gMtZRCjS81g" target="_eChT3uiaEd6gMtZRCjS81g"/>
    <edge id="_eCllQOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eChT3-iaEd6gMtZRCjS81g" target="_eChT2-iaEd6gMtZRCjS81g"/>
    <edge id="_eCllQOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eChT2-iaEd6gMtZRCjS81g" target="_eChT3-iaEd6gMtZRCjS81g"/>
    <edge id="_eCllQeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eChT4OiaEd6gMtZRCjS81g" target="_eChT2-iaEd6gMtZRCjS81g"/>
    <edge id="_eCllQeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eChT2-iaEd6gMtZRCjS81g" target="_eChT4OiaEd6gMtZRCjS81g"/>
    <edge id="_eCllQuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eChT4eiaEd6gMtZRCjS81g" target="_eChT2-iaEd6gMtZRCjS81g"/>
    <edge id="_eCllQuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eChT2-iaEd6gMtZRCjS81g" target="_eChT4eiaEd6gMtZRCjS81g"/>
    <edge id="_eCllQ-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eChT4uiaEd6gMtZRCjS81g" target="_eChT2-iaEd6gMtZRCjS81g"/>
    <edge id="_eCllQ-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eChT2-iaEd6gMtZRCjS81g" target="_eChT4uiaEd6gMtZRCjS81g"/>
    <edge id="_eCllROiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eChT4-iaEd6gMtZRCjS81g" target="_eCgsw-iaEd6gMtZRCjS81g"/>
    <edge id="_eCllROiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eCgsw-iaEd6gMtZRCjS81g" target="_eChT4-iaEd6gMtZRCjS81g"/>
    <edge id="_eCllReiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eChT5OiaEd6gMtZRCjS81g" target="_eChT4-iaEd6gMtZRCjS81g"/>
    <edge id="_eCllReiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eChT4-iaEd6gMtZRCjS81g" target="_eChT5OiaEd6gMtZRCjS81g"/>
    <edge id="_eCllRuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eChT5eiaEd6gMtZRCjS81g" target="_eChT4-iaEd6gMtZRCjS81g"/>
    <edge id="_eCllRuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eChT4-iaEd6gMtZRCjS81g" target="_eChT5eiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
