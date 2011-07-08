<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_dypr0OiaEd6gMtZRCjS81g" projectName="CSharp">
    <node className="Member" id="_dypr0-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="TypedAttribute" id="_dypr1OiaEd6gMtZRCjS81g"/>
    <node className="Field" id="_dypr1eiaEd6gMtZRCjS81g"/>
    <node className="Property" id="_dypr1uiaEd6gMtZRCjS81g">
      <attribute>isReadable</attribute>
      <attribute>isWritable</attribute>
    </node>
    <node className="MethodBase" id="_dypr1-iaEd6gMtZRCjS81g">
      <attribute>visibility</attribute>
      <attribute>isAbstract</attribute>
      <attribute>isFinal</attribute>
      <attribute>isStatic</attribute>
    </node>
    <node className="Constructor" id="_dypr2OiaEd6gMtZRCjS81g"/>
    <node className="Method" id="_dypr2eiaEd6gMtZRCjS81g"/>
    <node className="Type" id="_dypr2uiaEd6gMtZRCjS81g">
      <attribute>qualifiedName</attribute>
      <attribute>isAbstract</attribute>
      <attribute>visibility</attribute>
      <attribute>isSealed</attribute>
      <attribute>nameSpace</attribute>
    </node>
    <node className="Parameter" id="_dypr2-iaEd6gMtZRCjS81g">
      <attribute>isIn</attribute>
      <attribute>isOut</attribute>
      <attribute>name</attribute>
      <attribute>position</attribute>
    </node>
    <node className="Assembly" id="_dypr3OiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <edge id="_dyqS4-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dypr1-iaEd6gMtZRCjS81g" target="_dypr2-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">parameters</attribute>
    </edge>
    <edge id="_dyqS4-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dypr2-iaEd6gMtZRCjS81g" target="_dypr1-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dyqS6eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dypr2uiaEd6gMtZRCjS81g" target="_dypr0-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">members</attribute>
    </edge>
    <edge id="_dyqS6eiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dypr0-iaEd6gMtZRCjS81g" target="_dypr2uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dyqS8uiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dypr3OiaEd6gMtZRCjS81g" target="_dypr2uiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">content</attribute>
    </edge>
    <edge id="_dyqS8uiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dypr2uiaEd6gMtZRCjS81g" target="_dypr3OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dyqS4OiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dypr1OiaEd6gMtZRCjS81g" target="_dypr2uiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">type</attribute>
    </edge>
    <edge id="_dyqS4OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dypr2uiaEd6gMtZRCjS81g" target="_dypr1OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dyqS5uiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dypr2eiaEd6gMtZRCjS81g" target="_dypr2uiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">returnType</attribute>
    </edge>
    <edge id="_dyqS5uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dypr2uiaEd6gMtZRCjS81g" target="_dypr2eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dyqS7OiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dypr2uiaEd6gMtZRCjS81g" target="_dypr2uiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">super</attribute>
    </edge>
    <edge id="_dyqS7OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dypr2uiaEd6gMtZRCjS81g" target="_dypr2uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dyqS7-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dypr2-iaEd6gMtZRCjS81g" target="_dypr2uiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">type</attribute>
    </edge>
    <edge id="_dyqS7-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dypr2uiaEd6gMtZRCjS81g" target="_dypr2-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dyq58OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dypr1OiaEd6gMtZRCjS81g" target="_dypr0-iaEd6gMtZRCjS81g"/>
    <edge id="_dyq58OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dypr0-iaEd6gMtZRCjS81g" target="_dypr1OiaEd6gMtZRCjS81g"/>
    <edge id="_dyq58eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dypr1eiaEd6gMtZRCjS81g" target="_dypr1OiaEd6gMtZRCjS81g"/>
    <edge id="_dyq58eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dypr1OiaEd6gMtZRCjS81g" target="_dypr1eiaEd6gMtZRCjS81g"/>
    <edge id="_dyq58uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dypr1uiaEd6gMtZRCjS81g" target="_dypr1OiaEd6gMtZRCjS81g"/>
    <edge id="_dyq58uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dypr1OiaEd6gMtZRCjS81g" target="_dypr1uiaEd6gMtZRCjS81g"/>
    <edge id="_dyq58-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dypr1-iaEd6gMtZRCjS81g" target="_dypr0-iaEd6gMtZRCjS81g"/>
    <edge id="_dyq58-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dypr0-iaEd6gMtZRCjS81g" target="_dypr1-iaEd6gMtZRCjS81g"/>
    <edge id="_dyq59OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dypr2OiaEd6gMtZRCjS81g" target="_dypr1-iaEd6gMtZRCjS81g"/>
    <edge id="_dyq59OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dypr1-iaEd6gMtZRCjS81g" target="_dypr2OiaEd6gMtZRCjS81g"/>
    <edge id="_dyq59eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dypr2eiaEd6gMtZRCjS81g" target="_dypr1-iaEd6gMtZRCjS81g"/>
    <edge id="_dyq59eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dypr1-iaEd6gMtZRCjS81g" target="_dypr2eiaEd6gMtZRCjS81g"/>
    <edge id="_dyq59uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dypr2uiaEd6gMtZRCjS81g" target="_dypr0-iaEd6gMtZRCjS81g"/>
    <edge id="_dyq59uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dypr0-iaEd6gMtZRCjS81g" target="_dypr2uiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
