<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_dR-nsOiaEd6gMtZRCjS81g" projectName="ACME">
    <node className="ACMEFile" id="_dR-ns-iaEd6gMtZRCjS81g"/>
    <node className="ACMEEntry" id="_dR-ntOiaEd6gMtZRCjS81g"/>
    <node className="Element" id="_dR-nteiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Type" id="_dR-ntuiaEd6gMtZRCjS81g"/>
    <node className="System" id="_dR-nt-iaEd6gMtZRCjS81g"/>
    <node className="Representation" id="_dR-nuOiaEd6gMtZRCjS81g"/>
    <node className="Component" id="_dR-nueiaEd6gMtZRCjS81g"/>
    <node className="ComponentInstance" id="_dR-nuuiaEd6gMtZRCjS81g">
      <attribute>instanceOf</attribute>
    </node>
    <node className="ComponentType" id="_dR-nu-iaEd6gMtZRCjS81g">
      <attribute>extend</attribute>
    </node>
    <node className="Port" id="_dR-nvOiaEd6gMtZRCjS81g"/>
    <node className="Connector" id="_dR-nveiaEd6gMtZRCjS81g"/>
    <node className="Role" id="_dR-nvuiaEd6gMtZRCjS81g"/>
    <node className="Property" id="_dR-nv-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>val</attribute>
    </node>
    <node className="Link" id="_dR-nwOiaEd6gMtZRCjS81g"/>
    <node className="Attachment" id="_dR-nweiaEd6gMtZRCjS81g">
      <attribute>comp</attribute>
      <attribute>port</attribute>
      <attribute>con</attribute>
      <attribute>role</attribute>
    </node>
    <node className="Binding" id="_dR-nwuiaEd6gMtZRCjS81g">
      <attribute>compSrc</attribute>
      <attribute>portSrc</attribute>
      <attribute>compDest</attribute>
      <attribute>portDest</attribute>
    </node>
    <edge id="_dR-n0OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dR-ns-iaEd6gMtZRCjS81g" target="_dR-ntOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">entries</attribute>
    </edge>
    <edge id="_dR-n0OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dR-ntOiaEd6gMtZRCjS81g" target="_dR-ns-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dSXpQeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dR-nteiaEd6gMtZRCjS81g" target="_dR-nuOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">representations</attribute>
    </edge>
    <edge id="_dSXpQeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dR-nuOiaEd6gMtZRCjS81g" target="_dR-nteiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dSXpROiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dR-nteiaEd6gMtZRCjS81g" target="_dR-nv-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">property</attribute>
    </edge>
    <edge id="_dSXpROiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dR-nv-iaEd6gMtZRCjS81g" target="_dR-nteiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dSXpR-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dR-nt-iaEd6gMtZRCjS81g" target="_dR-nuuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">componentDeclaration</attribute>
    </edge>
    <edge id="_dSXpR-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dR-nuuiaEd6gMtZRCjS81g" target="_dR-nt-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dSXpSuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dR-nt-iaEd6gMtZRCjS81g" target="_dR-nveiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">connectorDeclaration</attribute>
    </edge>
    <edge id="_dSXpSuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dR-nveiaEd6gMtZRCjS81g" target="_dR-nt-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dSXpTeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dR-nt-iaEd6gMtZRCjS81g" target="_dR-nwOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">attachments</attribute>
    </edge>
    <edge id="_dSXpTeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dR-nwOiaEd6gMtZRCjS81g" target="_dR-nt-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dSXpUOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dR-nt-iaEd6gMtZRCjS81g" target="_dR-nwOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">bindings</attribute>
    </edge>
    <edge id="_dSXpUOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dR-nwOiaEd6gMtZRCjS81g" target="_dR-nt-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dSXpU-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dR-nuOiaEd6gMtZRCjS81g" target="_dR-nt-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">systems</attribute>
    </edge>
    <edge id="_dSXpU-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dR-nt-iaEd6gMtZRCjS81g" target="_dR-nuOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dSXpVuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dR-nueiaEd6gMtZRCjS81g" target="_dR-nvOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">ports</attribute>
    </edge>
    <edge id="_dSXpVuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dR-nvOiaEd6gMtZRCjS81g" target="_dR-nueiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dSXpWeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dR-nveiaEd6gMtZRCjS81g" target="_dR-nvuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">roles</attribute>
    </edge>
    <edge id="_dSXpWeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dR-nvuiaEd6gMtZRCjS81g" target="_dR-nveiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dSY3YOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dR-ntuiaEd6gMtZRCjS81g" target="_dR-nteiaEd6gMtZRCjS81g"/>
    <edge id="_dSY3YOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dR-nteiaEd6gMtZRCjS81g" target="_dR-ntuiaEd6gMtZRCjS81g"/>
    <edge id="_dSZecOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dR-nt-iaEd6gMtZRCjS81g" target="_dR-nteiaEd6gMtZRCjS81g"/>
    <edge id="_dSZecOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dR-nteiaEd6gMtZRCjS81g" target="_dR-nt-iaEd6gMtZRCjS81g"/>
    <edge id="_dSZeceiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dR-nt-iaEd6gMtZRCjS81g" target="_dR-ntOiaEd6gMtZRCjS81g"/>
    <edge id="_dSZeceiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dR-ntOiaEd6gMtZRCjS81g" target="_dR-nt-iaEd6gMtZRCjS81g"/>
    <edge id="_dSZecuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dR-nueiaEd6gMtZRCjS81g" target="_dR-nteiaEd6gMtZRCjS81g"/>
    <edge id="_dSZecuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dR-nteiaEd6gMtZRCjS81g" target="_dR-nueiaEd6gMtZRCjS81g"/>
    <edge id="_dSZec-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dR-nuuiaEd6gMtZRCjS81g" target="_dR-nueiaEd6gMtZRCjS81g"/>
    <edge id="_dSZec-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dR-nueiaEd6gMtZRCjS81g" target="_dR-nuuiaEd6gMtZRCjS81g"/>
    <edge id="_dSZedOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dR-nu-iaEd6gMtZRCjS81g" target="_dR-nueiaEd6gMtZRCjS81g"/>
    <edge id="_dSZedOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dR-nueiaEd6gMtZRCjS81g" target="_dR-nu-iaEd6gMtZRCjS81g"/>
    <edge id="_dSZedeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dR-nu-iaEd6gMtZRCjS81g" target="_dR-ntOiaEd6gMtZRCjS81g"/>
    <edge id="_dSZedeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dR-ntOiaEd6gMtZRCjS81g" target="_dR-nu-iaEd6gMtZRCjS81g"/>
    <edge id="_dSZeduiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dR-nvOiaEd6gMtZRCjS81g" target="_dR-nteiaEd6gMtZRCjS81g"/>
    <edge id="_dSZeduiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dR-nteiaEd6gMtZRCjS81g" target="_dR-nvOiaEd6gMtZRCjS81g"/>
    <edge id="_dSZed-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dR-nveiaEd6gMtZRCjS81g" target="_dR-nteiaEd6gMtZRCjS81g"/>
    <edge id="_dSZed-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dR-nteiaEd6gMtZRCjS81g" target="_dR-nveiaEd6gMtZRCjS81g"/>
    <edge id="_dSZeeOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dR-nvuiaEd6gMtZRCjS81g" target="_dR-nteiaEd6gMtZRCjS81g"/>
    <edge id="_dSZeeOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dR-nteiaEd6gMtZRCjS81g" target="_dR-nvuiaEd6gMtZRCjS81g"/>
    <edge id="_dSaFgOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dR-nweiaEd6gMtZRCjS81g" target="_dR-nwOiaEd6gMtZRCjS81g"/>
    <edge id="_dSaFgOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dR-nwOiaEd6gMtZRCjS81g" target="_dR-nweiaEd6gMtZRCjS81g"/>
    <edge id="_dSaFgeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dR-nwuiaEd6gMtZRCjS81g" target="_dR-nwOiaEd6gMtZRCjS81g"/>
    <edge id="_dSaFgeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dR-nwOiaEd6gMtZRCjS81g" target="_dR-nwuiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
