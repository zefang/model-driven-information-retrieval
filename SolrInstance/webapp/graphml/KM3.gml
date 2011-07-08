<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_elbMkOiaEd6gMtZRCjS81g" projectName="KM3">
    <node className="LocatedElement" id="_elbMk-iaEd6gMtZRCjS81g">
      <attribute>location</attribute>
    </node>
    <node className="ModelElement" id="_elbMlOiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Classifier" id="_elbMleiaEd6gMtZRCjS81g"/>
    <node className="DataType" id="_elbMluiaEd6gMtZRCjS81g"/>
    <node className="Enumeration" id="_elbMl-iaEd6gMtZRCjS81g"/>
    <node className="EnumLiteral" id="_elbMmOiaEd6gMtZRCjS81g"/>
    <node className="Class" id="_elbMmeiaEd6gMtZRCjS81g">
      <attribute>isAbstract</attribute>
    </node>
    <node className="StructuralFeature" id="_elbMmuiaEd6gMtZRCjS81g">
      <attribute>lower</attribute>
      <attribute>upper</attribute>
      <attribute>isOrdered</attribute>
      <attribute>isUnique</attribute>
    </node>
    <node className="Attribute" id="_elbMm-iaEd6gMtZRCjS81g"/>
    <node className="Reference" id="_elbMnOiaEd6gMtZRCjS81g">
      <attribute>isContainer</attribute>
    </node>
    <node className="Package" id="_elbMneiaEd6gMtZRCjS81g"/>
    <node className="Metamodel" id="_elbMnuiaEd6gMtZRCjS81g"/>
    <edge id="_elbMp-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_elbMl-iaEd6gMtZRCjS81g" target="_elbMmOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">literals</attribute>
    </edge>
    <edge id="_elbMp-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_elbMmOiaEd6gMtZRCjS81g" target="_elbMl-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_elbMreiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_elbMmeiaEd6gMtZRCjS81g" target="_elbMmuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">structuralFeatures</attribute>
    </edge>
    <edge id="_elbMreiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_elbMmuiaEd6gMtZRCjS81g" target="_elbMmeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_elbzoOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_elbMneiaEd6gMtZRCjS81g" target="_elbMlOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">contents</attribute>
    </edge>
    <edge id="_elbzoOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_elbMlOiaEd6gMtZRCjS81g" target="_elbMneiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_elbzo-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_elbMnuiaEd6gMtZRCjS81g" target="_elbMneiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">contents</attribute>
    </edge>
    <edge id="_elbzo-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_elbMneiaEd6gMtZRCjS81g" target="_elbMnuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_elbMquiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_elbMmeiaEd6gMtZRCjS81g" target="_elbMmeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">supertypes</attribute>
    </edge>
    <edge id="_elbMquiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_elbMmeiaEd6gMtZRCjS81g" target="_elbMmeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_elbMsOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_elbMmuiaEd6gMtZRCjS81g" target="_elbMleiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">type</attribute>
    </edge>
    <edge id="_elbMsOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_elbMleiaEd6gMtZRCjS81g" target="_elbMmuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_elbMs-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_elbMnOiaEd6gMtZRCjS81g" target="_elbMnOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">opposite</attribute>
    </edge>
    <edge id="_elbMs-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_elbMnOiaEd6gMtZRCjS81g" target="_elbMnOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_elbzqeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_elbMlOiaEd6gMtZRCjS81g" target="_elbMk-iaEd6gMtZRCjS81g"/>
    <edge id="_elbzqeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_elbMk-iaEd6gMtZRCjS81g" target="_elbMlOiaEd6gMtZRCjS81g"/>
    <edge id="_elbzquiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_elbMleiaEd6gMtZRCjS81g" target="_elbMlOiaEd6gMtZRCjS81g"/>
    <edge id="_elbzquiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_elbMlOiaEd6gMtZRCjS81g" target="_elbMleiaEd6gMtZRCjS81g"/>
    <edge id="_elbzq-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_elbMluiaEd6gMtZRCjS81g" target="_elbMleiaEd6gMtZRCjS81g"/>
    <edge id="_elbzq-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_elbMleiaEd6gMtZRCjS81g" target="_elbMluiaEd6gMtZRCjS81g"/>
    <edge id="_elbzrOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_elbMl-iaEd6gMtZRCjS81g" target="_elbMleiaEd6gMtZRCjS81g"/>
    <edge id="_elbzrOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_elbMleiaEd6gMtZRCjS81g" target="_elbMl-iaEd6gMtZRCjS81g"/>
    <edge id="_elbzreiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_elbMmOiaEd6gMtZRCjS81g" target="_elbMlOiaEd6gMtZRCjS81g"/>
    <edge id="_elbzreiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_elbMlOiaEd6gMtZRCjS81g" target="_elbMmOiaEd6gMtZRCjS81g"/>
    <edge id="_elbzruiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_elbMmeiaEd6gMtZRCjS81g" target="_elbMleiaEd6gMtZRCjS81g"/>
    <edge id="_elbzruiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_elbMleiaEd6gMtZRCjS81g" target="_elbMmeiaEd6gMtZRCjS81g"/>
    <edge id="_elcasOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_elbMmuiaEd6gMtZRCjS81g" target="_elbMlOiaEd6gMtZRCjS81g"/>
    <edge id="_elcasOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_elbMlOiaEd6gMtZRCjS81g" target="_elbMmuiaEd6gMtZRCjS81g"/>
    <edge id="_elcaseiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_elbMm-iaEd6gMtZRCjS81g" target="_elbMmuiaEd6gMtZRCjS81g"/>
    <edge id="_elcaseiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_elbMmuiaEd6gMtZRCjS81g" target="_elbMm-iaEd6gMtZRCjS81g"/>
    <edge id="_elcasuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_elbMnOiaEd6gMtZRCjS81g" target="_elbMmuiaEd6gMtZRCjS81g"/>
    <edge id="_elcasuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_elbMmuiaEd6gMtZRCjS81g" target="_elbMnOiaEd6gMtZRCjS81g"/>
    <edge id="_elcas-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_elbMneiaEd6gMtZRCjS81g" target="_elbMlOiaEd6gMtZRCjS81g"/>
    <edge id="_elcas-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_elbMlOiaEd6gMtZRCjS81g" target="_elbMneiaEd6gMtZRCjS81g"/>
    <edge id="_elcatOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_elbMnuiaEd6gMtZRCjS81g" target="_elbMk-iaEd6gMtZRCjS81g"/>
    <edge id="_elcatOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_elbMk-iaEd6gMtZRCjS81g" target="_elbMnuiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
