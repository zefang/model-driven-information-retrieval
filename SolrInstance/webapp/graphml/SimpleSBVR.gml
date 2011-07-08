<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_a-_yAAHAEd-bjfeyKVukcA" projectName="SimpleSBVR">
    <node className="Root" id="_a-_yAwHAEd-bjfeyKVukcA"/>
    <node className="Element" id="_a-_yBAHAEd-bjfeyKVukcA">
      <attribute>objectName</attribute>
    </node>
    <node className="Representation" id="_a-_yBQHAEd-bjfeyKVukcA"/>
    <node className="Designation" id="_a-_yBgHAEd-bjfeyKVukcA"/>
    <node className="Text" id="_a-_yBwHAEd-bjfeyKVukcA">
      <attribute>value</attribute>
    </node>
    <node className="Meaning" id="_a-_yCAHAEd-bjfeyKVukcA"/>
    <node className="Concept" id="_a-_yCQHAEd-bjfeyKVukcA"/>
    <node className="NounConcept" id="_a-_yCgHAEd-bjfeyKVukcA"/>
    <node className="ObjectType" id="_a-_yCwHAEd-bjfeyKVukcA"/>
    <node className="IndividualConcept" id="_a-_yDAHAEd-bjfeyKVukcA"/>
    <node className="DataType" id="_a-_yDQHAEd-bjfeyKVukcA"/>
    <node className="NonEmptyString" id="_a-_yDgHAEd-bjfeyKVukcA">
      <attribute>value</attribute>
    </node>
    <node className="NonNegativeInteger" id="_a-_yDwHAEd-bjfeyKVukcA">
      <attribute>value</attribute>
    </node>
    <node className="FactType" id="_a-_yEAHAEd-bjfeyKVukcA"/>
    <node className="BinaryFactType" id="_a-_yEQHAEd-bjfeyKVukcA"/>
    <node className="IsPropertyOfFactType" id="_a-_yEgHAEd-bjfeyKVukcA"/>
    <node className="AssociativeFactType" id="_a-_yEwHAEd-bjfeyKVukcA"/>
    <node className="CategorizationFactType" id="_a-_yFAHAEd-bjfeyKVukcA"/>
    <node className="ObjectificationFactType" id="_a-_yFQHAEd-bjfeyKVukcA"/>
    <node className="Role" id="_a-_yFgHAEd-bjfeyKVukcA"/>
    <node className="FactTypeRole" id="_a-_yFwHAEd-bjfeyKVukcA"/>
    <node className="LogicalFormulation" id="_a-_yGAHAEd-bjfeyKVukcA"/>
    <node className="AtomicFormulation" id="_a-_yGQHAEd-bjfeyKVukcA"/>
    <node className="BinaryAtomicFormulation" id="_a-_yGgHAEd-bjfeyKVukcA"/>
    <node className="NecessityFormulation" id="_a-_yGwHAEd-bjfeyKVukcA"/>
    <node className="Quantification" id="_a-_yHAHAEd-bjfeyKVukcA"/>
    <node className="UniversalQuantification" id="_a-_yHQHAEd-bjfeyKVukcA"/>
    <node className="AtLeastNQuantification" id="_a-_yHgHAEd-bjfeyKVukcA"/>
    <node className="ExactlyNQuantification" id="_a-_yHwHAEd-bjfeyKVukcA"/>
    <node className="AtMostNQuantification" id="_a-_yIAHAEd-bjfeyKVukcA"/>
    <node className="BindableTarget" id="_a-_yIQHAEd-bjfeyKVukcA"/>
    <node className="Variable" id="_a-_yIgHAEd-bjfeyKVukcA"/>
    <node className="RoleBinding" id="_a-_yIwHAEd-bjfeyKVukcA"/>
    <edge id="_a-_yKAHAEd-bjfeyKVukcA" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_a-_yAwHAEd-bjfeyKVukcA" target="_a-_yBAHAEd-bjfeyKVukcA">
      <attribute lowerValue="0" upperValue="*">elements</attribute>
    </edge>
    <edge id="_a-_yKAHAEd-bjfeyKVukcA-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_a-_yBAHAEd-bjfeyKVukcA" target="_a-_yAwHAEd-bjfeyKVukcA" upperValue="1"/>
    <edge id="_a-_yKwHAEd-bjfeyKVukcA" relType="ASSOCIATION" source="_a-_yBQHAEd-bjfeyKVukcA" target="_a-_yCAHAEd-bjfeyKVukcA">
      <attribute lowerValue="1" upperValue="1">meaning</attribute>
    </edge>
    <edge id="_a-_yKwHAEd-bjfeyKVukcA-opposite" lowerValue="0" relType="ASSOCIATION" source="_a-_yCAHAEd-bjfeyKVukcA" target="_a-_yBQHAEd-bjfeyKVukcA" upperValue="*"/>
    <edge id="_a-_yLgHAEd-bjfeyKVukcA" relType="ASSOCIATION" source="_a-_yBgHAEd-bjfeyKVukcA" target="_a-_yBwHAEd-bjfeyKVukcA">
      <attribute lowerValue="1" upperValue="1">text</attribute>
    </edge>
    <edge id="_a-_yLgHAEd-bjfeyKVukcA-opposite" lowerValue="1" relType="ASSOCIATION" source="_a-_yBwHAEd-bjfeyKVukcA" target="_a-_yBgHAEd-bjfeyKVukcA" upperValue="1"/>
    <edge id="_a-_yMQHAEd-bjfeyKVukcA" relType="ASSOCIATION" source="_a-_yCwHAEd-bjfeyKVukcA" target="_a-_yCwHAEd-bjfeyKVukcA">
      <attribute lowerValue="0" upperValue="1">specializes</attribute>
    </edge>
    <edge id="_a-_yMQHAEd-bjfeyKVukcA-opposite" lowerValue="0" relType="ASSOCIATION" source="_a-_yCwHAEd-bjfeyKVukcA" target="_a-_yCwHAEd-bjfeyKVukcA" upperValue="*"/>
    <edge id="_a-_yNAHAEd-bjfeyKVukcA" relType="ASSOCIATION" source="_a-_yDAHAEd-bjfeyKVukcA" target="_a-_yCwHAEd-bjfeyKVukcA">
      <attribute lowerValue="0" upperValue="1">instanceOf</attribute>
    </edge>
    <edge id="_a-_yNAHAEd-bjfeyKVukcA-opposite" lowerValue="1" relType="ASSOCIATION" source="_a-_yCwHAEd-bjfeyKVukcA" target="_a-_yDAHAEd-bjfeyKVukcA" upperValue="1"/>
    <edge id="_a-_yNwHAEd-bjfeyKVukcA" relType="ASSOCIATION" source="_a-_yEQHAEd-bjfeyKVukcA" target="_a-_yFwHAEd-bjfeyKVukcA">
      <attribute lowerValue="1" upperValue="1">role1</attribute>
    </edge>
    <edge id="_a-_yNwHAEd-bjfeyKVukcA-opposite" lowerValue="1" relType="ASSOCIATION" source="_a-_yFwHAEd-bjfeyKVukcA" target="_a-_yEQHAEd-bjfeyKVukcA" upperValue="1"/>
    <edge id="_a-_yOgHAEd-bjfeyKVukcA" relType="ASSOCIATION" source="_a-_yEQHAEd-bjfeyKVukcA" target="_a-_yFwHAEd-bjfeyKVukcA">
      <attribute lowerValue="1" upperValue="1">role2</attribute>
    </edge>
    <edge id="_a-_yOgHAEd-bjfeyKVukcA-opposite" lowerValue="1" relType="ASSOCIATION" source="_a-_yFwHAEd-bjfeyKVukcA" target="_a-_yEQHAEd-bjfeyKVukcA" upperValue="1"/>
    <edge id="_a-_yPQHAEd-bjfeyKVukcA" relType="ASSOCIATION" source="_a-_yFgHAEd-bjfeyKVukcA" target="_a-_yCgHAEd-bjfeyKVukcA">
      <attribute lowerValue="1" upperValue="1">nounConcept</attribute>
    </edge>
    <edge id="_a-_yPQHAEd-bjfeyKVukcA-opposite" lowerValue="1" relType="ASSOCIATION" source="_a-_yCgHAEd-bjfeyKVukcA" target="_a-_yFgHAEd-bjfeyKVukcA" upperValue="1"/>
    <edge id="_a-_yQAHAEd-bjfeyKVukcA" relType="ASSOCIATION" source="_a-_yGQHAEd-bjfeyKVukcA" target="_a-_yEAHAEd-bjfeyKVukcA">
      <attribute lowerValue="1" upperValue="1">isBasedOn</attribute>
    </edge>
    <edge id="_a-_yQAHAEd-bjfeyKVukcA-opposite" lowerValue="1" relType="ASSOCIATION" source="_a-_yEAHAEd-bjfeyKVukcA" target="_a-_yGQHAEd-bjfeyKVukcA" upperValue="1"/>
    <edge id="_a-_yQwHAEd-bjfeyKVukcA" relType="ASSOCIATION" source="_a-_yGgHAEd-bjfeyKVukcA" target="_a-_yIwHAEd-bjfeyKVukcA">
      <attribute lowerValue="1" upperValue="1">roleBinding1</attribute>
    </edge>
    <edge id="_a-_yQwHAEd-bjfeyKVukcA-opposite" lowerValue="1" relType="ASSOCIATION" source="_a-_yIwHAEd-bjfeyKVukcA" target="_a-_yGgHAEd-bjfeyKVukcA" upperValue="1"/>
    <edge id="_a-_yRgHAEd-bjfeyKVukcA" relType="ASSOCIATION" source="_a-_yGgHAEd-bjfeyKVukcA" target="_a-_yIwHAEd-bjfeyKVukcA">
      <attribute lowerValue="1" upperValue="1">roleBinding2</attribute>
    </edge>
    <edge id="_a-_yRgHAEd-bjfeyKVukcA-opposite" lowerValue="1" relType="ASSOCIATION" source="_a-_yIwHAEd-bjfeyKVukcA" target="_a-_yGgHAEd-bjfeyKVukcA" upperValue="1"/>
    <edge id="_a-_ySQHAEd-bjfeyKVukcA" relType="ASSOCIATION" source="_a-_yHAHAEd-bjfeyKVukcA" target="_a-_yIgHAEd-bjfeyKVukcA">
      <attribute lowerValue="1" upperValue="1">introducedVariable</attribute>
    </edge>
    <edge id="_a-_ySQHAEd-bjfeyKVukcA-opposite" lowerValue="1" relType="ASSOCIATION" source="_a-_yIgHAEd-bjfeyKVukcA" target="_a-_yHAHAEd-bjfeyKVukcA" upperValue="1"/>
    <edge id="_a-_yTAHAEd-bjfeyKVukcA" relType="ASSOCIATION" source="_a-_yHAHAEd-bjfeyKVukcA" target="_a-_yGAHAEd-bjfeyKVukcA">
      <attribute lowerValue="1" upperValue="1">scopesOver</attribute>
    </edge>
    <edge id="_a-_yTAHAEd-bjfeyKVukcA-opposite" lowerValue="1" relType="ASSOCIATION" source="_a-_yGAHAEd-bjfeyKVukcA" target="_a-_yHAHAEd-bjfeyKVukcA" upperValue="1"/>
    <edge id="_a-_yTwHAEd-bjfeyKVukcA" relType="ASSOCIATION" source="_a-_yHgHAEd-bjfeyKVukcA" target="_a-_yDwHAEd-bjfeyKVukcA">
      <attribute lowerValue="1" upperValue="1">minCardinality</attribute>
    </edge>
    <edge id="_a-_yTwHAEd-bjfeyKVukcA-opposite" lowerValue="1" relType="ASSOCIATION" source="_a-_yDwHAEd-bjfeyKVukcA" target="_a-_yHgHAEd-bjfeyKVukcA" upperValue="1"/>
    <edge id="_a-_yUgHAEd-bjfeyKVukcA" relType="ASSOCIATION" source="_a-_yHwHAEd-bjfeyKVukcA" target="_a-_yDwHAEd-bjfeyKVukcA">
      <attribute lowerValue="1" upperValue="1">cardinality</attribute>
    </edge>
    <edge id="_a-_yUgHAEd-bjfeyKVukcA-opposite" lowerValue="1" relType="ASSOCIATION" source="_a-_yDwHAEd-bjfeyKVukcA" target="_a-_yHwHAEd-bjfeyKVukcA" upperValue="1"/>
    <edge id="_a-_yVQHAEd-bjfeyKVukcA" relType="ASSOCIATION" source="_a-_yIAHAEd-bjfeyKVukcA" target="_a-_yDwHAEd-bjfeyKVukcA">
      <attribute lowerValue="1" upperValue="1">maxCardinality</attribute>
    </edge>
    <edge id="_a-_yVQHAEd-bjfeyKVukcA-opposite" lowerValue="1" relType="ASSOCIATION" source="_a-_yDwHAEd-bjfeyKVukcA" target="_a-_yIAHAEd-bjfeyKVukcA" upperValue="1"/>
    <edge id="_a-_yWAHAEd-bjfeyKVukcA" relType="ASSOCIATION" source="_a-_yIgHAEd-bjfeyKVukcA" target="_a-_yCwHAEd-bjfeyKVukcA">
      <attribute lowerValue="1" upperValue="1">rangesOver</attribute>
    </edge>
    <edge id="_a-_yWAHAEd-bjfeyKVukcA-opposite" lowerValue="1" relType="ASSOCIATION" source="_a-_yCwHAEd-bjfeyKVukcA" target="_a-_yIgHAEd-bjfeyKVukcA" upperValue="1"/>
    <edge id="_a_JjAgHAEd-bjfeyKVukcA" relType="ASSOCIATION" source="_a-_yIwHAEd-bjfeyKVukcA" target="_a-_yGQHAEd-bjfeyKVukcA">
      <attribute lowerValue="1" upperValue="1">occursIn</attribute>
    </edge>
    <edge id="_a_JjAgHAEd-bjfeyKVukcA-opposite" lowerValue="1" relType="ASSOCIATION" source="_a-_yGQHAEd-bjfeyKVukcA" target="_a-_yIwHAEd-bjfeyKVukcA" upperValue="1"/>
    <edge id="_a_JjBQHAEd-bjfeyKVukcA" relType="ASSOCIATION" source="_a-_yIwHAEd-bjfeyKVukcA" target="_a-_yEAHAEd-bjfeyKVukcA">
      <attribute lowerValue="1" upperValue="1">isOf</attribute>
    </edge>
    <edge id="_a_JjBQHAEd-bjfeyKVukcA-opposite" lowerValue="1" relType="ASSOCIATION" source="_a-_yEAHAEd-bjfeyKVukcA" target="_a-_yIwHAEd-bjfeyKVukcA" upperValue="1"/>
    <edge id="_a_JjCAHAEd-bjfeyKVukcA" relType="ASSOCIATION" source="_a-_yIwHAEd-bjfeyKVukcA" target="_a-_yIQHAEd-bjfeyKVukcA">
      <attribute lowerValue="1" upperValue="1">bindsTo</attribute>
    </edge>
    <edge id="_a_JjCAHAEd-bjfeyKVukcA-opposite" lowerValue="1" relType="ASSOCIATION" source="_a-_yIQHAEd-bjfeyKVukcA" target="_a-_yIwHAEd-bjfeyKVukcA" upperValue="1"/>
    <edge id="_a_JjDQHAEd-bjfeyKVukcA" relType="GENERALIZATION_CHILD_FATHER" source="_a-_yBQHAEd-bjfeyKVukcA" target="_a-_yBAHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjDQHAEd-bjfeyKVukcA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_a-_yBAHAEd-bjfeyKVukcA" target="_a-_yBQHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjDgHAEd-bjfeyKVukcA" relType="GENERALIZATION_CHILD_FATHER" source="_a-_yBgHAEd-bjfeyKVukcA" target="_a-_yBQHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjDgHAEd-bjfeyKVukcA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_a-_yBQHAEd-bjfeyKVukcA" target="_a-_yBgHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjDwHAEd-bjfeyKVukcA" relType="GENERALIZATION_CHILD_FATHER" source="_a-_yBwHAEd-bjfeyKVukcA" target="_a-_yBAHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjDwHAEd-bjfeyKVukcA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_a-_yBAHAEd-bjfeyKVukcA" target="_a-_yBwHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjEAHAEd-bjfeyKVukcA" relType="GENERALIZATION_CHILD_FATHER" source="_a-_yCAHAEd-bjfeyKVukcA" target="_a-_yBAHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjEAHAEd-bjfeyKVukcA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_a-_yBAHAEd-bjfeyKVukcA" target="_a-_yCAHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjEQHAEd-bjfeyKVukcA" relType="GENERALIZATION_CHILD_FATHER" source="_a-_yCQHAEd-bjfeyKVukcA" target="_a-_yCAHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjEQHAEd-bjfeyKVukcA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_a-_yCAHAEd-bjfeyKVukcA" target="_a-_yCQHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjEgHAEd-bjfeyKVukcA" relType="GENERALIZATION_CHILD_FATHER" source="_a-_yCgHAEd-bjfeyKVukcA" target="_a-_yCQHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjEgHAEd-bjfeyKVukcA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_a-_yCQHAEd-bjfeyKVukcA" target="_a-_yCgHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjEwHAEd-bjfeyKVukcA" relType="GENERALIZATION_CHILD_FATHER" source="_a-_yCwHAEd-bjfeyKVukcA" target="_a-_yCgHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjEwHAEd-bjfeyKVukcA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_a-_yCgHAEd-bjfeyKVukcA" target="_a-_yCwHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjFAHAEd-bjfeyKVukcA" relType="GENERALIZATION_CHILD_FATHER" source="_a-_yDAHAEd-bjfeyKVukcA" target="_a-_yCgHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjFAHAEd-bjfeyKVukcA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_a-_yCgHAEd-bjfeyKVukcA" target="_a-_yDAHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjFQHAEd-bjfeyKVukcA" relType="GENERALIZATION_CHILD_FATHER" source="_a-_yDQHAEd-bjfeyKVukcA" target="_a-_yCgHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjFQHAEd-bjfeyKVukcA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_a-_yCgHAEd-bjfeyKVukcA" target="_a-_yDQHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjFgHAEd-bjfeyKVukcA" relType="GENERALIZATION_CHILD_FATHER" source="_a-_yDgHAEd-bjfeyKVukcA" target="_a-_yDQHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjFgHAEd-bjfeyKVukcA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_a-_yDQHAEd-bjfeyKVukcA" target="_a-_yDgHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjFwHAEd-bjfeyKVukcA" relType="GENERALIZATION_CHILD_FATHER" source="_a-_yDwHAEd-bjfeyKVukcA" target="_a-_yDQHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjFwHAEd-bjfeyKVukcA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_a-_yDQHAEd-bjfeyKVukcA" target="_a-_yDwHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjGAHAEd-bjfeyKVukcA" relType="GENERALIZATION_CHILD_FATHER" source="_a-_yEAHAEd-bjfeyKVukcA" target="_a-_yCQHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjGAHAEd-bjfeyKVukcA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_a-_yCQHAEd-bjfeyKVukcA" target="_a-_yEAHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjGQHAEd-bjfeyKVukcA" relType="GENERALIZATION_CHILD_FATHER" source="_a-_yEQHAEd-bjfeyKVukcA" target="_a-_yEAHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjGQHAEd-bjfeyKVukcA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_a-_yEAHAEd-bjfeyKVukcA" target="_a-_yEQHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjGgHAEd-bjfeyKVukcA" relType="GENERALIZATION_CHILD_FATHER" source="_a-_yEgHAEd-bjfeyKVukcA" target="_a-_yEQHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjGgHAEd-bjfeyKVukcA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_a-_yEQHAEd-bjfeyKVukcA" target="_a-_yEgHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjGwHAEd-bjfeyKVukcA" relType="GENERALIZATION_CHILD_FATHER" source="_a-_yEwHAEd-bjfeyKVukcA" target="_a-_yEQHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjGwHAEd-bjfeyKVukcA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_a-_yEQHAEd-bjfeyKVukcA" target="_a-_yEwHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjHAHAEd-bjfeyKVukcA" relType="GENERALIZATION_CHILD_FATHER" source="_a-_yFAHAEd-bjfeyKVukcA" target="_a-_yEQHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjHAHAEd-bjfeyKVukcA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_a-_yEQHAEd-bjfeyKVukcA" target="_a-_yFAHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjHQHAEd-bjfeyKVukcA" relType="GENERALIZATION_CHILD_FATHER" source="_a-_yFQHAEd-bjfeyKVukcA" target="_a-_yEQHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjHQHAEd-bjfeyKVukcA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_a-_yEQHAEd-bjfeyKVukcA" target="_a-_yFQHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjHgHAEd-bjfeyKVukcA" relType="GENERALIZATION_CHILD_FATHER" source="_a-_yFgHAEd-bjfeyKVukcA" target="_a-_yBAHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjHgHAEd-bjfeyKVukcA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_a-_yBAHAEd-bjfeyKVukcA" target="_a-_yFgHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjHwHAEd-bjfeyKVukcA" relType="GENERALIZATION_CHILD_FATHER" source="_a-_yFwHAEd-bjfeyKVukcA" target="_a-_yFgHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjHwHAEd-bjfeyKVukcA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_a-_yFgHAEd-bjfeyKVukcA" target="_a-_yFwHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjIAHAEd-bjfeyKVukcA" relType="GENERALIZATION_CHILD_FATHER" source="_a-_yGAHAEd-bjfeyKVukcA" target="_a-_yCAHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjIAHAEd-bjfeyKVukcA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_a-_yCAHAEd-bjfeyKVukcA" target="_a-_yGAHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjIQHAEd-bjfeyKVukcA" relType="GENERALIZATION_CHILD_FATHER" source="_a-_yGQHAEd-bjfeyKVukcA" target="_a-_yGAHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjIQHAEd-bjfeyKVukcA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_a-_yGAHAEd-bjfeyKVukcA" target="_a-_yGQHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjIgHAEd-bjfeyKVukcA" relType="GENERALIZATION_CHILD_FATHER" source="_a-_yGgHAEd-bjfeyKVukcA" target="_a-_yGQHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjIgHAEd-bjfeyKVukcA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_a-_yGQHAEd-bjfeyKVukcA" target="_a-_yGgHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjIwHAEd-bjfeyKVukcA" relType="GENERALIZATION_CHILD_FATHER" source="_a-_yGwHAEd-bjfeyKVukcA" target="_a-_yGAHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjIwHAEd-bjfeyKVukcA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_a-_yGAHAEd-bjfeyKVukcA" target="_a-_yGwHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjJAHAEd-bjfeyKVukcA" relType="GENERALIZATION_CHILD_FATHER" source="_a-_yHAHAEd-bjfeyKVukcA" target="_a-_yGAHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjJAHAEd-bjfeyKVukcA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_a-_yGAHAEd-bjfeyKVukcA" target="_a-_yHAHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjJQHAEd-bjfeyKVukcA" relType="GENERALIZATION_CHILD_FATHER" source="_a-_yHQHAEd-bjfeyKVukcA" target="_a-_yHAHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjJQHAEd-bjfeyKVukcA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_a-_yHAHAEd-bjfeyKVukcA" target="_a-_yHQHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjJgHAEd-bjfeyKVukcA" relType="GENERALIZATION_CHILD_FATHER" source="_a-_yHgHAEd-bjfeyKVukcA" target="_a-_yHAHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjJgHAEd-bjfeyKVukcA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_a-_yHAHAEd-bjfeyKVukcA" target="_a-_yHgHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjJwHAEd-bjfeyKVukcA" relType="GENERALIZATION_CHILD_FATHER" source="_a-_yHwHAEd-bjfeyKVukcA" target="_a-_yHAHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjJwHAEd-bjfeyKVukcA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_a-_yHAHAEd-bjfeyKVukcA" target="_a-_yHwHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjKAHAEd-bjfeyKVukcA" relType="GENERALIZATION_CHILD_FATHER" source="_a-_yIAHAEd-bjfeyKVukcA" target="_a-_yHAHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjKAHAEd-bjfeyKVukcA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_a-_yHAHAEd-bjfeyKVukcA" target="_a-_yIAHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjKQHAEd-bjfeyKVukcA" relType="GENERALIZATION_CHILD_FATHER" source="_a-_yIQHAEd-bjfeyKVukcA" target="_a-_yBAHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjKQHAEd-bjfeyKVukcA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_a-_yBAHAEd-bjfeyKVukcA" target="_a-_yIQHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjKgHAEd-bjfeyKVukcA" relType="GENERALIZATION_CHILD_FATHER" source="_a-_yIgHAEd-bjfeyKVukcA" target="_a-_yIQHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjKgHAEd-bjfeyKVukcA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_a-_yIQHAEd-bjfeyKVukcA" target="_a-_yIgHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjKwHAEd-bjfeyKVukcA" relType="GENERALIZATION_CHILD_FATHER" source="_a-_yIwHAEd-bjfeyKVukcA" target="_a-_yBAHAEd-bjfeyKVukcA"/>
    <edge id="_a_JjKwHAEd-bjfeyKVukcA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_a-_yBAHAEd-bjfeyKVukcA" target="_a-_yIwHAEd-bjfeyKVukcA"/>
  </graph>
</graphml>
