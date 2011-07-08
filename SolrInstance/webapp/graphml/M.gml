<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_oO8lABuyEd-u0r5Az1kiEw" projectName="M">
    <node className="IdentifiedElement" id="_oO8lBxuyEd-u0r5Az1kiEw">
      <attribute>qualifiers</attribute>
      <attribute>identifier</attribute>
    </node>
    <node className="MElement" id="_oO8lCBuyEd-u0r5Az1kiEw"/>
    <node className="MElementReference" id="_oO8lCRuyEd-u0r5Az1kiEw">
      <attribute>alias</attribute>
    </node>
    <node className="Module" id="_oO8lChuyEd-u0r5Az1kiEw"/>
    <node className="ModuleMember" id="_oO8lCxuyEd-u0r5Az1kiEw"/>
    <node className="ImportDirective" id="_oO8lDBuyEd-u0r5Az1kiEw"/>
    <node className="ExportDirective" id="_oO8lDRuyEd-u0r5Az1kiEw"/>
    <node className="Value" id="_oO8lDhuyEd-u0r5Az1kiEw"/>
    <node className="NumericalValue" id="_oO8lDxuyEd-u0r5Az1kiEw"/>
    <node className="StringValue" id="_oO8lEBuyEd-u0r5Az1kiEw">
      <attribute>value</attribute>
    </node>
    <node className="IntegerValue" id="_oO8lERuyEd-u0r5Az1kiEw">
      <attribute>value</attribute>
    </node>
    <node className="DecimalValue" id="_oO8lEhuyEd-u0r5Az1kiEw">
      <attribute>value</attribute>
    </node>
    <node className="BooleanValue" id="_oO8lExuyEd-u0r5Az1kiEw">
      <attribute>value</attribute>
    </node>
    <node className="DerivedType" id="_oO8lFBuyEd-u0r5Az1kiEw"/>
    <node className="TypeReference" id="_oO8lFRuyEd-u0r5Az1kiEw">
      <attribute>lowerBound</attribute>
      <attribute>upperBound</attribute>
    </node>
    <node className="IntrinsicTypeReference" id="_oO8lFhuyEd-u0r5Az1kiEw">
      <attribute>typeIdentifier</attribute>
    </node>
    <node className="DerivedTypeReference" id="_oO8lFxuyEd-u0r5Az1kiEw"/>
    <node className="Field" id="_oO8lGBuyEd-u0r5Az1kiEw"/>
    <node className="Collection" id="_oO8lGRuyEd-u0r5Az1kiEw"/>
    <node className="ComputedValue" id="_oO8lGhuyEd-u0r5Az1kiEw"/>
    <node className="Expression" id="_oO8lGxuyEd-u0r5Az1kiEw"/>
    <node className="InitializationExpression" id="_oO8lHBuyEd-u0r5Az1kiEw"/>
    <node className="WhereExpression" id="_oO8lHRuyEd-u0r5Az1kiEw"/>
    <node className="IdentityExpression" id="_oO8lHhuyEd-u0r5Az1kiEw"/>
    <node className="QueryExpression" id="_oO8lHxuyEd-u0r5Az1kiEw"/>
    <node className="EqualExpression" id="_oO8lIBuyEd-u0r5Az1kiEw"/>
    <node className="InExpression" id="_oO8lIRuyEd-u0r5Az1kiEw"/>
    <node className="CollectionExpression" id="_oO8lIhuyEd-u0r5Az1kiEw"/>
    <node className="ValueExpression" id="_oO8lIxuyEd-u0r5Az1kiEw"/>
    <node className="DefaultValueExpression" id="_oO8lJBuyEd-u0r5Az1kiEw"/>
    <node className="StandardValueExpression" id="_oO8lJRuyEd-u0r5Az1kiEw">
      <attribute>value</attribute>
    </node>
    <node className="Language" id="_oO8lJhuyEd-u0r5Az1kiEw"/>
    <node className="Entity" id="_oO8lJxuyEd-u0r5Az1kiEw"/>
    <edge id="_oO8lNhuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oO8lChuyEd-u0r5Az1kiEw" target="_oO8lDBuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="*">imports</attribute>
    </edge>
    <edge id="_oO8lNhuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oO8lDBuyEd-u0r5Az1kiEw" target="_oO8lChuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oO8lORuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oO8lChuyEd-u0r5Az1kiEw" target="_oO8lDRuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="*">exports</attribute>
    </edge>
    <edge id="_oO8lORuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oO8lDRuyEd-u0r5Az1kiEw" target="_oO8lChuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oO8lPBuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oO8lChuyEd-u0r5Az1kiEw" target="_oO8lCxuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="*">moduleMembers</attribute>
    </edge>
    <edge id="_oO8lPBuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oO8lCxuyEd-u0r5Az1kiEw" target="_oO8lChuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oO8lPxuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oO8lDBuyEd-u0r5Az1kiEw" target="_oO8lCRuyEd-u0r5Az1kiEw">
      <attribute lowerValue="1" upperValue="*">importedElements</attribute>
    </edge>
    <edge id="_oO8lPxuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oO8lCRuyEd-u0r5Az1kiEw" target="_oO8lDBuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oO8lRRuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oO8lFBuyEd-u0r5Az1kiEw" target="_oO8lFRuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="*">supertypes</attribute>
    </edge>
    <edge id="_oO8lRRuyEd-u0r5Az1kiEw-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oO8lFRuyEd-u0r5Az1kiEw" target="_oO8lFBuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oO8lSBuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oO8lFBuyEd-u0r5Az1kiEw" target="_oO8lGBuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="*">fields</attribute>
    </edge>
    <edge id="_oO8lSBuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oO8lGBuyEd-u0r5Az1kiEw" target="_oO8lFBuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oO8lSxuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oO8lFBuyEd-u0r5Az1kiEw" target="_oO8lHBuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="1">initializationExpression</attribute>
    </edge>
    <edge id="_oO8lSxuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oO8lHBuyEd-u0r5Az1kiEw" target="_oO8lFBuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oO8lThuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oO8lFBuyEd-u0r5Az1kiEw" target="_oO8lHRuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="1">whereExpression</attribute>
    </edge>
    <edge id="_oO8lThuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oO8lHRuyEd-u0r5Az1kiEw" target="_oO8lFBuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oO8lURuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oO8lFBuyEd-u0r5Az1kiEw" target="_oO8lGxuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="1">expression</attribute>
    </edge>
    <edge id="_oO8lURuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oO8lGxuyEd-u0r5Az1kiEw" target="_oO8lFBuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oO8lVxuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oO8lGBuyEd-u0r5Az1kiEw" target="_oO8lFRuyEd-u0r5Az1kiEw">
      <attribute lowerValue="1" upperValue="1">type</attribute>
    </edge>
    <edge id="_oO8lVxuyEd-u0r5Az1kiEw-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oO8lFRuyEd-u0r5Az1kiEw" target="_oO8lGBuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oO8lWhuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oO8lHBuyEd-u0r5Az1kiEw" target="_oO8lDhuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="*">values</attribute>
    </edge>
    <edge id="_oO8lWhuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oO8lDhuyEd-u0r5Az1kiEw" target="_oO8lHBuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oO8lXRuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oO8lHRuyEd-u0r5Az1kiEw" target="_oO8lHxuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="*">queryExpressions</attribute>
    </edge>
    <edge id="_oO8lXRuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oO8lHxuyEd-u0r5Az1kiEw" target="_oO8lHRuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oO8lYxuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oO8lIBuyEd-u0r5Az1kiEw" target="_oO8lIxuyEd-u0r5Az1kiEw">
      <attribute lowerValue="1" upperValue="1">leftValue</attribute>
    </edge>
    <edge id="_oO8lYxuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oO8lIxuyEd-u0r5Az1kiEw" target="_oO8lIBuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oO8lZhuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oO8lIBuyEd-u0r5Az1kiEw" target="_oO8lIxuyEd-u0r5Az1kiEw">
      <attribute lowerValue="1" upperValue="1">rightValue</attribute>
    </edge>
    <edge id="_oO8lZhuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oO8lIxuyEd-u0r5Az1kiEw" target="_oO8lIBuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oO8laRuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oO8lIRuyEd-u0r5Az1kiEw" target="_oO8lIxuyEd-u0r5Az1kiEw">
      <attribute lowerValue="1" upperValue="1">value</attribute>
    </edge>
    <edge id="_oO8laRuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oO8lIxuyEd-u0r5Az1kiEw" target="_oO8lIRuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oO8lbBuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oO8lIRuyEd-u0r5Az1kiEw" target="_oO8lIhuyEd-u0r5Az1kiEw">
      <attribute lowerValue="1" upperValue="1">collection</attribute>
    </edge>
    <edge id="_oO8lbBuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oO8lIhuyEd-u0r5Az1kiEw" target="_oO8lIRuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oO8lbxuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oO8lIhuyEd-u0r5Az1kiEw" target="_oO8lIxuyEd-u0r5Az1kiEw">
      <attribute lowerValue="1" upperValue="1">collectionValue</attribute>
    </edge>
    <edge id="_oO8lbxuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oO8lIxuyEd-u0r5Az1kiEw" target="_oO8lIhuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oO8lchuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oO8lJRuyEd-u0r5Az1kiEw" target="_oO8lIxuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="1">context</attribute>
    </edge>
    <edge id="_oO8lchuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oO8lIxuyEd-u0r5Az1kiEw" target="_oO8lJRuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oO8lMxuyEd-u0r5Az1kiEw" relType="ASSOCIATION" source="_oO8lCRuyEd-u0r5Az1kiEw" target="_oO8lCBuyEd-u0r5Az1kiEw">
      <attribute lowerValue="1" upperValue="1">referencedElement</attribute>
    </edge>
    <edge id="_oO8lMxuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="ASSOCIATION" source="_oO8lCBuyEd-u0r5Az1kiEw" target="_oO8lCRuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oO8lQhuyEd-u0r5Az1kiEw" relType="ASSOCIATION" source="_oO8lDRuyEd-u0r5Az1kiEw" target="_oO8lCxuyEd-u0r5Az1kiEw">
      <attribute lowerValue="1" upperValue="*">exportedElements</attribute>
    </edge>
    <edge id="_oO8lQhuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="ASSOCIATION" source="_oO8lCxuyEd-u0r5Az1kiEw" target="_oO8lDRuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oO8lVBuyEd-u0r5Az1kiEw" relType="ASSOCIATION" source="_oO8lFxuyEd-u0r5Az1kiEw" target="_oO8lFBuyEd-u0r5Az1kiEw">
      <attribute lowerValue="1" upperValue="1">type</attribute>
    </edge>
    <edge id="_oO8lVBuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="ASSOCIATION" source="_oO8lFBuyEd-u0r5Az1kiEw" target="_oO8lFxuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oO8lYBuyEd-u0r5Az1kiEw" relType="ASSOCIATION" source="_oO8lHhuyEd-u0r5Az1kiEw" target="_oO8lGBuyEd-u0r5Az1kiEw">
      <attribute lowerValue="1" upperValue="1">identity</attribute>
    </edge>
    <edge id="_oO8lYBuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="ASSOCIATION" source="_oO8lGBuyEd-u0r5Az1kiEw" target="_oO8lHhuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oO8leRuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oO8lCBuyEd-u0r5Az1kiEw" target="_oO8lBxuyEd-u0r5Az1kiEw"/>
    <edge id="_oO8leRuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oO8lBxuyEd-u0r5Az1kiEw" target="_oO8lCBuyEd-u0r5Az1kiEw"/>
    <edge id="_oO8lehuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oO8lChuyEd-u0r5Az1kiEw" target="_oO8lCBuyEd-u0r5Az1kiEw"/>
    <edge id="_oO8lehuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oO8lCBuyEd-u0r5Az1kiEw" target="_oO8lChuyEd-u0r5Az1kiEw"/>
    <edge id="_oO8lexuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oO8lCxuyEd-u0r5Az1kiEw" target="_oO8lCBuyEd-u0r5Az1kiEw"/>
    <edge id="_oO8lexuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oO8lCBuyEd-u0r5Az1kiEw" target="_oO8lCxuyEd-u0r5Az1kiEw"/>
    <edge id="_oPGWABuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oO8lDxuyEd-u0r5Az1kiEw" target="_oO8lDhuyEd-u0r5Az1kiEw"/>
    <edge id="_oPGWABuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oO8lDhuyEd-u0r5Az1kiEw" target="_oO8lDxuyEd-u0r5Az1kiEw"/>
    <edge id="_oPGWARuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oO8lEBuyEd-u0r5Az1kiEw" target="_oO8lDhuyEd-u0r5Az1kiEw"/>
    <edge id="_oPGWARuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oO8lDhuyEd-u0r5Az1kiEw" target="_oO8lEBuyEd-u0r5Az1kiEw"/>
    <edge id="_oPGWAhuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oO8lERuyEd-u0r5Az1kiEw" target="_oO8lDxuyEd-u0r5Az1kiEw"/>
    <edge id="_oPGWAhuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oO8lDxuyEd-u0r5Az1kiEw" target="_oO8lERuyEd-u0r5Az1kiEw"/>
    <edge id="_oPGWAxuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oO8lEhuyEd-u0r5Az1kiEw" target="_oO8lDxuyEd-u0r5Az1kiEw"/>
    <edge id="_oPGWAxuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oO8lDxuyEd-u0r5Az1kiEw" target="_oO8lEhuyEd-u0r5Az1kiEw"/>
    <edge id="_oPGWBBuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oO8lExuyEd-u0r5Az1kiEw" target="_oO8lDhuyEd-u0r5Az1kiEw"/>
    <edge id="_oPGWBBuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oO8lDhuyEd-u0r5Az1kiEw" target="_oO8lExuyEd-u0r5Az1kiEw"/>
    <edge id="_oPGWBRuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oO8lFBuyEd-u0r5Az1kiEw" target="_oO8lCxuyEd-u0r5Az1kiEw"/>
    <edge id="_oPGWBRuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oO8lCxuyEd-u0r5Az1kiEw" target="_oO8lFBuyEd-u0r5Az1kiEw"/>
    <edge id="_oPGWBhuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oO8lFhuyEd-u0r5Az1kiEw" target="_oO8lFRuyEd-u0r5Az1kiEw"/>
    <edge id="_oPGWBhuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oO8lFRuyEd-u0r5Az1kiEw" target="_oO8lFhuyEd-u0r5Az1kiEw"/>
    <edge id="_oPGWBxuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oO8lFxuyEd-u0r5Az1kiEw" target="_oO8lFRuyEd-u0r5Az1kiEw"/>
    <edge id="_oPGWBxuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oO8lFRuyEd-u0r5Az1kiEw" target="_oO8lFxuyEd-u0r5Az1kiEw"/>
    <edge id="_oPGWCBuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oO8lGBuyEd-u0r5Az1kiEw" target="_oO8lBxuyEd-u0r5Az1kiEw"/>
    <edge id="_oPGWCBuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oO8lBxuyEd-u0r5Az1kiEw" target="_oO8lGBuyEd-u0r5Az1kiEw"/>
    <edge id="_oPGWCRuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oO8lGRuyEd-u0r5Az1kiEw" target="_oO8lBxuyEd-u0r5Az1kiEw"/>
    <edge id="_oPGWCRuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oO8lBxuyEd-u0r5Az1kiEw" target="_oO8lGRuyEd-u0r5Az1kiEw"/>
    <edge id="_oPGWChuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oO8lGhuyEd-u0r5Az1kiEw" target="_oO8lBxuyEd-u0r5Az1kiEw"/>
    <edge id="_oPGWChuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oO8lBxuyEd-u0r5Az1kiEw" target="_oO8lGhuyEd-u0r5Az1kiEw"/>
    <edge id="_oPGWCxuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oO8lHBuyEd-u0r5Az1kiEw" target="_oO8lGxuyEd-u0r5Az1kiEw"/>
    <edge id="_oPGWCxuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oO8lGxuyEd-u0r5Az1kiEw" target="_oO8lHBuyEd-u0r5Az1kiEw"/>
    <edge id="_oPGWDBuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oO8lHRuyEd-u0r5Az1kiEw" target="_oO8lGxuyEd-u0r5Az1kiEw"/>
    <edge id="_oPGWDBuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oO8lGxuyEd-u0r5Az1kiEw" target="_oO8lHRuyEd-u0r5Az1kiEw"/>
    <edge id="_oPGWDRuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oO8lHhuyEd-u0r5Az1kiEw" target="_oO8lHRuyEd-u0r5Az1kiEw"/>
    <edge id="_oPGWDRuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oO8lHRuyEd-u0r5Az1kiEw" target="_oO8lHhuyEd-u0r5Az1kiEw"/>
    <edge id="_oPGWDhuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oO8lHxuyEd-u0r5Az1kiEw" target="_oO8lGxuyEd-u0r5Az1kiEw"/>
    <edge id="_oPGWDhuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oO8lGxuyEd-u0r5Az1kiEw" target="_oO8lHxuyEd-u0r5Az1kiEw"/>
    <edge id="_oPGWDxuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oO8lIBuyEd-u0r5Az1kiEw" target="_oO8lHxuyEd-u0r5Az1kiEw"/>
    <edge id="_oPGWDxuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oO8lHxuyEd-u0r5Az1kiEw" target="_oO8lIBuyEd-u0r5Az1kiEw"/>
    <edge id="_oPGWEBuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oO8lIRuyEd-u0r5Az1kiEw" target="_oO8lHxuyEd-u0r5Az1kiEw"/>
    <edge id="_oPGWEBuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oO8lHxuyEd-u0r5Az1kiEw" target="_oO8lIRuyEd-u0r5Az1kiEw"/>
    <edge id="_oPGWERuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oO8lIhuyEd-u0r5Az1kiEw" target="_oO8lGxuyEd-u0r5Az1kiEw"/>
    <edge id="_oPGWERuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oO8lGxuyEd-u0r5Az1kiEw" target="_oO8lIhuyEd-u0r5Az1kiEw"/>
    <edge id="_oPGWEhuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oO8lIxuyEd-u0r5Az1kiEw" target="_oO8lGxuyEd-u0r5Az1kiEw"/>
    <edge id="_oPGWEhuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oO8lGxuyEd-u0r5Az1kiEw" target="_oO8lIxuyEd-u0r5Az1kiEw"/>
    <edge id="_oPGWExuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oO8lJBuyEd-u0r5Az1kiEw" target="_oO8lIxuyEd-u0r5Az1kiEw"/>
    <edge id="_oPGWExuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oO8lIxuyEd-u0r5Az1kiEw" target="_oO8lJBuyEd-u0r5Az1kiEw"/>
    <edge id="_oPGWFBuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oO8lJRuyEd-u0r5Az1kiEw" target="_oO8lIxuyEd-u0r5Az1kiEw"/>
    <edge id="_oPGWFBuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oO8lIxuyEd-u0r5Az1kiEw" target="_oO8lJRuyEd-u0r5Az1kiEw"/>
    <edge id="_oPGWFRuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oO8lJhuyEd-u0r5Az1kiEw" target="_oO8lCxuyEd-u0r5Az1kiEw"/>
    <edge id="_oPGWFRuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oO8lCxuyEd-u0r5Az1kiEw" target="_oO8lJhuyEd-u0r5Az1kiEw"/>
    <edge id="_oPGWFhuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_oO8lJxuyEd-u0r5Az1kiEw" target="_oO8lCxuyEd-u0r5Az1kiEw"/>
    <edge id="_oPGWFhuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_oO8lCxuyEd-u0r5Az1kiEw" target="_oO8lJxuyEd-u0r5Az1kiEw"/>
  </graph>
</graphml>
