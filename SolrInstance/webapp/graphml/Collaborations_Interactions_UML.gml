<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_d23dcOiaEd6gMtZRCjS81g" projectName="ExtendedUMLCorePackage">
    <node className="Package" id="_d23dc-iaEd6gMtZRCjS81g"/>
    <node className="ProviderClause" id="_d23ddOiaEd6gMtZRCjS81g"/>
    <node className="CollaborationPackage" id="_d23ddeiaEd6gMtZRCjS81g"/>
    <node className="Collaboration" id="_d23dduiaEd6gMtZRCjS81g"/>
    <node className="InteractionPackage" id="_d23dd-iaEd6gMtZRCjS81g"/>
    <node className="Interaction" id="_d23deOiaEd6gMtZRCjS81g"/>
    <node className="AssociationRole" id="_d23deeiaEd6gMtZRCjS81g"/>
    <node className="ClassifierRole" id="_d23deuiaEd6gMtZRCjS81g"/>
    <node className="AssociationEndRole" id="_d23de-iaEd6gMtZRCjS81g"/>
    <node className="Message" id="_d23dfOiaEd6gMtZRCjS81g"/>
    <node className="Request" id="_d23dfeiaEd6gMtZRCjS81g"/>
    <node className="Operation" id="_d23dfuiaEd6gMtZRCjS81g"/>
    <node className="Interface" id="_d23df-iaEd6gMtZRCjS81g"/>
    <edge id="_d23dgOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_d23ddOiaEd6gMtZRCjS81g" target="_d23ddeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">ownedEltColl</attribute>
    </edge>
    <edge id="_d23dgOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_d23ddeiaEd6gMtZRCjS81g" target="_d23ddOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d24EgOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_d23dduiaEd6gMtZRCjS81g" target="_d23deOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">interaction</attribute>
    </edge>
    <edge id="_d24EgOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_d23deOiaEd6gMtZRCjS81g" target="_d23dduiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d24Eg-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_d23dduiaEd6gMtZRCjS81g" target="_d23deeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">ownedEltAss</attribute>
    </edge>
    <edge id="_d24Eg-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_d23deeiaEd6gMtZRCjS81g" target="_d23dduiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d24EhuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_d23dduiaEd6gMtZRCjS81g" target="_d23deuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">ownedEltClass</attribute>
    </edge>
    <edge id="_d24EhuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_d23deuiaEd6gMtZRCjS81g" target="_d23dduiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d24EjOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_d23deOiaEd6gMtZRCjS81g" target="_d23dfOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">message</attribute>
    </edge>
    <edge id="_d24EjOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_d23dfOiaEd6gMtZRCjS81g" target="_d23deOiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_d24Ej-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_d23deeiaEd6gMtZRCjS81g" target="_d23de-iaEd6gMtZRCjS81g">
      <attribute lowerValue="2" upperValue="2">connection</attribute>
    </edge>
    <edge id="_d24Ej-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_d23de-iaEd6gMtZRCjS81g" target="_d23deeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d24EkuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_d23deuiaEd6gMtZRCjS81g" target="_d23de-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">associationEndRole</attribute>
    </edge>
    <edge id="_d24EkuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_d23de-iaEd6gMtZRCjS81g" target="_d23deuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d24Em-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_d23deuiaEd6gMtZRCjS81g" target="_d23dfuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">availableFeature</attribute>
    </edge>
    <edge id="_d24Em-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_d23dfuiaEd6gMtZRCjS81g" target="_d23deuiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_d24Ep-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_d23df-iaEd6gMtZRCjS81g" target="_d23dfuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">feature</attribute>
    </edge>
    <edge id="_d24Ep-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_d23dfuiaEd6gMtZRCjS81g" target="_d23df-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d23dg-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_d23ddOiaEd6gMtZRCjS81g" target="_d23dd-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">ownedEltInt</attribute>
    </edge>
    <edge id="_d23dg-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_d23dd-iaEd6gMtZRCjS81g" target="_d23ddOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d23dhuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_d23ddeiaEd6gMtZRCjS81g" target="_d23dduiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">ownedElt</attribute>
    </edge>
    <edge id="_d23dhuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_d23dduiaEd6gMtZRCjS81g" target="_d23ddeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d24EieiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_d23dd-iaEd6gMtZRCjS81g" target="_d23deOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">ownedElt</attribute>
    </edge>
    <edge id="_d24EieiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_d23deOiaEd6gMtZRCjS81g" target="_d23dd-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d24EleiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_d23deuiaEd6gMtZRCjS81g" target="_d23dfOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">receiverMess</attribute>
    </edge>
    <edge id="_d24EleiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_d23dfOiaEd6gMtZRCjS81g" target="_d23deuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d24EmOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_d23deuiaEd6gMtZRCjS81g" target="_d23dfOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">senderMess</attribute>
    </edge>
    <edge id="_d24EmOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_d23dfOiaEd6gMtZRCjS81g" target="_d23deuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d24EnuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_d23deuiaEd6gMtZRCjS81g" target="_d23df-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">base</attribute>
    </edge>
    <edge id="_d24EnuiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_d23df-iaEd6gMtZRCjS81g" target="_d23deuiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_d24EoeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_d23dfOiaEd6gMtZRCjS81g" target="_d23dfOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">message</attribute>
    </edge>
    <edge id="_d24EoeiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_d23dfOiaEd6gMtZRCjS81g" target="_d23dfOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d24EpOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_d23dfOiaEd6gMtZRCjS81g" target="_d23dfeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">specification</attribute>
    </edge>
    <edge id="_d24EpOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_d23dfeiaEd6gMtZRCjS81g" target="_d23dfOiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_d24rkOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_d23dc-iaEd6gMtZRCjS81g" target="_d23ddOiaEd6gMtZRCjS81g"/>
    <edge id="_d24rkOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_d23ddOiaEd6gMtZRCjS81g" target="_d23dc-iaEd6gMtZRCjS81g"/>
    <edge id="_d25SoOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_d23dfuiaEd6gMtZRCjS81g" target="_d23dfeiaEd6gMtZRCjS81g"/>
    <edge id="_d25SoOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_d23dfeiaEd6gMtZRCjS81g" target="_d23dfuiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
