<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_f8cC0OiaEd6gMtZRCjS81g" projectName="QoSConceptualModel">
    <node className="QoSComponent" id="_f8cC0-iaEd6gMtZRCjS81g"/>
    <node className="QoSProfile" id="_f8cC1OiaEd6gMtZRCjS81g"/>
    <node className="QoSContraints" id="_f8cC1eiaEd6gMtZRCjS81g"/>
    <node className="Operation" id="_f8cC1uiaEd6gMtZRCjS81g"/>
    <node className="CompoundProfile" id="_f8cC1-iaEd6gMtZRCjS81g"/>
    <node className="SimpleProfile" id="_f8cC2OiaEd6gMtZRCjS81g"/>
    <node className="ProfileTransition" id="_f8cC2eiaEd6gMtZRCjS81g"/>
    <node className="QoSStatement" id="_f8cC2uiaEd6gMtZRCjS81g"/>
    <node className="SingleQoSStatement" id="_f8cC2-iaEd6gMtZRCjS81g"/>
    <node className="CoumpoundQoSStatement" id="_f8cC3OiaEd6gMtZRCjS81g"/>
    <node className="QoSContraint" id="_f8cC3eiaEd6gMtZRCjS81g"/>
    <node className="QualificationKind" id="_f8cC3uiaEd6gMtZRCjS81g">
      <attribute>value</attribute>
    </node>
    <node className="QoSCharacteristic" id="_f8cC3-iaEd6gMtZRCjS81g"/>
    <node className="BooleanExpression" id="_f8cC4OiaEd6gMtZRCjS81g">
      <attribute>value</attribute>
    </node>
    <node className="MappingExpression" id="_f8cC4eiaEd6gMtZRCjS81g">
      <attribute>value</attribute>
    </node>
    <node className="StatisticalAttributekindKind" id="_f8cC4uiaEd6gMtZRCjS81g"/>
    <node className="Parameter" id="_f8cC4-iaEd6gMtZRCjS81g"/>
    <node className="DataType" id="_f8cC5OiaEd6gMtZRCjS81g"/>
    <node className="Domain" id="_f8cC5eiaEd6gMtZRCjS81g"/>
    <node className="DirectionKind" id="_f8cC5uiaEd6gMtZRCjS81g">
      <attribute>value</attribute>
    </node>
    <node className="Numeric" id="_f8cC5-iaEd6gMtZRCjS81g"/>
    <node className="Set" id="_f8cC6OiaEd6gMtZRCjS81g"/>
    <node className="Enumeration" id="_f8cC6eiaEd6gMtZRCjS81g"/>
    <node className="StringSet" id="_f8cC6uiaEd6gMtZRCjS81g">
      <attribute>string</attribute>
    </node>
    <edge id="_f8cC8-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_f8cC0-iaEd6gMtZRCjS81g" target="_f8cC1uiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">operations</attribute>
    </edge>
    <edge id="_f8cC8-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_f8cC1uiaEd6gMtZRCjS81g" target="_f8cC0-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_f8cp4-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_f8cC1-iaEd6gMtZRCjS81g" target="_f8cC2OiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">simpleProfile</attribute>
    </edge>
    <edge id="_f8cp4-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_f8cC2OiaEd6gMtZRCjS81g" target="_f8cC1-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_f8cp9eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_f8cC2eiaEd6gMtZRCjS81g" target="_f8cC1-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">compoundProfile</attribute>
    </edge>
    <edge id="_f8cp9eiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_f8cC1-iaEd6gMtZRCjS81g" target="_f8cC2eiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_f8cp-OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_f8cC2uiaEd6gMtZRCjS81g" target="_f8cC1eiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">contraints</attribute>
    </edge>
    <edge id="_f8cp-OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_f8cC1eiaEd6gMtZRCjS81g" target="_f8cC2uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_f8cp--iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_f8cC2uiaEd6gMtZRCjS81g" target="_f8cC4-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">parameter</attribute>
    </edge>
    <edge id="_f8cp--iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_f8cC4-iaEd6gMtZRCjS81g" target="_f8cC2uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_f8cp_uiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_f8cC2-iaEd6gMtZRCjS81g" target="_f8cC3eiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">contraint</attribute>
    </edge>
    <edge id="_f8cp_uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_f8cC3eiaEd6gMtZRCjS81g" target="_f8cC2-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_f8cqAeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_f8cC3OiaEd6gMtZRCjS81g" target="_f8cC2uiaEd6gMtZRCjS81g">
      <attribute lowerValue="2" upperValue="*">statement</attribute>
    </edge>
    <edge id="_f8cqAeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_f8cC2uiaEd6gMtZRCjS81g" target="_f8cC3OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_f8dQ8eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_f8cC3-iaEd6gMtZRCjS81g" target="_f8cC4uiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">statisticalAttribute</attribute>
    </edge>
    <edge id="_f8dQ8eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_f8cC4uiaEd6gMtZRCjS81g" target="_f8cC3-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_f8dQ9OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_f8cC3-iaEd6gMtZRCjS81g" target="_f8cC4-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">parameter</attribute>
    </edge>
    <edge id="_f8dQ9OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_f8cC4-iaEd6gMtZRCjS81g" target="_f8cC3-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_f8dQ_eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_f8cC6OiaEd6gMtZRCjS81g" target="_f8cC6uiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">stringSet</attribute>
    </edge>
    <edge id="_f8dQ_eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_f8cC6uiaEd6gMtZRCjS81g" target="_f8cC6OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_f8cC8OiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_f8cC0-iaEd6gMtZRCjS81g" target="_f8cC1OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">profile</attribute>
    </edge>
    <edge id="_f8cC8OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_f8cC1OiaEd6gMtZRCjS81g" target="_f8cC0-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_f8cC9uiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_f8cC1OiaEd6gMtZRCjS81g" target="_f8cC2uiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">provide</attribute>
    </edge>
    <edge id="_f8cC9uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_f8cC2uiaEd6gMtZRCjS81g" target="_f8cC1OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_f8cp4OiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_f8cC1OiaEd6gMtZRCjS81g" target="_f8cC2uiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">uses</attribute>
    </edge>
    <edge id="_f8cp4OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_f8cC2uiaEd6gMtZRCjS81g" target="_f8cC1OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_f8cp5uiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_f8cC2OiaEd6gMtZRCjS81g" target="_f8cC2uiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">use</attribute>
    </edge>
    <edge id="_f8cp5uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_f8cC2uiaEd6gMtZRCjS81g" target="_f8cC2OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_f8cp6eiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_f8cC2OiaEd6gMtZRCjS81g" target="_f8cC2uiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">provides</attribute>
    </edge>
    <edge id="_f8cp6eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_f8cC2uiaEd6gMtZRCjS81g" target="_f8cC2OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_f8cp7OiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_f8cC2eiaEd6gMtZRCjS81g" target="_f8cC1uiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">operations</attribute>
    </edge>
    <edge id="_f8cp7OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_f8cC1uiaEd6gMtZRCjS81g" target="_f8cC2eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_f8cp7-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_f8cC2eiaEd6gMtZRCjS81g" target="_f8cC2OiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">from</attribute>
    </edge>
    <edge id="_f8cp7-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_f8cC2OiaEd6gMtZRCjS81g" target="_f8cC2eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_f8cp8uiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_f8cC2eiaEd6gMtZRCjS81g" target="_f8cC2OiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">to</attribute>
    </edge>
    <edge id="_f8cp8uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_f8cC2OiaEd6gMtZRCjS81g" target="_f8cC2eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_f8cqBOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_f8cC3eiaEd6gMtZRCjS81g" target="_f8cC3uiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">qualification</attribute>
    </edge>
    <edge id="_f8cqBOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_f8cC3uiaEd6gMtZRCjS81g" target="_f8cC3eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_f8cqB-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_f8cC3-iaEd6gMtZRCjS81g" target="_f8cC4OiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">invariant</attribute>
    </edge>
    <edge id="_f8cqB-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_f8cC4OiaEd6gMtZRCjS81g" target="_f8cC3-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_f8cqCuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_f8cC3-iaEd6gMtZRCjS81g" target="_f8cC4eiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">parallel_and_composition</attribute>
    </edge>
    <edge id="_f8cqCuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_f8cC4eiaEd6gMtZRCjS81g" target="_f8cC3-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_f8cqDeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_f8cC3-iaEd6gMtZRCjS81g" target="_f8cC4eiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">parallel_or_composition</attribute>
    </edge>
    <edge id="_f8cqDeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_f8cC4eiaEd6gMtZRCjS81g" target="_f8cC3-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_f8cqEOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_f8cC3-iaEd6gMtZRCjS81g" target="_f8cC4eiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">sequential_composition</attribute>
    </edge>
    <edge id="_f8cqEOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_f8cC4eiaEd6gMtZRCjS81g" target="_f8cC3-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_f8cqE-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_f8cC3-iaEd6gMtZRCjS81g" target="_f8cC4eiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">values</attribute>
    </edge>
    <edge id="_f8cqE-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_f8cC4eiaEd6gMtZRCjS81g" target="_f8cC3-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_f8dQ9-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_f8cC3-iaEd6gMtZRCjS81g" target="_f8cC5eiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">domain</attribute>
    </edge>
    <edge id="_f8dQ9-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_f8cC5eiaEd6gMtZRCjS81g" target="_f8cC3-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_f8dQ-uiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_f8cC5eiaEd6gMtZRCjS81g" target="_f8cC5uiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">direction</attribute>
    </edge>
    <edge id="_f8dQ-uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_f8cC5uiaEd6gMtZRCjS81g" target="_f8cC5eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_f8d4AOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_f8cC1eiaEd6gMtZRCjS81g" target="_f8cC3-iaEd6gMtZRCjS81g"/>
    <edge id="_f8d4AOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_f8cC3-iaEd6gMtZRCjS81g" target="_f8cC1eiaEd6gMtZRCjS81g"/>
    <edge id="_f8d4AeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_f8cC1-iaEd6gMtZRCjS81g" target="_f8cC1OiaEd6gMtZRCjS81g"/>
    <edge id="_f8d4AeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_f8cC1OiaEd6gMtZRCjS81g" target="_f8cC1-iaEd6gMtZRCjS81g"/>
    <edge id="_f8d4AuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_f8cC2OiaEd6gMtZRCjS81g" target="_f8cC1OiaEd6gMtZRCjS81g"/>
    <edge id="_f8d4AuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_f8cC1OiaEd6gMtZRCjS81g" target="_f8cC2OiaEd6gMtZRCjS81g"/>
    <edge id="_f8d4A-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_f8cC2-iaEd6gMtZRCjS81g" target="_f8cC2uiaEd6gMtZRCjS81g"/>
    <edge id="_f8d4A-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_f8cC2uiaEd6gMtZRCjS81g" target="_f8cC2-iaEd6gMtZRCjS81g"/>
    <edge id="_f8d4BOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_f8cC3OiaEd6gMtZRCjS81g" target="_f8cC2uiaEd6gMtZRCjS81g"/>
    <edge id="_f8d4BOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_f8cC2uiaEd6gMtZRCjS81g" target="_f8cC3OiaEd6gMtZRCjS81g"/>
    <edge id="_f8d4BeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_f8cC3uiaEd6gMtZRCjS81g" target="_f8cC3-iaEd6gMtZRCjS81g"/>
    <edge id="_f8d4BeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_f8cC3-iaEd6gMtZRCjS81g" target="_f8cC3uiaEd6gMtZRCjS81g"/>
    <edge id="_f8efEOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_f8cC5eiaEd6gMtZRCjS81g" target="_f8cC5OiaEd6gMtZRCjS81g"/>
    <edge id="_f8efEOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_f8cC5OiaEd6gMtZRCjS81g" target="_f8cC5eiaEd6gMtZRCjS81g"/>
    <edge id="_f8efEeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_f8cC5-iaEd6gMtZRCjS81g" target="_f8cC5eiaEd6gMtZRCjS81g"/>
    <edge id="_f8efEeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_f8cC5eiaEd6gMtZRCjS81g" target="_f8cC5-iaEd6gMtZRCjS81g"/>
    <edge id="_f8efEuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_f8cC6OiaEd6gMtZRCjS81g" target="_f8cC5eiaEd6gMtZRCjS81g"/>
    <edge id="_f8efEuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_f8cC5eiaEd6gMtZRCjS81g" target="_f8cC6OiaEd6gMtZRCjS81g"/>
    <edge id="_f8efE-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_f8cC6eiaEd6gMtZRCjS81g" target="_f8cC5eiaEd6gMtZRCjS81g"/>
    <edge id="_f8efE-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_f8cC5eiaEd6gMtZRCjS81g" target="_f8cC6eiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
