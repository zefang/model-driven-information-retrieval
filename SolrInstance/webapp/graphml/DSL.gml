<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_d8SwAOiaEd6gMtZRCjS81g" projectName="DSL">
    <node className="NamedElement" id="_d8SwA-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>identity</attribute>
    </node>
    <node className="LoadedElement" id="_d8SwBOiaEd6gMtZRCjS81g">
      <attribute>isLoaded</attribute>
    </node>
    <node className="Namespace" id="_d8SwBeiaEd6gMtZRCjS81g">
      <attribute>namespace</attribute>
    </node>
    <node className="DomainModel" id="_d8SwBuiaEd6gMtZRCjS81g"/>
    <node className="Classifier" id="_d8SwB-iaEd6gMtZRCjS81g">
      <attribute>isAbstract</attribute>
    </node>
    <node className="Class" id="_d8SwCOiaEd6gMtZRCjS81g">
      <attribute>isSerializationRoot</attribute>
    </node>
    <node className="Relationship" id="_d8SwCeiaEd6gMtZRCjS81g">
      <attribute>isEmbedding</attribute>
    </node>
    <node className="Role" id="_d8SwCuiaEd6gMtZRCjS81g">
      <attribute>min</attribute>
      <attribute>max</attribute>
      <attribute>isUnbounded</attribute>
      <attribute>accepts</attribute>
      <attribute>isOrdered</attribute>
      <attribute>isNavigableFrom</attribute>
      <attribute>isPropertyGenerator</attribute>
    </node>
    <node className="ValueProperty" id="_d8SwC-iaEd6gMtZRCjS81g"/>
    <node className="Type" id="_d8SwDOiaEd6gMtZRCjS81g"/>
    <node className="SimpleType" id="_d8SwDeiaEd6gMtZRCjS81g"/>
    <node className="EnumerationLiteral" id="_d8SwDuiaEd6gMtZRCjS81g">
      <attribute>value</attribute>
    </node>
    <node className="Enumeration" id="_d8SwD-iaEd6gMtZRCjS81g"/>
    <edge id="_d8TXH-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_d8SwBuiaEd6gMtZRCjS81g" target="_d8SwB-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">classifiers</attribute>
    </edge>
    <edge id="_d8TXH-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_d8SwB-iaEd6gMtZRCjS81g" target="_d8SwBuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d8TXIuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_d8SwBuiaEd6gMtZRCjS81g" target="_d8SwDOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">types</attribute>
    </edge>
    <edge id="_d8TXIuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_d8SwDOiaEd6gMtZRCjS81g" target="_d8SwBuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d8TXJeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_d8SwB-iaEd6gMtZRCjS81g" target="_d8SwC-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">properties</attribute>
    </edge>
    <edge id="_d8TXJeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_d8SwC-iaEd6gMtZRCjS81g" target="_d8SwB-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d8TXK-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_d8SwCeiaEd6gMtZRCjS81g" target="_d8SwCuiaEd6gMtZRCjS81g">
      <attribute lowerValue="2" upperValue="2">roles</attribute>
    </edge>
    <edge id="_d8TXK-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_d8SwCuiaEd6gMtZRCjS81g" target="_d8SwCeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d8TXN-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_d8SwD-iaEd6gMtZRCjS81g" target="_d8SwDuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">literals</attribute>
    </edge>
    <edge id="_d8TXN-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_d8SwDuiaEd6gMtZRCjS81g" target="_d8SwD-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d8TXKOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_d8SwB-iaEd6gMtZRCjS81g" target="_d8SwB-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">superType</attribute>
    </edge>
    <edge id="_d8TXKOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_d8SwB-iaEd6gMtZRCjS81g" target="_d8SwB-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_d8TXLuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_d8SwCuiaEd6gMtZRCjS81g" target="_d8SwB-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">source</attribute>
    </edge>
    <edge id="_d8TXLuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_d8SwB-iaEd6gMtZRCjS81g" target="_d8SwCuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d8TXMeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_d8SwCuiaEd6gMtZRCjS81g" target="_d8SwB-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">type</attribute>
    </edge>
    <edge id="_d8TXMeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_d8SwB-iaEd6gMtZRCjS81g" target="_d8SwCuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d8TXNOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_d8SwC-iaEd6gMtZRCjS81g" target="_d8SwDOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">type</attribute>
    </edge>
    <edge id="_d8TXNOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_d8SwDOiaEd6gMtZRCjS81g" target="_d8SwC-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d8T-IOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_d8SwBOiaEd6gMtZRCjS81g" target="_d8SwBeiaEd6gMtZRCjS81g"/>
    <edge id="_d8T-IOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_d8SwBeiaEd6gMtZRCjS81g" target="_d8SwBOiaEd6gMtZRCjS81g"/>
    <edge id="_d8T-IeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_d8SwBeiaEd6gMtZRCjS81g" target="_d8SwA-iaEd6gMtZRCjS81g"/>
    <edge id="_d8T-IeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_d8SwA-iaEd6gMtZRCjS81g" target="_d8SwBeiaEd6gMtZRCjS81g"/>
    <edge id="_d8T-IuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_d8SwBuiaEd6gMtZRCjS81g" target="_d8SwBOiaEd6gMtZRCjS81g"/>
    <edge id="_d8T-IuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_d8SwBOiaEd6gMtZRCjS81g" target="_d8SwBuiaEd6gMtZRCjS81g"/>
    <edge id="_d8T-I-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_d8SwB-iaEd6gMtZRCjS81g" target="_d8SwBOiaEd6gMtZRCjS81g"/>
    <edge id="_d8T-I-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_d8SwBOiaEd6gMtZRCjS81g" target="_d8SwB-iaEd6gMtZRCjS81g"/>
    <edge id="_d8T-JOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_d8SwCOiaEd6gMtZRCjS81g" target="_d8SwB-iaEd6gMtZRCjS81g"/>
    <edge id="_d8T-JOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_d8SwB-iaEd6gMtZRCjS81g" target="_d8SwCOiaEd6gMtZRCjS81g"/>
    <edge id="_d8T-JeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_d8SwCeiaEd6gMtZRCjS81g" target="_d8SwB-iaEd6gMtZRCjS81g"/>
    <edge id="_d8T-JeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_d8SwB-iaEd6gMtZRCjS81g" target="_d8SwCeiaEd6gMtZRCjS81g"/>
    <edge id="_d8T-JuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_d8SwCuiaEd6gMtZRCjS81g" target="_d8SwA-iaEd6gMtZRCjS81g"/>
    <edge id="_d8T-JuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_d8SwA-iaEd6gMtZRCjS81g" target="_d8SwCuiaEd6gMtZRCjS81g"/>
    <edge id="_d8UlMOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_d8SwC-iaEd6gMtZRCjS81g" target="_d8SwA-iaEd6gMtZRCjS81g"/>
    <edge id="_d8UlMOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_d8SwA-iaEd6gMtZRCjS81g" target="_d8SwC-iaEd6gMtZRCjS81g"/>
    <edge id="_d8UlMeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_d8SwDOiaEd6gMtZRCjS81g" target="_d8SwBeiaEd6gMtZRCjS81g"/>
    <edge id="_d8UlMeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_d8SwBeiaEd6gMtZRCjS81g" target="_d8SwDOiaEd6gMtZRCjS81g"/>
    <edge id="_d8UlMuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_d8SwDeiaEd6gMtZRCjS81g" target="_d8SwDOiaEd6gMtZRCjS81g"/>
    <edge id="_d8UlMuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_d8SwDOiaEd6gMtZRCjS81g" target="_d8SwDeiaEd6gMtZRCjS81g"/>
    <edge id="_d8UlM-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_d8SwDuiaEd6gMtZRCjS81g" target="_d8SwA-iaEd6gMtZRCjS81g"/>
    <edge id="_d8UlM-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_d8SwA-iaEd6gMtZRCjS81g" target="_d8SwDuiaEd6gMtZRCjS81g"/>
    <edge id="_d8UlNOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_d8SwD-iaEd6gMtZRCjS81g" target="_d8SwDOiaEd6gMtZRCjS81g"/>
    <edge id="_d8UlNOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_d8SwDOiaEd6gMtZRCjS81g" target="_d8SwD-iaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
