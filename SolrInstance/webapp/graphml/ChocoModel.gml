<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_n8BpABuyEd-u0r5Az1kiEw" projectName="ChocoModel">
    <node className="LocatedElement" id="_n8BpAxuyEd-u0r5Az1kiEw">
      <attribute>location</attribute>
      <attribute>commentsBefore</attribute>
      <attribute>commentsAfter</attribute>
    </node>
    <node className="Package" id="_n8BpBBuyEd-u0r5Az1kiEw">
      <attribute>name</attribute>
    </node>
    <node className="Import" id="_n8BpBRuyEd-u0r5Az1kiEw">
      <attribute>fqn</attribute>
    </node>
    <node className="ChocoProblem" id="_n8BpBhuyEd-u0r5Az1kiEw">
      <attribute>name</attribute>
    </node>
    <node className="Element" id="_n8BpBxuyEd-u0r5Az1kiEw">
      <attribute>label</attribute>
    </node>
    <node className="Expression" id="_n8BpCBuyEd-u0r5Az1kiEw"/>
    <node className="ConstraintDef" id="_n8BpCRuyEd-u0r5Az1kiEw">
      <attribute>op</attribute>
    </node>
    <node className="IntVar" id="_n8BpChuyEd-u0r5Az1kiEw"/>
    <node className="Domain" id="_n8BpCxuyEd-u0r5Az1kiEw">
      <attribute>lower</attribute>
      <attribute>upper</attribute>
    </node>
    <node className="IntConstant" id="_n8BpDBuyEd-u0r5Az1kiEw">
      <attribute>val</attribute>
    </node>
    <node className="SymbolicTerm" id="_n8BpDRuyEd-u0r5Az1kiEw"/>
    <node className="IntValue" id="_n8BpDhuyEd-u0r5Az1kiEw">
      <attribute>val</attribute>
    </node>
    <node className="IntExp" id="_n8BpDxuyEd-u0r5Az1kiEw">
      <attribute>op</attribute>
    </node>
    <node className="Constraint" id="_n8BpEBuyEd-u0r5Az1kiEw">
      <attribute>op</attribute>
    </node>
    <node className="PostConstraint" id="_n8BpERuyEd-u0r5Az1kiEw">
      <attribute>op</attribute>
    </node>
    <edge id="_n8BpIRuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_n8BpBBuyEd-u0r5Az1kiEw" target="_n8BpBRuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="*">import</attribute>
    </edge>
    <edge id="_n8BpIRuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_n8BpBRuyEd-u0r5Az1kiEw" target="_n8BpBBuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_n8BpJBuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_n8BpBBuyEd-u0r5Az1kiEw" target="_n8BpBhuyEd-u0r5Az1kiEw">
      <attribute lowerValue="1" upperValue="1">problem</attribute>
    </edge>
    <edge id="_n8BpJBuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_n8BpBhuyEd-u0r5Az1kiEw" target="_n8BpBBuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_n8BpJxuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_n8BpBhuyEd-u0r5Az1kiEw" target="_n8BpBxuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="*">elements</attribute>
    </edge>
    <edge id="_n8BpJxuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_n8BpBxuyEd-u0r5Az1kiEw" target="_n8BpBhuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_n8BpKhuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_n8BpCRuyEd-u0r5Az1kiEw" target="_n8BpCBuyEd-u0r5Az1kiEw">
      <attribute lowerValue="1" upperValue="1">left</attribute>
    </edge>
    <edge id="_n8BpKhuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_n8BpCBuyEd-u0r5Az1kiEw" target="_n8BpCRuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_n8BpLRuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_n8BpCRuyEd-u0r5Az1kiEw" target="_n8BpCBuyEd-u0r5Az1kiEw">
      <attribute lowerValue="1" upperValue="1">right</attribute>
    </edge>
    <edge id="_n8BpLRuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_n8BpCBuyEd-u0r5Az1kiEw" target="_n8BpCRuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_n8BpMBuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_n8BpChuyEd-u0r5Az1kiEw" target="_n8BpCxuyEd-u0r5Az1kiEw">
      <attribute lowerValue="1" upperValue="1">domain</attribute>
    </edge>
    <edge id="_n8BpMBuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_n8BpCxuyEd-u0r5Az1kiEw" target="_n8BpChuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_n8BpNhuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_n8BpDxuyEd-u0r5Az1kiEw" target="_n8BpCBuyEd-u0r5Az1kiEw">
      <attribute lowerValue="1" upperValue="1">left</attribute>
    </edge>
    <edge id="_n8BpNhuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_n8BpCBuyEd-u0r5Az1kiEw" target="_n8BpDxuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_n8BpORuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_n8BpDxuyEd-u0r5Az1kiEw" target="_n8BpCBuyEd-u0r5Az1kiEw">
      <attribute lowerValue="1" upperValue="1">right</attribute>
    </edge>
    <edge id="_n8BpORuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_n8BpCBuyEd-u0r5Az1kiEw" target="_n8BpDxuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_n8BpPBuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_n8BpEBuyEd-u0r5Az1kiEw" target="_n8BpCBuyEd-u0r5Az1kiEw">
      <attribute lowerValue="1" upperValue="1">left</attribute>
    </edge>
    <edge id="_n8BpPBuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_n8BpCBuyEd-u0r5Az1kiEw" target="_n8BpEBuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_n8BpPxuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_n8BpEBuyEd-u0r5Az1kiEw" target="_n8BpCBuyEd-u0r5Az1kiEw">
      <attribute lowerValue="1" upperValue="1">right</attribute>
    </edge>
    <edge id="_n8BpPxuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_n8BpCBuyEd-u0r5Az1kiEw" target="_n8BpEBuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_n8BpMxuyEd-u0r5Az1kiEw" relType="ASSOCIATION" source="_n8BpDRuyEd-u0r5Az1kiEw" target="_n8BpCBuyEd-u0r5Az1kiEw">
      <attribute lowerValue="1" upperValue="1">term</attribute>
    </edge>
    <edge id="_n8BpMxuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="ASSOCIATION" source="_n8BpCBuyEd-u0r5Az1kiEw" target="_n8BpDRuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_n8BpQhuyEd-u0r5Az1kiEw" relType="ASSOCIATION" source="_n8BpERuyEd-u0r5Az1kiEw" target="_n8BpCRuyEd-u0r5Az1kiEw">
      <attribute lowerValue="1" upperValue="1">constraint</attribute>
    </edge>
    <edge id="_n8BpQhuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="ASSOCIATION" source="_n8BpCRuyEd-u0r5Az1kiEw" target="_n8BpERuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_n8BpUhuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_n8BpBBuyEd-u0r5Az1kiEw" target="_n8BpAxuyEd-u0r5Az1kiEw"/>
    <edge id="_n8BpUhuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_n8BpAxuyEd-u0r5Az1kiEw" target="_n8BpBBuyEd-u0r5Az1kiEw"/>
    <edge id="_n8BpUxuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_n8BpBRuyEd-u0r5Az1kiEw" target="_n8BpAxuyEd-u0r5Az1kiEw"/>
    <edge id="_n8BpUxuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_n8BpAxuyEd-u0r5Az1kiEw" target="_n8BpBRuyEd-u0r5Az1kiEw"/>
    <edge id="_n8BpVBuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_n8BpBhuyEd-u0r5Az1kiEw" target="_n8BpAxuyEd-u0r5Az1kiEw"/>
    <edge id="_n8BpVBuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_n8BpAxuyEd-u0r5Az1kiEw" target="_n8BpBhuyEd-u0r5Az1kiEw"/>
    <edge id="_n8BpVRuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_n8BpBxuyEd-u0r5Az1kiEw" target="_n8BpAxuyEd-u0r5Az1kiEw"/>
    <edge id="_n8BpVRuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_n8BpAxuyEd-u0r5Az1kiEw" target="_n8BpBxuyEd-u0r5Az1kiEw"/>
    <edge id="_n8BpVhuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_n8BpCBuyEd-u0r5Az1kiEw" target="_n8BpBxuyEd-u0r5Az1kiEw"/>
    <edge id="_n8BpVhuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_n8BpBxuyEd-u0r5Az1kiEw" target="_n8BpCBuyEd-u0r5Az1kiEw"/>
    <edge id="_n8BpVxuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_n8BpCRuyEd-u0r5Az1kiEw" target="_n8BpCBuyEd-u0r5Az1kiEw"/>
    <edge id="_n8BpVxuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_n8BpCBuyEd-u0r5Az1kiEw" target="_n8BpCRuyEd-u0r5Az1kiEw"/>
    <edge id="_n8BpWBuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_n8BpChuyEd-u0r5Az1kiEw" target="_n8BpCBuyEd-u0r5Az1kiEw"/>
    <edge id="_n8BpWBuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_n8BpCBuyEd-u0r5Az1kiEw" target="_n8BpChuyEd-u0r5Az1kiEw"/>
    <edge id="_n8BpWRuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_n8BpCxuyEd-u0r5Az1kiEw" target="_n8BpAxuyEd-u0r5Az1kiEw"/>
    <edge id="_n8BpWRuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_n8BpAxuyEd-u0r5Az1kiEw" target="_n8BpCxuyEd-u0r5Az1kiEw"/>
    <edge id="_n8BpWhuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_n8BpDBuyEd-u0r5Az1kiEw" target="_n8BpCBuyEd-u0r5Az1kiEw"/>
    <edge id="_n8BpWhuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_n8BpCBuyEd-u0r5Az1kiEw" target="_n8BpDBuyEd-u0r5Az1kiEw"/>
    <edge id="_n8BpWxuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_n8BpDRuyEd-u0r5Az1kiEw" target="_n8BpCBuyEd-u0r5Az1kiEw"/>
    <edge id="_n8BpWxuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_n8BpCBuyEd-u0r5Az1kiEw" target="_n8BpDRuyEd-u0r5Az1kiEw"/>
    <edge id="_n8BpXBuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_n8BpDhuyEd-u0r5Az1kiEw" target="_n8BpCBuyEd-u0r5Az1kiEw"/>
    <edge id="_n8BpXBuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_n8BpCBuyEd-u0r5Az1kiEw" target="_n8BpDhuyEd-u0r5Az1kiEw"/>
    <edge id="_n8BpXRuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_n8BpDxuyEd-u0r5Az1kiEw" target="_n8BpCBuyEd-u0r5Az1kiEw"/>
    <edge id="_n8BpXRuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_n8BpCBuyEd-u0r5Az1kiEw" target="_n8BpDxuyEd-u0r5Az1kiEw"/>
    <edge id="_n8BpXhuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_n8BpEBuyEd-u0r5Az1kiEw" target="_n8BpCBuyEd-u0r5Az1kiEw"/>
    <edge id="_n8BpXhuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_n8BpCBuyEd-u0r5Az1kiEw" target="_n8BpEBuyEd-u0r5Az1kiEw"/>
    <edge id="_n8BpXxuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_n8BpERuyEd-u0r5Az1kiEw" target="_n8BpBxuyEd-u0r5Az1kiEw"/>
    <edge id="_n8BpXxuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_n8BpBxuyEd-u0r5Az1kiEw" target="_n8BpERuyEd-u0r5Az1kiEw"/>
  </graph>
</graphml>
