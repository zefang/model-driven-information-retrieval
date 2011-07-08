<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_gFG2oOiaEd6gMtZRCjS81g" projectName="RequisitePro">
    <node className="DescribedElt" id="_gFG2o-iaEd6gMtZRCjS81g">
      <attribute>description</attribute>
    </node>
    <node className="NamedElt" id="_gFG2pOiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="ContainerElt" id="_gFG2peiaEd6gMtZRCjS81g"/>
    <node className="Project" id="_gFG2puiaEd6gMtZRCjS81g"/>
    <node className="Package" id="_gFG2p-iaEd6gMtZRCjS81g"/>
    <node className="ContainedElt" id="_gFG2qOiaEd6gMtZRCjS81g"/>
    <node className="TypedElt" id="_gFG2qeiaEd6gMtZRCjS81g">
      <attribute>type</attribute>
    </node>
    <node className="Document" id="_gFG2quiaEd6gMtZRCjS81g"/>
    <node className="Attribute" id="_gFG2q-iaEd6gMtZRCjS81g">
      <attribute>value</attribute>
    </node>
    <node className="Requirement" id="_gFG2rOiaEd6gMtZRCjS81g">
      <attribute>text</attribute>
    </node>
    <edge id="_gFG2suiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gFG2peiaEd6gMtZRCjS81g" target="_gFG2qOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">content</attribute>
    </edge>
    <edge id="_gFG2suiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gFG2qOiaEd6gMtZRCjS81g" target="_gFG2peiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gFG2teiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gFG2peiaEd6gMtZRCjS81g" target="_gFG2p-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">packages</attribute>
    </edge>
    <edge id="_gFG2teiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gFG2p-iaEd6gMtZRCjS81g" target="_gFG2peiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gFG2uOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gFG2rOiaEd6gMtZRCjS81g" target="_gFG2q-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">attributes</attribute>
    </edge>
    <edge id="_gFG2uOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gFG2q-iaEd6gMtZRCjS81g" target="_gFG2rOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gFG2u-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gFG2rOiaEd6gMtZRCjS81g" target="_gFG2quiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">location</attribute>
    </edge>
    <edge id="_gFG2u-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gFG2quiaEd6gMtZRCjS81g" target="_gFG2rOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gFG2vuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gFG2rOiaEd6gMtZRCjS81g" target="_gFG2rOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">parent</attribute>
    </edge>
    <edge id="_gFG2vuiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gFG2rOiaEd6gMtZRCjS81g" target="_gFG2rOiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gFHdseiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gFG2rOiaEd6gMtZRCjS81g" target="_gFG2rOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">coverLink</attribute>
    </edge>
    <edge id="_gFHdseiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gFG2rOiaEd6gMtZRCjS81g" target="_gFG2rOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gFHdteiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gFG2peiaEd6gMtZRCjS81g" target="_gFG2pOiaEd6gMtZRCjS81g"/>
    <edge id="_gFHdteiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gFG2pOiaEd6gMtZRCjS81g" target="_gFG2peiaEd6gMtZRCjS81g"/>
    <edge id="_gFHdtuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gFG2peiaEd6gMtZRCjS81g" target="_gFG2o-iaEd6gMtZRCjS81g"/>
    <edge id="_gFHdtuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gFG2o-iaEd6gMtZRCjS81g" target="_gFG2peiaEd6gMtZRCjS81g"/>
    <edge id="_gFHdt-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gFG2puiaEd6gMtZRCjS81g" target="_gFG2peiaEd6gMtZRCjS81g"/>
    <edge id="_gFHdt-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gFG2peiaEd6gMtZRCjS81g" target="_gFG2puiaEd6gMtZRCjS81g"/>
    <edge id="_gFHduOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gFG2p-iaEd6gMtZRCjS81g" target="_gFG2peiaEd6gMtZRCjS81g"/>
    <edge id="_gFHduOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gFG2peiaEd6gMtZRCjS81g" target="_gFG2p-iaEd6gMtZRCjS81g"/>
    <edge id="_gFHdueiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gFG2quiaEd6gMtZRCjS81g" target="_gFG2o-iaEd6gMtZRCjS81g"/>
    <edge id="_gFHdueiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gFG2o-iaEd6gMtZRCjS81g" target="_gFG2quiaEd6gMtZRCjS81g"/>
    <edge id="_gFHduuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gFG2quiaEd6gMtZRCjS81g" target="_gFG2pOiaEd6gMtZRCjS81g"/>
    <edge id="_gFHduuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gFG2pOiaEd6gMtZRCjS81g" target="_gFG2quiaEd6gMtZRCjS81g"/>
    <edge id="_gFHdu-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gFG2quiaEd6gMtZRCjS81g" target="_gFG2qOiaEd6gMtZRCjS81g"/>
    <edge id="_gFHdu-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gFG2qOiaEd6gMtZRCjS81g" target="_gFG2quiaEd6gMtZRCjS81g"/>
    <edge id="_gFHdvOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gFG2quiaEd6gMtZRCjS81g" target="_gFG2qeiaEd6gMtZRCjS81g"/>
    <edge id="_gFHdvOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gFG2qeiaEd6gMtZRCjS81g" target="_gFG2quiaEd6gMtZRCjS81g"/>
    <edge id="_gFIr0OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gFG2q-iaEd6gMtZRCjS81g" target="_gFG2qeiaEd6gMtZRCjS81g"/>
    <edge id="_gFIr0OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gFG2qeiaEd6gMtZRCjS81g" target="_gFG2q-iaEd6gMtZRCjS81g"/>
    <edge id="_gFIr0eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gFG2rOiaEd6gMtZRCjS81g" target="_gFG2pOiaEd6gMtZRCjS81g"/>
    <edge id="_gFIr0eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gFG2pOiaEd6gMtZRCjS81g" target="_gFG2rOiaEd6gMtZRCjS81g"/>
    <edge id="_gFIr0uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gFG2rOiaEd6gMtZRCjS81g" target="_gFG2qOiaEd6gMtZRCjS81g"/>
    <edge id="_gFIr0uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gFG2qOiaEd6gMtZRCjS81g" target="_gFG2rOiaEd6gMtZRCjS81g"/>
    <edge id="_gFIr0-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gFG2rOiaEd6gMtZRCjS81g" target="_gFG2qeiaEd6gMtZRCjS81g"/>
    <edge id="_gFIr0-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gFG2qeiaEd6gMtZRCjS81g" target="_gFG2rOiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
