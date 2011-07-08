<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_dWzdUOiaEd6gMtZRCjS81g" projectName="AbstractSynthax">
    <node className="ModelElement" id="_dWzdU-iaEd6gMtZRCjS81g"/>
    <node className="Constraint" id="_dWzdVOiaEd6gMtZRCjS81g"/>
    <node className="TaggedValue" id="_dWzdVeiaEd6gMtZRCjS81g">
      <attribute>dataValue</attribute>
    </node>
    <node className="TagDefinition" id="_dWzdVuiaEd6gMtZRCjS81g">
      <attribute>tagType</attribute>
    </node>
    <node className="Multiplicity" id="_dWzdV-iaEd6gMtZRCjS81g">
      <attribute>value</attribute>
    </node>
    <node className="GeneralizableElement" id="_dWzdWOiaEd6gMtZRCjS81g"/>
    <node className="Stereotype" id="_dWzdWeiaEd6gMtZRCjS81g"/>
    <node className="Geometry" id="_dWzdWuiaEd6gMtZRCjS81g">
      <attribute>value</attribute>
    </node>
    <node className="Name" id="_dWzdW-iaEd6gMtZRCjS81g">
      <attribute>value</attribute>
    </node>
    <edge id="_dWzdauiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dWzdU-iaEd6gMtZRCjS81g" target="_dWzdVeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">taggedValue</attribute>
    </edge>
    <edge id="_dWzdauiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dWzdVeiaEd6gMtZRCjS81g" target="_dWzdU-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dW0EbeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dWzdWeiaEd6gMtZRCjS81g" target="_dWzdVuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">definedTag</attribute>
    </edge>
    <edge id="_dW0EbeiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dWzdVuiaEd6gMtZRCjS81g" target="_dWzdWeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dW0EcOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dWzdWeiaEd6gMtZRCjS81g" target="_dWzdVOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">stereotypeConstraint</attribute>
    </edge>
    <edge id="_dW0EcOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dWzdVOiaEd6gMtZRCjS81g" target="_dWzdWeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dWzdYeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dWzdU-iaEd6gMtZRCjS81g" target="_dWzdVeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">referenceTag</attribute>
    </edge>
    <edge id="_dWzdYeiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_dWzdVeiaEd6gMtZRCjS81g" target="_dWzdU-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_dWzdZOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dWzdU-iaEd6gMtZRCjS81g" target="_dWzdWeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">stereotype</attribute>
    </edge>
    <edge id="_dWzdZOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_dWzdWeiaEd6gMtZRCjS81g" target="_dWzdU-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_dWzdZ-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dWzdU-iaEd6gMtZRCjS81g" target="_dWzdVOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">constraint</attribute>
    </edge>
    <edge id="_dWzdZ-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_dWzdVOiaEd6gMtZRCjS81g" target="_dWzdU-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_dW0EYeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dWzdVeiaEd6gMtZRCjS81g" target="_dWzdVuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">type</attribute>
    </edge>
    <edge id="_dW0EYeiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_dWzdVuiaEd6gMtZRCjS81g" target="_dWzdVeiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_dW0EZOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dWzdVuiaEd6gMtZRCjS81g" target="_dWzdV-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">multiplicity</attribute>
    </edge>
    <edge id="_dW0EZOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dWzdV-iaEd6gMtZRCjS81g" target="_dWzdVuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dW0EZ-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dWzdWeiaEd6gMtZRCjS81g" target="_dWzdWuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">icon</attribute>
    </edge>
    <edge id="_dW0EZ-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dWzdWuiaEd6gMtZRCjS81g" target="_dWzdWeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dW0EauiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dWzdWeiaEd6gMtZRCjS81g" target="_dWzdW-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">baseClass</attribute>
    </edge>
    <edge id="_dW0EauiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dWzdW-iaEd6gMtZRCjS81g" target="_dWzdWeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dW0rcOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dWzdVuiaEd6gMtZRCjS81g" target="_dWzdU-iaEd6gMtZRCjS81g"/>
    <edge id="_dW0rcOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dWzdU-iaEd6gMtZRCjS81g" target="_dWzdVuiaEd6gMtZRCjS81g"/>
    <edge id="_dW0rceiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dWzdWeiaEd6gMtZRCjS81g" target="_dWzdWOiaEd6gMtZRCjS81g"/>
    <edge id="_dW0rceiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dWzdWOiaEd6gMtZRCjS81g" target="_dWzdWeiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
