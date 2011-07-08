<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_g7NYMOiaEd6gMtZRCjS81g" projectName="XSchema">
    <node className="AnnotedElement" id="_g7NYM-iaEd6gMtZRCjS81g"/>
    <node className="Annotation" id="_g7NYNOiaEd6gMtZRCjS81g"/>
    <node className="Documentation" id="_g7NYNeiaEd6gMtZRCjS81g">
      <attribute>text</attribute>
    </node>
    <node className="ApplicationInfo" id="_g7NYNuiaEd6gMtZRCjS81g">
      <attribute>text</attribute>
    </node>
    <node className="NamedElement" id="_g7NYN-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="XSchema" id="_g7NYOOiaEd6gMtZRCjS81g">
      <attribute>namespace</attribute>
    </node>
    <node className="XSchemaContentElement" id="_g7NYOeiaEd6gMtZRCjS81g"/>
    <node className="Parameters" id="_g7NYOuiaEd6gMtZRCjS81g">
      <attribute>fixed</attribute>
      <attribute>default</attribute>
    </node>
    <node className="Element" id="_g7NYO-iaEd6gMtZRCjS81g"/>
    <node className="Occurable" id="_g7NYPOiaEd6gMtZRCjS81g">
      <attribute>minOccurs</attribute>
      <attribute>maxOccurs</attribute>
    </node>
    <node className="AbstractContent" id="_g7NYPeiaEd6gMtZRCjS81g"/>
    <node className="Container" id="_g7NYPuiaEd6gMtZRCjS81g"/>
    <node className="AtomicContent" id="_g7NYP-iaEd6gMtZRCjS81g"/>
    <node className="ElementRef" id="_g7NYQOiaEd6gMtZRCjS81g"/>
    <node className="GroupRef" id="_g7NYQeiaEd6gMtZRCjS81g"/>
    <node className="All" id="_g7NYQuiaEd6gMtZRCjS81g"/>
    <node className="Group" id="_g7NYQ-iaEd6gMtZRCjS81g"/>
    <node className="Choice" id="_g7NYROiaEd6gMtZRCjS81g"/>
    <node className="Sequence" id="_g7NYReiaEd6gMtZRCjS81g"/>
    <node className="AbstractAttributeGroupContent" id="_g7NYRuiaEd6gMtZRCjS81g"/>
    <node className="AttributeGroup" id="_g7NYR-iaEd6gMtZRCjS81g"/>
    <node className="AttributeGroupRef" id="_g7NYSOiaEd6gMtZRCjS81g"/>
    <node className="AtomicAttributeGroupContent" id="_g7NYSeiaEd6gMtZRCjS81g"/>
    <node className="Attribute" id="_g7NYSuiaEd6gMtZRCjS81g">
      <attribute>use</attribute>
    </node>
    <node className="AttributeRef" id="_g7NYS-iaEd6gMtZRCjS81g"/>
    <node className="AbstractType" id="_g7NYTOiaEd6gMtZRCjS81g"/>
    <node className="SimpleType" id="_g7NYTeiaEd6gMtZRCjS81g"/>
    <node className="ComplexType" id="_g7NYTuiaEd6gMtZRCjS81g"/>
    <node className="ComplexTypeSimpleContent" id="_g7NYT-iaEd6gMtZRCjS81g"/>
    <node className="ComplexTypeComplexContent" id="_g7NYUOiaEd6gMtZRCjS81g"/>
    <edge id="_g7N_QOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_g7NYM-iaEd6gMtZRCjS81g" target="_g7NYNOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">annotations</attribute>
    </edge>
    <edge id="_g7N_QOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_g7NYNOiaEd6gMtZRCjS81g" target="_g7NYM-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g7N_Q-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_g7NYNOiaEd6gMtZRCjS81g" target="_g7NYNeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">documentations</attribute>
    </edge>
    <edge id="_g7N_Q-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_g7NYNeiaEd6gMtZRCjS81g" target="_g7NYNOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g7N_RuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_g7NYNOiaEd6gMtZRCjS81g" target="_g7NYNuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">applicationInfos</attribute>
    </edge>
    <edge id="_g7N_RuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_g7NYNuiaEd6gMtZRCjS81g" target="_g7NYNOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g7N_SeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_g7NYOOiaEd6gMtZRCjS81g" target="_g7NYOeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">contents</attribute>
    </edge>
    <edge id="_g7N_SeiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_g7NYOeiaEd6gMtZRCjS81g" target="_g7NYOOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g7N_T-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_g7NYOuiaEd6gMtZRCjS81g" target="_g7NYTOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">typeContain</attribute>
    </edge>
    <edge id="_g7N_T-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_g7NYTOiaEd6gMtZRCjS81g" target="_g7NYOuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g7N_VeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_g7NYPuiaEd6gMtZRCjS81g" target="_g7NYPeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">contents</attribute>
    </edge>
    <edge id="_g7N_VeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_g7NYPeiaEd6gMtZRCjS81g" target="_g7NYPuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g7N_W-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_g7NYR-iaEd6gMtZRCjS81g" target="_g7NYRuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">contents</attribute>
    </edge>
    <edge id="_g7N_W-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_g7NYRuiaEd6gMtZRCjS81g" target="_g7NYR-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g7N_auiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_g7NYTuiaEd6gMtZRCjS81g" target="_g7NYPeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">content</attribute>
    </edge>
    <edge id="_g7N_auiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_g7NYPeiaEd6gMtZRCjS81g" target="_g7NYTuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g7N_beiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_g7NYTuiaEd6gMtZRCjS81g" target="_g7NYRuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">attributes</attribute>
    </edge>
    <edge id="_g7N_beiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_g7NYRuiaEd6gMtZRCjS81g" target="_g7NYTuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g7N_TOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_g7NYOuiaEd6gMtZRCjS81g" target="_g7NYTOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">typeRef</attribute>
    </edge>
    <edge id="_g7N_TOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_g7NYTOiaEd6gMtZRCjS81g" target="_g7NYOuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g7N_UuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_g7NYO-iaEd6gMtZRCjS81g" target="_g7NYQOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">references</attribute>
    </edge>
    <edge id="_g7N_UuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_g7NYQOiaEd6gMtZRCjS81g" target="_g7NYO-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g7N_WOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_g7NYQeiaEd6gMtZRCjS81g" target="_g7NYQ-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">referencedGroup</attribute>
    </edge>
    <edge id="_g7N_WOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_g7NYQ-iaEd6gMtZRCjS81g" target="_g7NYQeiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_g7N_XuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_g7NYR-iaEd6gMtZRCjS81g" target="_g7NYSOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">references</attribute>
    </edge>
    <edge id="_g7N_XuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_g7NYSOiaEd6gMtZRCjS81g" target="_g7NYR-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g7N_YeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_g7NYSuiaEd6gMtZRCjS81g" target="_g7NYS-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">references</attribute>
    </edge>
    <edge id="_g7N_YeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_g7NYS-iaEd6gMtZRCjS81g" target="_g7NYSuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g7N_ZOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_g7NYTeiaEd6gMtZRCjS81g" target="_g7NYT-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">extensions</attribute>
    </edge>
    <edge id="_g7N_ZOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_g7NYT-iaEd6gMtZRCjS81g" target="_g7NYTeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g7N_Z-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_g7NYTuiaEd6gMtZRCjS81g" target="_g7NYUOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">extensions</attribute>
    </edge>
    <edge id="_g7N_Z-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_g7NYUOiaEd6gMtZRCjS81g" target="_g7NYTuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g7PNYOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g7NYN-iaEd6gMtZRCjS81g" target="_g7NYM-iaEd6gMtZRCjS81g"/>
    <edge id="_g7PNYOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g7NYM-iaEd6gMtZRCjS81g" target="_g7NYN-iaEd6gMtZRCjS81g"/>
    <edge id="_g7PNYeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g7NYOOiaEd6gMtZRCjS81g" target="_g7NYM-iaEd6gMtZRCjS81g"/>
    <edge id="_g7PNYeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g7NYM-iaEd6gMtZRCjS81g" target="_g7NYOOiaEd6gMtZRCjS81g"/>
    <edge id="_g7PNYuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g7NYOeiaEd6gMtZRCjS81g" target="_g7NYN-iaEd6gMtZRCjS81g"/>
    <edge id="_g7PNYuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g7NYN-iaEd6gMtZRCjS81g" target="_g7NYOeiaEd6gMtZRCjS81g"/>
    <edge id="_g7PNY-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g7NYOuiaEd6gMtZRCjS81g" target="_g7NYOeiaEd6gMtZRCjS81g"/>
    <edge id="_g7PNY-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g7NYOeiaEd6gMtZRCjS81g" target="_g7NYOuiaEd6gMtZRCjS81g"/>
    <edge id="_g7PNZOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g7NYO-iaEd6gMtZRCjS81g" target="_g7NYOuiaEd6gMtZRCjS81g"/>
    <edge id="_g7PNZOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g7NYOuiaEd6gMtZRCjS81g" target="_g7NYO-iaEd6gMtZRCjS81g"/>
    <edge id="_g7PNZeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g7NYO-iaEd6gMtZRCjS81g" target="_g7NYP-iaEd6gMtZRCjS81g"/>
    <edge id="_g7PNZeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g7NYP-iaEd6gMtZRCjS81g" target="_g7NYO-iaEd6gMtZRCjS81g"/>
    <edge id="_g7PNZuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g7NYPeiaEd6gMtZRCjS81g" target="_g7NYPOiaEd6gMtZRCjS81g"/>
    <edge id="_g7PNZuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g7NYPOiaEd6gMtZRCjS81g" target="_g7NYPeiaEd6gMtZRCjS81g"/>
    <edge id="_g7PNZ-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g7NYPuiaEd6gMtZRCjS81g" target="_g7NYPeiaEd6gMtZRCjS81g"/>
    <edge id="_g7PNZ-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g7NYPeiaEd6gMtZRCjS81g" target="_g7NYPuiaEd6gMtZRCjS81g"/>
    <edge id="_g7PNaOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g7NYP-iaEd6gMtZRCjS81g" target="_g7NYPeiaEd6gMtZRCjS81g"/>
    <edge id="_g7PNaOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g7NYPeiaEd6gMtZRCjS81g" target="_g7NYP-iaEd6gMtZRCjS81g"/>
    <edge id="_g7PNaeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g7NYQOiaEd6gMtZRCjS81g" target="_g7NYP-iaEd6gMtZRCjS81g"/>
    <edge id="_g7PNaeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g7NYP-iaEd6gMtZRCjS81g" target="_g7NYQOiaEd6gMtZRCjS81g"/>
    <edge id="_g7PNauiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g7NYQeiaEd6gMtZRCjS81g" target="_g7NYP-iaEd6gMtZRCjS81g"/>
    <edge id="_g7PNauiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g7NYP-iaEd6gMtZRCjS81g" target="_g7NYQeiaEd6gMtZRCjS81g"/>
    <edge id="_g7PNa-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g7NYQuiaEd6gMtZRCjS81g" target="_g7NYPuiaEd6gMtZRCjS81g"/>
    <edge id="_g7PNa-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g7NYPuiaEd6gMtZRCjS81g" target="_g7NYQuiaEd6gMtZRCjS81g"/>
    <edge id="_g7P0cOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g7NYQ-iaEd6gMtZRCjS81g" target="_g7NYOeiaEd6gMtZRCjS81g"/>
    <edge id="_g7P0cOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g7NYOeiaEd6gMtZRCjS81g" target="_g7NYQ-iaEd6gMtZRCjS81g"/>
    <edge id="_g7P0ceiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g7NYQ-iaEd6gMtZRCjS81g" target="_g7NYPuiaEd6gMtZRCjS81g"/>
    <edge id="_g7P0ceiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g7NYPuiaEd6gMtZRCjS81g" target="_g7NYQ-iaEd6gMtZRCjS81g"/>
    <edge id="_g7P0cuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g7NYROiaEd6gMtZRCjS81g" target="_g7NYPuiaEd6gMtZRCjS81g"/>
    <edge id="_g7P0cuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g7NYPuiaEd6gMtZRCjS81g" target="_g7NYROiaEd6gMtZRCjS81g"/>
    <edge id="_g7P0c-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g7NYReiaEd6gMtZRCjS81g" target="_g7NYPuiaEd6gMtZRCjS81g"/>
    <edge id="_g7P0c-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g7NYPuiaEd6gMtZRCjS81g" target="_g7NYReiaEd6gMtZRCjS81g"/>
    <edge id="_g7P0dOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g7NYRuiaEd6gMtZRCjS81g" target="_g7NYPOiaEd6gMtZRCjS81g"/>
    <edge id="_g7P0dOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g7NYPOiaEd6gMtZRCjS81g" target="_g7NYRuiaEd6gMtZRCjS81g"/>
    <edge id="_g7P0deiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g7NYR-iaEd6gMtZRCjS81g" target="_g7NYRuiaEd6gMtZRCjS81g"/>
    <edge id="_g7P0deiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g7NYRuiaEd6gMtZRCjS81g" target="_g7NYR-iaEd6gMtZRCjS81g"/>
    <edge id="_g7P0duiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g7NYR-iaEd6gMtZRCjS81g" target="_g7NYOeiaEd6gMtZRCjS81g"/>
    <edge id="_g7P0duiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g7NYOeiaEd6gMtZRCjS81g" target="_g7NYR-iaEd6gMtZRCjS81g"/>
    <edge id="_g7P0d-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g7NYSOiaEd6gMtZRCjS81g" target="_g7NYSeiaEd6gMtZRCjS81g"/>
    <edge id="_g7P0d-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g7NYSeiaEd6gMtZRCjS81g" target="_g7NYSOiaEd6gMtZRCjS81g"/>
    <edge id="_g7P0eOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g7NYSeiaEd6gMtZRCjS81g" target="_g7NYRuiaEd6gMtZRCjS81g"/>
    <edge id="_g7P0eOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g7NYRuiaEd6gMtZRCjS81g" target="_g7NYSeiaEd6gMtZRCjS81g"/>
    <edge id="_g7P0eeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g7NYSuiaEd6gMtZRCjS81g" target="_g7NYOuiaEd6gMtZRCjS81g"/>
    <edge id="_g7P0eeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g7NYOuiaEd6gMtZRCjS81g" target="_g7NYSuiaEd6gMtZRCjS81g"/>
    <edge id="_g7P0euiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g7NYSuiaEd6gMtZRCjS81g" target="_g7NYSeiaEd6gMtZRCjS81g"/>
    <edge id="_g7P0euiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g7NYSeiaEd6gMtZRCjS81g" target="_g7NYSuiaEd6gMtZRCjS81g"/>
    <edge id="_g7P0e-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g7NYS-iaEd6gMtZRCjS81g" target="_g7NYSeiaEd6gMtZRCjS81g"/>
    <edge id="_g7P0e-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g7NYSeiaEd6gMtZRCjS81g" target="_g7NYS-iaEd6gMtZRCjS81g"/>
    <edge id="_g7P0fOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g7NYTOiaEd6gMtZRCjS81g" target="_g7NYOeiaEd6gMtZRCjS81g"/>
    <edge id="_g7P0fOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g7NYOeiaEd6gMtZRCjS81g" target="_g7NYTOiaEd6gMtZRCjS81g"/>
    <edge id="_g7P0feiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g7NYTeiaEd6gMtZRCjS81g" target="_g7NYTOiaEd6gMtZRCjS81g"/>
    <edge id="_g7P0feiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g7NYTOiaEd6gMtZRCjS81g" target="_g7NYTeiaEd6gMtZRCjS81g"/>
    <edge id="_g7P0fuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g7NYTuiaEd6gMtZRCjS81g" target="_g7NYTOiaEd6gMtZRCjS81g"/>
    <edge id="_g7P0fuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g7NYTOiaEd6gMtZRCjS81g" target="_g7NYTuiaEd6gMtZRCjS81g"/>
    <edge id="_g7P0f-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g7NYT-iaEd6gMtZRCjS81g" target="_g7NYTuiaEd6gMtZRCjS81g"/>
    <edge id="_g7P0f-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g7NYTuiaEd6gMtZRCjS81g" target="_g7NYT-iaEd6gMtZRCjS81g"/>
    <edge id="_g7QbgOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g7NYUOiaEd6gMtZRCjS81g" target="_g7NYTuiaEd6gMtZRCjS81g"/>
    <edge id="_g7QbgOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g7NYTuiaEd6gMtZRCjS81g" target="_g7NYUOiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
