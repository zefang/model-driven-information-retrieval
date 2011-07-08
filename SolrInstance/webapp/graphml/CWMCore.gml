<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_dzVBQOiaEd6gMtZRCjS81g" projectName="CWMCore">
    <node className="BooleanExpression" id="_dzVBQ-iaEd6gMtZRCjS81g">
      <attribute>expresssion</attribute>
    </node>
    <node className="ModelElement" id="_dzVBROiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>visibility</attribute>
    </node>
    <node className="Dependency" id="_dzVBReiaEd6gMtZRCjS81g">
      <attribute>kind</attribute>
    </node>
    <node className="Constraint" id="_dzVBRuiaEd6gMtZRCjS81g"/>
    <node className="Feature" id="_dzVBR-iaEd6gMtZRCjS81g"/>
    <node className="StructuralFeature" id="_dzVBSOiaEd6gMtZRCjS81g"/>
    <node className="Attribute" id="_dzVBSeiaEd6gMtZRCjS81g"/>
    <node className="NameSpace" id="_dzVBSuiaEd6gMtZRCjS81g"/>
    <node className="Classifier" id="_dzVBS-iaEd6gMtZRCjS81g"/>
    <node className="Package" id="_dzVBTOiaEd6gMtZRCjS81g"/>
    <node className="Class" id="_dzVBTeiaEd6gMtZRCjS81g"/>
    <node className="Datatype" id="_dzVBTuiaEd6gMtZRCjS81g"/>
    <node className="Subsystem" id="_dzVBT-iaEd6gMtZRCjS81g"/>
    <node className="Model" id="_dzVBUOiaEd6gMtZRCjS81g"/>
    <edge id="_dzVoVeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dzVBRuiaEd6gMtZRCjS81g" target="_dzVBQ-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">body</attribute>
    </edge>
    <edge id="_dzVoVeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dzVBQ-iaEd6gMtZRCjS81g" target="_dzVBRuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dzVoW-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dzVBSuiaEd6gMtZRCjS81g" target="_dzVBROiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">ownedElements</attribute>
    </edge>
    <edge id="_dzVoW-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dzVBROiaEd6gMtZRCjS81g" target="_dzVBSuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dzVoXuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dzVBS-iaEd6gMtZRCjS81g" target="_dzVBR-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">features</attribute>
    </edge>
    <edge id="_dzVoXuiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dzVBR-iaEd6gMtZRCjS81g" target="_dzVBS-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dzVBVeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dzVBROiaEd6gMtZRCjS81g" target="_dzVBRuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">contraints</attribute>
    </edge>
    <edge id="_dzVBVeiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_dzVBRuiaEd6gMtZRCjS81g" target="_dzVBROiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_dzVBWOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dzVBROiaEd6gMtZRCjS81g" target="_dzVBReiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">clientDependencies</attribute>
    </edge>
    <edge id="_dzVBWOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dzVBReiaEd6gMtZRCjS81g" target="_dzVBROiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_dzVBW-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dzVBROiaEd6gMtZRCjS81g" target="_dzVBReiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">supplierDependencies</attribute>
    </edge>
    <edge id="_dzVBW-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dzVBReiaEd6gMtZRCjS81g" target="_dzVBROiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_dzVoUuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dzVBROiaEd6gMtZRCjS81g" target="_dzVBTOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">importers</attribute>
    </edge>
    <edge id="_dzVoUuiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_dzVBTOiaEd6gMtZRCjS81g" target="_dzVBROiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_dzVoWOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dzVBSOiaEd6gMtZRCjS81g" target="_dzVBS-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">type</attribute>
    </edge>
    <edge id="_dzVoWOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dzVBS-iaEd6gMtZRCjS81g" target="_dzVBSOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dzWPYOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dzVBReiaEd6gMtZRCjS81g" target="_dzVBROiaEd6gMtZRCjS81g"/>
    <edge id="_dzWPYOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dzVBROiaEd6gMtZRCjS81g" target="_dzVBReiaEd6gMtZRCjS81g"/>
    <edge id="_dzWPYeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dzVBRuiaEd6gMtZRCjS81g" target="_dzVBROiaEd6gMtZRCjS81g"/>
    <edge id="_dzWPYeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dzVBROiaEd6gMtZRCjS81g" target="_dzVBRuiaEd6gMtZRCjS81g"/>
    <edge id="_dzWPYuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dzVBR-iaEd6gMtZRCjS81g" target="_dzVBROiaEd6gMtZRCjS81g"/>
    <edge id="_dzWPYuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dzVBROiaEd6gMtZRCjS81g" target="_dzVBR-iaEd6gMtZRCjS81g"/>
    <edge id="_dzWPY-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dzVBSOiaEd6gMtZRCjS81g" target="_dzVBR-iaEd6gMtZRCjS81g"/>
    <edge id="_dzWPY-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dzVBR-iaEd6gMtZRCjS81g" target="_dzVBSOiaEd6gMtZRCjS81g"/>
    <edge id="_dzWPZOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dzVBSeiaEd6gMtZRCjS81g" target="_dzVBSOiaEd6gMtZRCjS81g"/>
    <edge id="_dzWPZOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dzVBSOiaEd6gMtZRCjS81g" target="_dzVBSeiaEd6gMtZRCjS81g"/>
    <edge id="_dzWPZeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dzVBSuiaEd6gMtZRCjS81g" target="_dzVBROiaEd6gMtZRCjS81g"/>
    <edge id="_dzWPZeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dzVBROiaEd6gMtZRCjS81g" target="_dzVBSuiaEd6gMtZRCjS81g"/>
    <edge id="_dzWPZuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dzVBS-iaEd6gMtZRCjS81g" target="_dzVBSuiaEd6gMtZRCjS81g"/>
    <edge id="_dzWPZuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dzVBSuiaEd6gMtZRCjS81g" target="_dzVBS-iaEd6gMtZRCjS81g"/>
    <edge id="_dzWPZ-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dzVBTOiaEd6gMtZRCjS81g" target="_dzVBSuiaEd6gMtZRCjS81g"/>
    <edge id="_dzWPZ-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dzVBSuiaEd6gMtZRCjS81g" target="_dzVBTOiaEd6gMtZRCjS81g"/>
    <edge id="_dzWPaOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dzVBTeiaEd6gMtZRCjS81g" target="_dzVBS-iaEd6gMtZRCjS81g"/>
    <edge id="_dzWPaOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dzVBS-iaEd6gMtZRCjS81g" target="_dzVBTeiaEd6gMtZRCjS81g"/>
    <edge id="_dzWPaeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dzVBTuiaEd6gMtZRCjS81g" target="_dzVBS-iaEd6gMtZRCjS81g"/>
    <edge id="_dzWPaeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dzVBS-iaEd6gMtZRCjS81g" target="_dzVBTuiaEd6gMtZRCjS81g"/>
    <edge id="_dzWPauiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dzVBT-iaEd6gMtZRCjS81g" target="_dzVBS-iaEd6gMtZRCjS81g"/>
    <edge id="_dzWPauiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dzVBS-iaEd6gMtZRCjS81g" target="_dzVBT-iaEd6gMtZRCjS81g"/>
    <edge id="_dzWPa-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dzVBT-iaEd6gMtZRCjS81g" target="_dzVBTOiaEd6gMtZRCjS81g"/>
    <edge id="_dzWPa-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dzVBTOiaEd6gMtZRCjS81g" target="_dzVBT-iaEd6gMtZRCjS81g"/>
    <edge id="_dzWPbOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dzVBUOiaEd6gMtZRCjS81g" target="_dzVBTOiaEd6gMtZRCjS81g"/>
    <edge id="_dzWPbOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dzVBTOiaEd6gMtZRCjS81g" target="_dzVBUOiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
