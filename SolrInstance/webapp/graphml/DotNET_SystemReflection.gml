<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_eE0Z4OiaEd6gMtZRCjS81g" projectName="DNSR">
    <node className="NamedElement" id="_eE0Z4-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Assembly" id="_eE0Z5OiaEd6gMtZRCjS81g">
      <attribute>location</attribute>
      <attribute>imageRuntimeVersion</attribute>
      <attribute>evidence</attribute>
      <attribute>codeBase</attribute>
    </node>
    <node className="ManifestResource" id="_eE0Z5eiaEd6gMtZRCjS81g">
      <attribute>content</attribute>
    </node>
    <node className="Module" id="_eE0Z5uiaEd6gMtZRCjS81g">
      <attribute>qualifiedName</attribute>
      <attribute>scopeName</attribute>
    </node>
    <node className="MemberInfo" id="_eE0Z5-iaEd6gMtZRCjS81g">
      <attribute>memberType</attribute>
    </node>
    <node className="PropertyInfo" id="_eE0Z6OiaEd6gMtZRCjS81g">
      <attribute>attributes</attribute>
    </node>
    <node className="FieldInfo" id="_eE0Z6eiaEd6gMtZRCjS81g">
      <attribute>attributes</attribute>
    </node>
    <node className="EventInfo" id="_eE0Z6uiaEd6gMtZRCjS81g">
      <attribute>isMulticast</attribute>
      <attribute>attributes</attribute>
    </node>
    <node className="ParameterInfo" id="_eE0Z6-iaEd6gMtZRCjS81g">
      <attribute>defaultValue</attribute>
      <attribute>position</attribute>
      <attribute>attributes</attribute>
    </node>
    <node className="MethodBase" id="_eE0Z7OiaEd6gMtZRCjS81g">
      <attribute>attributes</attribute>
    </node>
    <node className="MethodInfo" id="_eE0Z7eiaEd6gMtZRCjS81g"/>
    <node className="ConstructorInfo" id="_eE0Z7uiaEd6gMtZRCjS81g"/>
    <node className="Type" id="_eE0Z7-iaEd6gMtZRCjS81g">
      <attribute>namespace</attribute>
      <attribute>genericParameterAttributes</attribute>
      <attribute>typeAttributes</attribute>
    </node>
    <edge id="_eE0aB-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eE0Z5OiaEd6gMtZRCjS81g" target="_eE0Z5uiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">modules</attribute>
    </edge>
    <edge id="_eE0aB-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eE0Z5uiaEd6gMtZRCjS81g" target="_eE0Z5OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eE1A8eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eE0Z5OiaEd6gMtZRCjS81g" target="_eE0Z5eiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">manifest</attribute>
    </edge>
    <edge id="_eE1A8eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eE0Z5eiaEd6gMtZRCjS81g" target="_eE0Z5OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eE1A9OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eE0Z5uiaEd6gMtZRCjS81g" target="_eE0Z7-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">types</attribute>
    </edge>
    <edge id="_eE1A9OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eE0Z7-iaEd6gMtZRCjS81g" target="_eE0Z5uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eE1BA-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eE0Z7OiaEd6gMtZRCjS81g" target="_eE0Z6-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">parameters</attribute>
    </edge>
    <edge id="_eE1BA-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eE0Z6-iaEd6gMtZRCjS81g" target="_eE0Z7OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eE1BD-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eE0Z7-iaEd6gMtZRCjS81g" target="_eE0Z5-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">members</attribute>
    </edge>
    <edge id="_eE1BD-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eE0Z5-iaEd6gMtZRCjS81g" target="_eE0Z7-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eE0aBOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eE0Z5OiaEd6gMtZRCjS81g" target="_eE0Z7eiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">entryPoint</attribute>
    </edge>
    <edge id="_eE0aBOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eE0Z7eiaEd6gMtZRCjS81g" target="_eE0Z5OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eE0aCuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eE0Z5OiaEd6gMtZRCjS81g" target="_eE0Z5uiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">manifestModule</attribute>
    </edge>
    <edge id="_eE0aCuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eE0Z5uiaEd6gMtZRCjS81g" target="_eE0Z5OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eE0aDeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eE0Z5OiaEd6gMtZRCjS81g" target="_eE0Z5OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">referencedAssembly</attribute>
    </edge>
    <edge id="_eE0aDeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eE0Z5OiaEd6gMtZRCjS81g" target="_eE0Z5OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eE1A9-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eE0Z6OiaEd6gMtZRCjS81g" target="_eE0Z7-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">propertyType</attribute>
    </edge>
    <edge id="_eE1A9-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eE0Z7-iaEd6gMtZRCjS81g" target="_eE0Z6OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eE1A-uiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eE0Z6eiaEd6gMtZRCjS81g" target="_eE0Z7-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">fieldType</attribute>
    </edge>
    <edge id="_eE1A-uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eE0Z7-iaEd6gMtZRCjS81g" target="_eE0Z6eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eE1A_eiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eE0Z6uiaEd6gMtZRCjS81g" target="_eE0Z7-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">eventHandlerType</attribute>
    </edge>
    <edge id="_eE1A_eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eE0Z7-iaEd6gMtZRCjS81g" target="_eE0Z6uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eE1BAOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eE0Z6-iaEd6gMtZRCjS81g" target="_eE0Z7-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">parameterType</attribute>
    </edge>
    <edge id="_eE1BAOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eE0Z7-iaEd6gMtZRCjS81g" target="_eE0Z6-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eE1BBuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eE0Z7eiaEd6gMtZRCjS81g" target="_eE0Z7-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">returnType</attribute>
    </edge>
    <edge id="_eE1BBuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eE0Z7-iaEd6gMtZRCjS81g" target="_eE0Z7eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eE1BCeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eE0Z7-iaEd6gMtZRCjS81g" target="_eE0Z7-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">baseType</attribute>
    </edge>
    <edge id="_eE1BCeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eE0Z7-iaEd6gMtZRCjS81g" target="_eE0Z7-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eE1BDOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eE0Z7-iaEd6gMtZRCjS81g" target="_eE0Z7-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">interfaces</attribute>
    </edge>
    <edge id="_eE1BDOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eE0Z7-iaEd6gMtZRCjS81g" target="_eE0Z7-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eE22IOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eE0Z5OiaEd6gMtZRCjS81g" target="_eE0Z4-iaEd6gMtZRCjS81g"/>
    <edge id="_eE22IOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eE0Z4-iaEd6gMtZRCjS81g" target="_eE0Z5OiaEd6gMtZRCjS81g"/>
    <edge id="_eE22IeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eE0Z5uiaEd6gMtZRCjS81g" target="_eE0Z4-iaEd6gMtZRCjS81g"/>
    <edge id="_eE22IeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eE0Z4-iaEd6gMtZRCjS81g" target="_eE0Z5uiaEd6gMtZRCjS81g"/>
    <edge id="_eE22IuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eE0Z5-iaEd6gMtZRCjS81g" target="_eE0Z4-iaEd6gMtZRCjS81g"/>
    <edge id="_eE22IuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eE0Z4-iaEd6gMtZRCjS81g" target="_eE0Z5-iaEd6gMtZRCjS81g"/>
    <edge id="_eE22I-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eE0Z6OiaEd6gMtZRCjS81g" target="_eE0Z5-iaEd6gMtZRCjS81g"/>
    <edge id="_eE22I-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eE0Z5-iaEd6gMtZRCjS81g" target="_eE0Z6OiaEd6gMtZRCjS81g"/>
    <edge id="_eE22JOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eE0Z6eiaEd6gMtZRCjS81g" target="_eE0Z5-iaEd6gMtZRCjS81g"/>
    <edge id="_eE22JOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eE0Z5-iaEd6gMtZRCjS81g" target="_eE0Z6eiaEd6gMtZRCjS81g"/>
    <edge id="_eE22JeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eE0Z6uiaEd6gMtZRCjS81g" target="_eE0Z5-iaEd6gMtZRCjS81g"/>
    <edge id="_eE22JeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eE0Z5-iaEd6gMtZRCjS81g" target="_eE0Z6uiaEd6gMtZRCjS81g"/>
    <edge id="_eE22JuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eE0Z6-iaEd6gMtZRCjS81g" target="_eE0Z4-iaEd6gMtZRCjS81g"/>
    <edge id="_eE22JuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eE0Z4-iaEd6gMtZRCjS81g" target="_eE0Z6-iaEd6gMtZRCjS81g"/>
    <edge id="_eE22J-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eE0Z7OiaEd6gMtZRCjS81g" target="_eE0Z5-iaEd6gMtZRCjS81g"/>
    <edge id="_eE22J-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eE0Z5-iaEd6gMtZRCjS81g" target="_eE0Z7OiaEd6gMtZRCjS81g"/>
    <edge id="_eE3dMOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eE0Z7eiaEd6gMtZRCjS81g" target="_eE0Z7OiaEd6gMtZRCjS81g"/>
    <edge id="_eE3dMOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eE0Z7OiaEd6gMtZRCjS81g" target="_eE0Z7eiaEd6gMtZRCjS81g"/>
    <edge id="_eE3dMeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eE0Z7uiaEd6gMtZRCjS81g" target="_eE0Z7OiaEd6gMtZRCjS81g"/>
    <edge id="_eE3dMeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eE0Z7OiaEd6gMtZRCjS81g" target="_eE0Z7uiaEd6gMtZRCjS81g"/>
    <edge id="_eE3dMuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eE0Z7-iaEd6gMtZRCjS81g" target="_eE0Z5-iaEd6gMtZRCjS81g"/>
    <edge id="_eE3dMuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eE0Z5-iaEd6gMtZRCjS81g" target="_eE0Z7-iaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
