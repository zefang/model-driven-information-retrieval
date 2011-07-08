<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_edSkQOiaEd6gMtZRCjS81g" projectName="JAVA">
    <node className="Modifier" id="_edSkQ-iaEd6gMtZRCjS81g">
      <attribute>visibility</attribute>
      <attribute>state</attribute>
      <attribute>name</attribute>
    </node>
    <node className="Class" id="_edSkROiaEd6gMtZRCjS81g"/>
    <node className="Interface" id="_edSkReiaEd6gMtZRCjS81g"/>
    <node className="Method" id="_edSkRuiaEd6gMtZRCjS81g">
      <attribute>share</attribute>
    </node>
    <node className="Field" id="_edSkR-iaEd6gMtZRCjS81g">
      <attribute>share</attribute>
    </node>
    <node className="Value" id="_edSkSOiaEd6gMtZRCjS81g"/>
    <node className="Parameter" id="_edSkSeiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Type" id="_edSkSuiaEd6gMtZRCjS81g"/>
    <node className="ReferenceType" id="_edSkS-iaEd6gMtZRCjS81g"/>
    <node className="PrimitiveType" id="_edSkTOiaEd6gMtZRCjS81g"/>
    <node className="Int" id="_edSkTeiaEd6gMtZRCjS81g"/>
    <edge id="_edSkWuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_edSkROiaEd6gMtZRCjS81g" target="_edSkRuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">methods</attribute>
    </edge>
    <edge id="_edSkWuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_edSkRuiaEd6gMtZRCjS81g" target="_edSkROiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_edSkXeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_edSkROiaEd6gMtZRCjS81g" target="_edSkR-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">fields</attribute>
    </edge>
    <edge id="_edSkXeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_edSkR-iaEd6gMtZRCjS81g" target="_edSkROiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_edSkY-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_edSkReiaEd6gMtZRCjS81g" target="_edSkRuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">abstractMethods</attribute>
    </edge>
    <edge id="_edSkY-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_edSkRuiaEd6gMtZRCjS81g" target="_edSkReiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_edTLUeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_edSkReiaEd6gMtZRCjS81g" target="_edSkR-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">constants</attribute>
    </edge>
    <edge id="_edTLUeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_edSkR-iaEd6gMtZRCjS81g" target="_edSkReiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_edTLV-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_edSkRuiaEd6gMtZRCjS81g" target="_edSkSeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">parameters</attribute>
    </edge>
    <edge id="_edTLV-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_edSkSeiaEd6gMtZRCjS81g" target="_edSkRuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_edTLWuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_edSkR-iaEd6gMtZRCjS81g" target="_edSkSOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">value</attribute>
    </edge>
    <edge id="_edTLWuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_edSkSOiaEd6gMtZRCjS81g" target="_edSkR-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_edSkVOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_edSkROiaEd6gMtZRCjS81g" target="_edSkROiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">superClass</attribute>
    </edge>
    <edge id="_edSkVOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_edSkROiaEd6gMtZRCjS81g" target="_edSkROiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_edSkV-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_edSkROiaEd6gMtZRCjS81g" target="_edSkReiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">implement</attribute>
    </edge>
    <edge id="_edSkV-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_edSkReiaEd6gMtZRCjS81g" target="_edSkROiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_edSkYOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_edSkReiaEd6gMtZRCjS81g" target="_edSkReiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">superInterface</attribute>
    </edge>
    <edge id="_edSkYOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_edSkReiaEd6gMtZRCjS81g" target="_edSkReiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_edTLVOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_edSkRuiaEd6gMtZRCjS81g" target="_edSkSuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">resultOf</attribute>
    </edge>
    <edge id="_edTLVOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_edSkSuiaEd6gMtZRCjS81g" target="_edSkRuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_edTLXeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_edSkR-iaEd6gMtZRCjS81g" target="_edSkSuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">typeOf</attribute>
    </edge>
    <edge id="_edTLXeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_edSkSuiaEd6gMtZRCjS81g" target="_edSkR-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_edTLYOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_edSkSeiaEd6gMtZRCjS81g" target="_edSkSuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">typeOf</attribute>
    </edge>
    <edge id="_edTLYOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_edSkSuiaEd6gMtZRCjS81g" target="_edSkSeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_edTLY-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_edSkS-iaEd6gMtZRCjS81g" target="_edSkROiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">reference</attribute>
    </edge>
    <edge id="_edTLY-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_edSkROiaEd6gMtZRCjS81g" target="_edSkS-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_edTLaOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_edSkROiaEd6gMtZRCjS81g" target="_edSkQ-iaEd6gMtZRCjS81g"/>
    <edge id="_edTLaOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_edSkQ-iaEd6gMtZRCjS81g" target="_edSkROiaEd6gMtZRCjS81g"/>
    <edge id="_edTyYOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_edSkReiaEd6gMtZRCjS81g" target="_edSkQ-iaEd6gMtZRCjS81g"/>
    <edge id="_edTyYOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_edSkQ-iaEd6gMtZRCjS81g" target="_edSkReiaEd6gMtZRCjS81g"/>
    <edge id="_edTyYeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_edSkRuiaEd6gMtZRCjS81g" target="_edSkQ-iaEd6gMtZRCjS81g"/>
    <edge id="_edTyYeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_edSkQ-iaEd6gMtZRCjS81g" target="_edSkRuiaEd6gMtZRCjS81g"/>
    <edge id="_edTyYuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_edSkR-iaEd6gMtZRCjS81g" target="_edSkQ-iaEd6gMtZRCjS81g"/>
    <edge id="_edTyYuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_edSkQ-iaEd6gMtZRCjS81g" target="_edSkR-iaEd6gMtZRCjS81g"/>
    <edge id="_edTyY-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_edSkS-iaEd6gMtZRCjS81g" target="_edSkSuiaEd6gMtZRCjS81g"/>
    <edge id="_edTyY-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_edSkSuiaEd6gMtZRCjS81g" target="_edSkS-iaEd6gMtZRCjS81g"/>
    <edge id="_edTyZOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_edSkTOiaEd6gMtZRCjS81g" target="_edSkSuiaEd6gMtZRCjS81g"/>
    <edge id="_edTyZOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_edSkSuiaEd6gMtZRCjS81g" target="_edSkTOiaEd6gMtZRCjS81g"/>
    <edge id="_edTyZeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_edSkTeiaEd6gMtZRCjS81g" target="_edSkTOiaEd6gMtZRCjS81g"/>
    <edge id="_edTyZeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_edSkTOiaEd6gMtZRCjS81g" target="_edSkTeiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
