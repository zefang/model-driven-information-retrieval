<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_gY5VUOiaEd6gMtZRCjS81g" projectName="UEML">
    <node className="UEMLObject" id="_gY5VUuiaEd6gMtZRCjS81g"/>
    <node className="UEMLModel" id="_gY5VU-iaEd6gMtZRCjS81g"/>
    <node className="Geometry" id="_gY5VVOiaEd6gMtZRCjS81g"/>
    <node className="Port" id="_gY5VVeiaEd6gMtZRCjS81g"/>
    <node className="Flow" id="_gY5VVuiaEd6gMtZRCjS81g"/>
    <node className="Activity" id="_gY5VV-iaEd6gMtZRCjS81g"/>
    <node className="Object" id="_gY5VWOiaEd6gMtZRCjS81g"/>
    <node className="InformationObject" id="_gY5VWeiaEd6gMtZRCjS81g"/>
    <node className="Resource" id="_gY5VWuiaEd6gMtZRCjS81g"/>
    <node className="MaterialResource" id="_gY5VW-iaEd6gMtZRCjS81g"/>
    <node className="HumanResource" id="_gY5VXOiaEd6gMtZRCjS81g"/>
    <node className="ResourceFlow" id="_gY5VXeiaEd6gMtZRCjS81g"/>
    <node className="IOFlow" id="_gY5VXuiaEd6gMtZRCjS81g"/>
    <node className="ControlFlow" id="_gY5VX-iaEd6gMtZRCjS81g"/>
    <node className="TriggerFlow" id="_gY5VYOiaEd6gMtZRCjS81g"/>
    <node className="ConstraintFlow" id="_gY5VYeiaEd6gMtZRCjS81g"/>
    <node className="ResourceRole" id="_gY5VYuiaEd6gMtZRCjS81g"/>
    <node className="RoleType" id="_gY5VY-iaEd6gMtZRCjS81g"/>
    <node className="Anchor" id="_gY5VZOiaEd6gMtZRCjS81g"/>
    <node className="OutputPort" id="_gY5VZeiaEd6gMtZRCjS81g"/>
    <node className="InputPort" id="_gY5VZuiaEd6gMtZRCjS81g"/>
    <node className="ConnectionOperator" id="_gY5VZ-iaEd6gMtZRCjS81g"/>
    <node className="AssociationConnector" id="_gY5VaOiaEd6gMtZRCjS81g"/>
    <edge id="_gY58Y-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gY5VU-iaEd6gMtZRCjS81g" target="_gY5VUuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">contains</attribute>
    </edge>
    <edge id="_gY58Y-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gY5VUuiaEd6gMtZRCjS81g" target="_gY5VU-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gY58bOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gY5VV-iaEd6gMtZRCjS81g" target="_gY5VV-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">child</attribute>
    </edge>
    <edge id="_gY58bOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gY5VV-iaEd6gMtZRCjS81g" target="_gY5VV-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gY58b-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gY5VV-iaEd6gMtZRCjS81g" target="_gY5VZeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">hasOutput</attribute>
    </edge>
    <edge id="_gY58b-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gY5VZeiaEd6gMtZRCjS81g" target="_gY5VV-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gY58cuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gY5VV-iaEd6gMtZRCjS81g" target="_gY5VZuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">hasInput</attribute>
    </edge>
    <edge id="_gY58cuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gY5VZuiaEd6gMtZRCjS81g" target="_gY5VV-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gY58YOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gY5VUuiaEd6gMtZRCjS81g" target="_gY5VVOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">has</attribute>
    </edge>
    <edge id="_gY58YOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gY5VVOiaEd6gMtZRCjS81g" target="_gY5VUuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gY58ZuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gY5VVuiaEd6gMtZRCjS81g" target="_gY5VaOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">associationConnector</attribute>
    </edge>
    <edge id="_gY58ZuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gY5VaOiaEd6gMtZRCjS81g" target="_gY5VVuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gY58aeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gY5VV-iaEd6gMtZRCjS81g" target="_gY5VYuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">resourceRole</attribute>
    </edge>
    <edge id="_gY58aeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gY5VYuiaEd6gMtZRCjS81g" target="_gY5VV-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gY58deiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gY5VWOiaEd6gMtZRCjS81g" target="_gY5VXuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">ioFlow</attribute>
    </edge>
    <edge id="_gY58deiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gY5VXuiaEd6gMtZRCjS81g" target="_gY5VWOiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gY58eOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gY5VWeiaEd6gMtZRCjS81g" target="_gY5VX-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">controlFlow</attribute>
    </edge>
    <edge id="_gY58eOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gY5VX-iaEd6gMtZRCjS81g" target="_gY5VWeiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gY58e-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gY5VWuiaEd6gMtZRCjS81g" target="_gY5VXeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">carries</attribute>
    </edge>
    <edge id="_gY58e-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gY5VXeiaEd6gMtZRCjS81g" target="_gY5VWuiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gY58fuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gY5VWuiaEd6gMtZRCjS81g" target="_gY5VYuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">plays</attribute>
    </edge>
    <edge id="_gY58fuiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gY5VYuiaEd6gMtZRCjS81g" target="_gY5VWuiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gY58geiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gY5VYuiaEd6gMtZRCjS81g" target="_gY5VY-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">roleQualifier</attribute>
    </edge>
    <edge id="_gY58geiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gY5VY-iaEd6gMtZRCjS81g" target="_gY5VYuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gY58hOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gY5VZOiaEd6gMtZRCjS81g" target="_gY5VaOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">target</attribute>
    </edge>
    <edge id="_gY58hOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gY5VaOiaEd6gMtZRCjS81g" target="_gY5VZOiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gY58h-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gY5VZOiaEd6gMtZRCjS81g" target="_gY5VaOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">origin</attribute>
    </edge>
    <edge id="_gY58h-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gY5VaOiaEd6gMtZRCjS81g" target="_gY5VZOiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gY6jcOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gY5VU-iaEd6gMtZRCjS81g" target="_gY5VUuiaEd6gMtZRCjS81g"/>
    <edge id="_gY6jcOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gY5VUuiaEd6gMtZRCjS81g" target="_gY5VU-iaEd6gMtZRCjS81g"/>
    <edge id="_gY6jceiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gY5VVeiaEd6gMtZRCjS81g" target="_gY5VUuiaEd6gMtZRCjS81g"/>
    <edge id="_gY6jceiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gY5VUuiaEd6gMtZRCjS81g" target="_gY5VVeiaEd6gMtZRCjS81g"/>
    <edge id="_gY6jcuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gY5VVuiaEd6gMtZRCjS81g" target="_gY5VUuiaEd6gMtZRCjS81g"/>
    <edge id="_gY6jcuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gY5VUuiaEd6gMtZRCjS81g" target="_gY5VVuiaEd6gMtZRCjS81g"/>
    <edge id="_gY6jc-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gY5VV-iaEd6gMtZRCjS81g" target="_gY5VUuiaEd6gMtZRCjS81g"/>
    <edge id="_gY6jc-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gY5VUuiaEd6gMtZRCjS81g" target="_gY5VV-iaEd6gMtZRCjS81g"/>
    <edge id="_gY6jdOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gY5VWOiaEd6gMtZRCjS81g" target="_gY5VUuiaEd6gMtZRCjS81g"/>
    <edge id="_gY6jdOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gY5VUuiaEd6gMtZRCjS81g" target="_gY5VWOiaEd6gMtZRCjS81g"/>
    <edge id="_gY6jdeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gY5VWeiaEd6gMtZRCjS81g" target="_gY5VWOiaEd6gMtZRCjS81g"/>
    <edge id="_gY6jdeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gY5VWOiaEd6gMtZRCjS81g" target="_gY5VWeiaEd6gMtZRCjS81g"/>
    <edge id="_gY6jduiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gY5VWuiaEd6gMtZRCjS81g" target="_gY5VWOiaEd6gMtZRCjS81g"/>
    <edge id="_gY6jduiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gY5VWOiaEd6gMtZRCjS81g" target="_gY5VWuiaEd6gMtZRCjS81g"/>
    <edge id="_gY7KgOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gY5VW-iaEd6gMtZRCjS81g" target="_gY5VWuiaEd6gMtZRCjS81g"/>
    <edge id="_gY7KgOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gY5VWuiaEd6gMtZRCjS81g" target="_gY5VW-iaEd6gMtZRCjS81g"/>
    <edge id="_gY7KgeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gY5VXOiaEd6gMtZRCjS81g" target="_gY5VWuiaEd6gMtZRCjS81g"/>
    <edge id="_gY7KgeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gY5VWuiaEd6gMtZRCjS81g" target="_gY5VXOiaEd6gMtZRCjS81g"/>
    <edge id="_gY7KguiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gY5VXeiaEd6gMtZRCjS81g" target="_gY5VVuiaEd6gMtZRCjS81g"/>
    <edge id="_gY7KguiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gY5VVuiaEd6gMtZRCjS81g" target="_gY5VXeiaEd6gMtZRCjS81g"/>
    <edge id="_gY7Kg-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gY5VXuiaEd6gMtZRCjS81g" target="_gY5VVuiaEd6gMtZRCjS81g"/>
    <edge id="_gY7Kg-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gY5VVuiaEd6gMtZRCjS81g" target="_gY5VXuiaEd6gMtZRCjS81g"/>
    <edge id="_gY7KhOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gY5VX-iaEd6gMtZRCjS81g" target="_gY5VVuiaEd6gMtZRCjS81g"/>
    <edge id="_gY7KhOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gY5VVuiaEd6gMtZRCjS81g" target="_gY5VX-iaEd6gMtZRCjS81g"/>
    <edge id="_gY7KheiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gY5VYOiaEd6gMtZRCjS81g" target="_gY5VX-iaEd6gMtZRCjS81g"/>
    <edge id="_gY7KheiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gY5VX-iaEd6gMtZRCjS81g" target="_gY5VYOiaEd6gMtZRCjS81g"/>
    <edge id="_gY7KhuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gY5VYeiaEd6gMtZRCjS81g" target="_gY5VX-iaEd6gMtZRCjS81g"/>
    <edge id="_gY7KhuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gY5VX-iaEd6gMtZRCjS81g" target="_gY5VYeiaEd6gMtZRCjS81g"/>
    <edge id="_gY7Kh-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gY5VYuiaEd6gMtZRCjS81g" target="_gY5VVeiaEd6gMtZRCjS81g"/>
    <edge id="_gY7Kh-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gY5VVeiaEd6gMtZRCjS81g" target="_gY5VYuiaEd6gMtZRCjS81g"/>
    <edge id="_gY7KiOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gY5VZOiaEd6gMtZRCjS81g" target="_gY5VVeiaEd6gMtZRCjS81g"/>
    <edge id="_gY7KiOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gY5VVeiaEd6gMtZRCjS81g" target="_gY5VZOiaEd6gMtZRCjS81g"/>
    <edge id="_gY7KieiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gY5VZeiaEd6gMtZRCjS81g" target="_gY5VZOiaEd6gMtZRCjS81g"/>
    <edge id="_gY7KieiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gY5VZOiaEd6gMtZRCjS81g" target="_gY5VZeiaEd6gMtZRCjS81g"/>
    <edge id="_gY7KiuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gY5VZuiaEd6gMtZRCjS81g" target="_gY5VZOiaEd6gMtZRCjS81g"/>
    <edge id="_gY7KiuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gY5VZOiaEd6gMtZRCjS81g" target="_gY5VZuiaEd6gMtZRCjS81g"/>
    <edge id="_gY7Ki-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gY5VZ-iaEd6gMtZRCjS81g" target="_gY5VZOiaEd6gMtZRCjS81g"/>
    <edge id="_gY7Ki-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gY5VZOiaEd6gMtZRCjS81g" target="_gY5VZ-iaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
