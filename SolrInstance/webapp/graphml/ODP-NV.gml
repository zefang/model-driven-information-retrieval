<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_fasnsOiaEd6gMtZRCjS81g" projectName="ODPNV">
    <node className="Node" id="_fasns-iaEd6gMtZRCjS81g">
      <attribute>location</attribute>
    </node>
    <node className="Nucleus" id="_fasntOiaEd6gMtZRCjS81g"/>
    <node className="Capsule" id="_fasnteiaEd6gMtZRCjS81g"/>
    <node className="EngineeringObject" id="_fasntuiaEd6gMtZRCjS81g"/>
    <node className="CapsuleManager" id="_fasnt-iaEd6gMtZRCjS81g"/>
    <node className="Cluster" id="_fasnuOiaEd6gMtZRCjS81g"/>
    <node className="ClusterManager" id="_fasnueiaEd6gMtZRCjS81g"/>
    <node className="BEO" id="_fasnuuiaEd6gMtZRCjS81g"/>
    <node className="Stub" id="_fasnu-iaEd6gMtZRCjS81g"/>
    <node className="Binder" id="_fasnvOiaEd6gMtZRCjS81g"/>
    <node className="ProtocolObject" id="_fasnveiaEd6gMtZRCjS81g">
      <attribute>type</attribute>
    </node>
    <node className="Interceptor" id="_fasnvuiaEd6gMtZRCjS81g"/>
    <node className="Channel" id="_fasnv-iaEd6gMtZRCjS81g"/>
    <node className="ClientServerChannel" id="_fasnwOiaEd6gMtZRCjS81g"/>
    <node className="ControllingObject" id="_fasnweiaEd6gMtZRCjS81g"/>
    <node className="SecurityAuthority" id="_fasnwuiaEd6gMtZRCjS81g"/>
    <node className="ManagementAuthority" id="_fasnw-iaEd6gMtZRCjS81g"/>
    <node className="AddressingAuthority" id="_fasnxOiaEd6gMtZRCjS81g"/>
    <node className="NamingAuthority" id="_fasnxeiaEd6gMtZRCjS81g"/>
    <node className="ControlledObject" id="_fasnxuiaEd6gMtZRCjS81g"/>
    <node className="Domain" id="_fasnx-iaEd6gMtZRCjS81g"/>
    <node className="SecurityDomain" id="_fasnyOiaEd6gMtZRCjS81g"/>
    <node className="ManagementDomain" id="_fasnyeiaEd6gMtZRCjS81g"/>
    <node className="AddressingDomain" id="_fasnyuiaEd6gMtZRCjS81g"/>
    <node className="NamingDomain" id="_fasny-iaEd6gMtZRCjS81g"/>
    <node className="EngineeringInterfaceReferenceManagementDomain" id="_fasnzOiaEd6gMtZRCjS81g"/>
    <node className="EngineeringInterfaceReferenceManagementPolicy" id="_fasnzeiaEd6gMtZRCjS81g"/>
    <node className="EngineeringInterfaceReference" id="_fasnzuiaEd6gMtZRCjS81g"/>
    <edge id="_fasn0eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fasns-iaEd6gMtZRCjS81g" target="_fasntOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">manager</attribute>
    </edge>
    <edge id="_fasn0eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fasntOiaEd6gMtZRCjS81g" target="_fasns-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fatOwuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fasns-iaEd6gMtZRCjS81g" target="_fasnteiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">capsules</attribute>
    </edge>
    <edge id="_fatOwuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fasnteiaEd6gMtZRCjS81g" target="_fasns-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fatOy-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fasnteiaEd6gMtZRCjS81g" target="_fasntuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">otherEngObjects</attribute>
    </edge>
    <edge id="_fatOy-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fasntuiaEd6gMtZRCjS81g" target="_fasnteiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fatOzuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fasnteiaEd6gMtZRCjS81g" target="_fasnt-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">capsuleManager</attribute>
    </edge>
    <edge id="_fatOzuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fasnt-iaEd6gMtZRCjS81g" target="_fasnteiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fatO0eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fasnteiaEd6gMtZRCjS81g" target="_fasnueiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">clusterManagers</attribute>
    </edge>
    <edge id="_fatO0eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fasnueiaEd6gMtZRCjS81g" target="_fasnteiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fatO1OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fasnteiaEd6gMtZRCjS81g" target="_fasnuOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">clusters</attribute>
    </edge>
    <edge id="_fatO1OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fasnuOiaEd6gMtZRCjS81g" target="_fasnteiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fatO3eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fasnuOiaEd6gMtZRCjS81g" target="_fasnuuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">clusterBeos</attribute>
    </edge>
    <edge id="_fatO3eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fasnuuiaEd6gMtZRCjS81g" target="_fasnuOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fat10-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fasnv-iaEd6gMtZRCjS81g" target="_fasnu-iaEd6gMtZRCjS81g">
      <attribute lowerValue="2" upperValue="*">chStub</attribute>
    </edge>
    <edge id="_fat10-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fasnu-iaEd6gMtZRCjS81g" target="_fasnv-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fat11uiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fasnv-iaEd6gMtZRCjS81g" target="_fasnvOiaEd6gMtZRCjS81g">
      <attribute lowerValue="2" upperValue="*">chBinder</attribute>
    </edge>
    <edge id="_fat11uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fasnvOiaEd6gMtZRCjS81g" target="_fasnv-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fat12eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fasnv-iaEd6gMtZRCjS81g" target="_fasnveiaEd6gMtZRCjS81g">
      <attribute lowerValue="2" upperValue="*">chPObject</attribute>
    </edge>
    <edge id="_fat12eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fasnveiaEd6gMtZRCjS81g" target="_fasnv-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fat13OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fasnv-iaEd6gMtZRCjS81g" target="_fasnvuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">chInterceptor</attribute>
    </edge>
    <edge id="_fat13OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fasnvuiaEd6gMtZRCjS81g" target="_fasnv-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fatOxeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fasntOiaEd6gMtZRCjS81g" target="_fasntuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">otherEngObjects</attribute>
    </edge>
    <edge id="_fatOxeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fasntuiaEd6gMtZRCjS81g" target="_fasntOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fatOyOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fasntOiaEd6gMtZRCjS81g" target="_fasnuuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">beos</attribute>
    </edge>
    <edge id="_fatOyOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fasnuuiaEd6gMtZRCjS81g" target="_fasntOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fatO1-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fasnt-iaEd6gMtZRCjS81g" target="_fasnueiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">cmClusterManagers</attribute>
    </edge>
    <edge id="_fatO1-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fasnueiaEd6gMtZRCjS81g" target="_fasnt-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fatO2uiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fasnuOiaEd6gMtZRCjS81g" target="_fasnueiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">clusterManager</attribute>
    </edge>
    <edge id="_fatO2uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fasnueiaEd6gMtZRCjS81g" target="_fasnuOiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_fatO4OiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fasnueiaEd6gMtZRCjS81g" target="_fasnuuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">clustermanagerBeos</attribute>
    </edge>
    <edge id="_fatO4OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fasnuuiaEd6gMtZRCjS81g" target="_fasnueiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fatO4-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fasnuuiaEd6gMtZRCjS81g" target="_fasnuuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">locallyBoundObjects</attribute>
    </edge>
    <edge id="_fatO4-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_fasnuuiaEd6gMtZRCjS81g" target="_fasnuuiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_fatO5uiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fasnuuiaEd6gMtZRCjS81g" target="_fasnv-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">beoChannel</attribute>
    </edge>
    <edge id="_fatO5uiaEd6gMtZRCjS81g-opposite" lowerValue="2" relType="ASSOCIATION" source="_fasnv-iaEd6gMtZRCjS81g" target="_fasnuuiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_fatO6eiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fasnuuiaEd6gMtZRCjS81g" target="_fasnu-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">beoStub</attribute>
    </edge>
    <edge id="_fatO6eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fasnu-iaEd6gMtZRCjS81g" target="_fasnuuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fatO7OiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fasnu-iaEd6gMtZRCjS81g" target="_fasnvOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">stBinder</attribute>
    </edge>
    <edge id="_fatO7OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fasnvOiaEd6gMtZRCjS81g" target="_fasnu-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fatO7-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fasnvOiaEd6gMtZRCjS81g" target="_fasnveiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">bdProtocolObject</attribute>
    </edge>
    <edge id="_fatO7-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fasnveiaEd6gMtZRCjS81g" target="_fasnvOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fatO8uiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fasnveiaEd6gMtZRCjS81g" target="_fasnvuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">poInterceptor</attribute>
    </edge>
    <edge id="_fatO8uiaEd6gMtZRCjS81g-opposite" lowerValue="2" relType="ASSOCIATION" source="_fasnvuiaEd6gMtZRCjS81g" target="_fasnveiaEd6gMtZRCjS81g" upperValue="2"/>
    <edge id="_fat10OiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fasnveiaEd6gMtZRCjS81g" target="_fasnveiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">poBoundProtocolObject</attribute>
    </edge>
    <edge id="_fat10OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fasnveiaEd6gMtZRCjS81g" target="_fasnveiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fat13-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fasnweiaEd6gMtZRCjS81g" target="_fasnx-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">coDomain</attribute>
    </edge>
    <edge id="_fat13-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fasnx-iaEd6gMtZRCjS81g" target="_fasnweiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fat14uiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fasnxuiaEd6gMtZRCjS81g" target="_fasnx-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">cdoDomain</attribute>
    </edge>
    <edge id="_fat14uiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_fasnx-iaEd6gMtZRCjS81g" target="_fasnxuiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_fat15eiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fasnx-iaEd6gMtZRCjS81g" target="_fasnx-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">parentDomain</attribute>
    </edge>
    <edge id="_fat15eiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_fasnx-iaEd6gMtZRCjS81g" target="_fasnx-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_fat16OiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fasnzOiaEd6gMtZRCjS81g" target="_fasnzuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">eirmdReference</attribute>
    </edge>
    <edge id="_fat16OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fasnzuiaEd6gMtZRCjS81g" target="_fasnzOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fat16-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fasnzOiaEd6gMtZRCjS81g" target="_fasnzeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">eirmdManagementPolicy</attribute>
    </edge>
    <edge id="_fat16-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_fasnzeiaEd6gMtZRCjS81g" target="_fasnzOiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_fauc4OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fasntOiaEd6gMtZRCjS81g" target="_fasntuiaEd6gMtZRCjS81g"/>
    <edge id="_fauc4OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fasntuiaEd6gMtZRCjS81g" target="_fasntOiaEd6gMtZRCjS81g"/>
    <edge id="_fauc4eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fasnt-iaEd6gMtZRCjS81g" target="_fasntuiaEd6gMtZRCjS81g"/>
    <edge id="_fauc4eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fasntuiaEd6gMtZRCjS81g" target="_fasnt-iaEd6gMtZRCjS81g"/>
    <edge id="_fauc4uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fasnueiaEd6gMtZRCjS81g" target="_fasntuiaEd6gMtZRCjS81g"/>
    <edge id="_fauc4uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fasntuiaEd6gMtZRCjS81g" target="_fasnueiaEd6gMtZRCjS81g"/>
    <edge id="_fauc4-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fasnuuiaEd6gMtZRCjS81g" target="_fasntuiaEd6gMtZRCjS81g"/>
    <edge id="_fauc4-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fasntuiaEd6gMtZRCjS81g" target="_fasnuuiaEd6gMtZRCjS81g"/>
    <edge id="_fauc5OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fasnu-iaEd6gMtZRCjS81g" target="_fasntuiaEd6gMtZRCjS81g"/>
    <edge id="_fauc5OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fasntuiaEd6gMtZRCjS81g" target="_fasnu-iaEd6gMtZRCjS81g"/>
    <edge id="_favD8OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fasnvOiaEd6gMtZRCjS81g" target="_fasntuiaEd6gMtZRCjS81g"/>
    <edge id="_favD8OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fasntuiaEd6gMtZRCjS81g" target="_fasnvOiaEd6gMtZRCjS81g"/>
    <edge id="_favD8eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fasnveiaEd6gMtZRCjS81g" target="_fasntuiaEd6gMtZRCjS81g"/>
    <edge id="_favD8eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fasntuiaEd6gMtZRCjS81g" target="_fasnveiaEd6gMtZRCjS81g"/>
    <edge id="_favD8uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fasnvuiaEd6gMtZRCjS81g" target="_fasntuiaEd6gMtZRCjS81g"/>
    <edge id="_favD8uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fasntuiaEd6gMtZRCjS81g" target="_fasnvuiaEd6gMtZRCjS81g"/>
    <edge id="_favD8-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fasnwOiaEd6gMtZRCjS81g" target="_fasnv-iaEd6gMtZRCjS81g"/>
    <edge id="_favD8-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fasnv-iaEd6gMtZRCjS81g" target="_fasnwOiaEd6gMtZRCjS81g"/>
    <edge id="_favD9OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fasnweiaEd6gMtZRCjS81g" target="_fasntuiaEd6gMtZRCjS81g"/>
    <edge id="_favD9OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fasntuiaEd6gMtZRCjS81g" target="_fasnweiaEd6gMtZRCjS81g"/>
    <edge id="_favD9eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fasnwuiaEd6gMtZRCjS81g" target="_fasnweiaEd6gMtZRCjS81g"/>
    <edge id="_favD9eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fasnweiaEd6gMtZRCjS81g" target="_fasnwuiaEd6gMtZRCjS81g"/>
    <edge id="_favD9uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fasnw-iaEd6gMtZRCjS81g" target="_fasnweiaEd6gMtZRCjS81g"/>
    <edge id="_favD9uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fasnweiaEd6gMtZRCjS81g" target="_fasnw-iaEd6gMtZRCjS81g"/>
    <edge id="_favD9-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fasnxOiaEd6gMtZRCjS81g" target="_fasnweiaEd6gMtZRCjS81g"/>
    <edge id="_favD9-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fasnweiaEd6gMtZRCjS81g" target="_fasnxOiaEd6gMtZRCjS81g"/>
    <edge id="_favD-OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fasnxeiaEd6gMtZRCjS81g" target="_fasnweiaEd6gMtZRCjS81g"/>
    <edge id="_favD-OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fasnweiaEd6gMtZRCjS81g" target="_fasnxeiaEd6gMtZRCjS81g"/>
    <edge id="_favD-eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fasnxuiaEd6gMtZRCjS81g" target="_fasntuiaEd6gMtZRCjS81g"/>
    <edge id="_favD-eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fasntuiaEd6gMtZRCjS81g" target="_fasnxuiaEd6gMtZRCjS81g"/>
    <edge id="_favD-uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fasnyOiaEd6gMtZRCjS81g" target="_fasnx-iaEd6gMtZRCjS81g"/>
    <edge id="_favD-uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fasnx-iaEd6gMtZRCjS81g" target="_fasnyOiaEd6gMtZRCjS81g"/>
    <edge id="_favD--iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fasnyeiaEd6gMtZRCjS81g" target="_fasnx-iaEd6gMtZRCjS81g"/>
    <edge id="_favD--iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fasnx-iaEd6gMtZRCjS81g" target="_fasnyeiaEd6gMtZRCjS81g"/>
    <edge id="_favD_OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fasnyuiaEd6gMtZRCjS81g" target="_fasnx-iaEd6gMtZRCjS81g"/>
    <edge id="_favD_OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fasnx-iaEd6gMtZRCjS81g" target="_fasnyuiaEd6gMtZRCjS81g"/>
    <edge id="_favD_eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fasny-iaEd6gMtZRCjS81g" target="_fasnx-iaEd6gMtZRCjS81g"/>
    <edge id="_favD_eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fasnx-iaEd6gMtZRCjS81g" target="_fasny-iaEd6gMtZRCjS81g"/>
    <edge id="_favD_uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fasnzOiaEd6gMtZRCjS81g" target="_fasny-iaEd6gMtZRCjS81g"/>
    <edge id="_favD_uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fasny-iaEd6gMtZRCjS81g" target="_fasnzOiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
