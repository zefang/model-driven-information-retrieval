<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_egsdkOiaEd6gMtZRCjS81g" projectName="JavaSource">
    <node className="JavaSource" id="_egsdk-iaEd6gMtZRCjS81g"/>
    <node className="NamedElement" id="_egsdlOiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="ClassDeclaration" id="_egsdleiaEd6gMtZRCjS81g"/>
    <node className="MethodDefinition" id="_egsdluiaEd6gMtZRCjS81g"/>
    <node className="MethodInvocation" id="_egsdl-iaEd6gMtZRCjS81g"/>
    <edge id="_egsdmeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_egsdk-iaEd6gMtZRCjS81g" target="_egsdleiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">classes</attribute>
    </edge>
    <edge id="_egsdmeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_egsdleiaEd6gMtZRCjS81g" target="_egsdk-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_egsdn-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_egsdleiaEd6gMtZRCjS81g" target="_egsdluiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">methods</attribute>
    </edge>
    <edge id="_egsdn-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_egsdluiaEd6gMtZRCjS81g" target="_egsdleiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_egsdouiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_egsdluiaEd6gMtZRCjS81g" target="_egsdl-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">invocations</attribute>
    </edge>
    <edge id="_egsdouiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_egsdl-iaEd6gMtZRCjS81g" target="_egsdluiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_egsdnOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_egsdleiaEd6gMtZRCjS81g" target="_egsdleiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">superclass</attribute>
    </edge>
    <edge id="_egsdnOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_egsdleiaEd6gMtZRCjS81g" target="_egsdleiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_egsdpeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_egsdl-iaEd6gMtZRCjS81g" target="_egsdluiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">method</attribute>
    </edge>
    <edge id="_egsdpeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_egsdluiaEd6gMtZRCjS81g" target="_egsdl-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_egtEoeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_egsdleiaEd6gMtZRCjS81g" target="_egsdlOiaEd6gMtZRCjS81g"/>
    <edge id="_egtEoeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_egsdlOiaEd6gMtZRCjS81g" target="_egsdleiaEd6gMtZRCjS81g"/>
    <edge id="_egtEouiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_egsdluiaEd6gMtZRCjS81g" target="_egsdlOiaEd6gMtZRCjS81g"/>
    <edge id="_egtEouiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_egsdlOiaEd6gMtZRCjS81g" target="_egsdluiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
