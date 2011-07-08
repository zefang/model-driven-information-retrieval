<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_d9cmkOiaEd6gMtZRCjS81g" projectName="DTD">
    <node className="TypeDescription" id="_d9cmk-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Notation" id="_d9cmlOiaEd6gMtZRCjS81g">
      <attribute>content</attribute>
    </node>
    <node className="Entity" id="_d9cmleiaEd6gMtZRCjS81g">
      <attribute>content</attribute>
      <attribute>isInternal</attribute>
    </node>
    <node className="Element" id="_d9cmluiaEd6gMtZRCjS81g"/>
    <node className="AnyElement" id="_d9cml-iaEd6gMtZRCjS81g"/>
    <node className="RestrictedElement" id="_d9cmmOiaEd6gMtZRCjS81g"/>
    <node className="ElementContent" id="_d9cmmeiaEd6gMtZRCjS81g"/>
    <node className="Mixed" id="_d9cmmuiaEd6gMtZRCjS81g">
      <attribute>elements</attribute>
    </node>
    <node className="Children" id="_d9cmm-iaEd6gMtZRCjS81g">
      <attribute>occ</attribute>
    </node>
    <node className="Sequence" id="_d9cmnOiaEd6gMtZRCjS81g"/>
    <node className="Leaf" id="_d9cmneiaEd6gMtZRCjS81g">
      <attribute>elementName</attribute>
    </node>
    <node className="Choice" id="_d9cmnuiaEd6gMtZRCjS81g"/>
    <node className="AttributeList" id="_d9cmn-iaEd6gMtZRCjS81g"/>
    <node className="AttributeDescription" id="_d9cmoOiaEd6gMtZRCjS81g"/>
    <node className="NoDefaultValue" id="_d9cmoeiaEd6gMtZRCjS81g">
      <attribute>isRequired</attribute>
    </node>
    <node className="DefaultValue" id="_d9cmouiaEd6gMtZRCjS81g">
      <attribute>value</attribute>
      <attribute>isFixed</attribute>
    </node>
    <node className="AttributeType" id="_d9cmo-iaEd6gMtZRCjS81g"/>
    <node className="Enumeration" id="_d9cmpOiaEd6gMtZRCjS81g">
      <attribute>values</attribute>
    </node>
    <node className="OtherAttributeType" id="_d9cmpeiaEd6gMtZRCjS81g">
      <attribute>type</attribute>
    </node>
    <edge id="_d9dNrOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_d9cmmOiaEd6gMtZRCjS81g" target="_d9cmmeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">content</attribute>
    </edge>
    <edge id="_d9dNrOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_d9cmmeiaEd6gMtZRCjS81g" target="_d9cmmOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d9dNuOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_d9cmoOiaEd6gMtZRCjS81g" target="_d9cmo-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">type</attribute>
    </edge>
    <edge id="_d9dNuOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_d9cmo-iaEd6gMtZRCjS81g" target="_d9cmoOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d9dNr-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_d9cmnOiaEd6gMtZRCjS81g" target="_d9cmm-iaEd6gMtZRCjS81g">
      <attribute lowerValue="2" upperValue="*">children</attribute>
    </edge>
    <edge id="_d9dNr-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_d9cmm-iaEd6gMtZRCjS81g" target="_d9cmnOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d9dNsuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_d9cmnuiaEd6gMtZRCjS81g" target="_d9cmm-iaEd6gMtZRCjS81g">
      <attribute lowerValue="2" upperValue="*">childrenChoice</attribute>
    </edge>
    <edge id="_d9dNsuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_d9cmm-iaEd6gMtZRCjS81g" target="_d9cmnuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d9dNteiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_d9cmn-iaEd6gMtZRCjS81g" target="_d9cmoOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">containsAttributes</attribute>
    </edge>
    <edge id="_d9dNteiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_d9cmoOiaEd6gMtZRCjS81g" target="_d9cmn-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d9d0sOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_d9cmlOiaEd6gMtZRCjS81g" target="_d9cmk-iaEd6gMtZRCjS81g"/>
    <edge id="_d9d0sOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_d9cmk-iaEd6gMtZRCjS81g" target="_d9cmlOiaEd6gMtZRCjS81g"/>
    <edge id="_d9d0seiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_d9cmleiaEd6gMtZRCjS81g" target="_d9cmk-iaEd6gMtZRCjS81g"/>
    <edge id="_d9d0seiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_d9cmk-iaEd6gMtZRCjS81g" target="_d9cmleiaEd6gMtZRCjS81g"/>
    <edge id="_d9d0suiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_d9cmluiaEd6gMtZRCjS81g" target="_d9cmk-iaEd6gMtZRCjS81g"/>
    <edge id="_d9d0suiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_d9cmk-iaEd6gMtZRCjS81g" target="_d9cmluiaEd6gMtZRCjS81g"/>
    <edge id="_d9d0s-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_d9cml-iaEd6gMtZRCjS81g" target="_d9cmluiaEd6gMtZRCjS81g"/>
    <edge id="_d9d0s-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_d9cmluiaEd6gMtZRCjS81g" target="_d9cml-iaEd6gMtZRCjS81g"/>
    <edge id="_d9d0tOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_d9cmmOiaEd6gMtZRCjS81g" target="_d9cmluiaEd6gMtZRCjS81g"/>
    <edge id="_d9d0tOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_d9cmluiaEd6gMtZRCjS81g" target="_d9cmmOiaEd6gMtZRCjS81g"/>
    <edge id="_d9d0teiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_d9cmmuiaEd6gMtZRCjS81g" target="_d9cmmeiaEd6gMtZRCjS81g"/>
    <edge id="_d9d0teiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_d9cmmeiaEd6gMtZRCjS81g" target="_d9cmmuiaEd6gMtZRCjS81g"/>
    <edge id="_d9d0tuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_d9cmm-iaEd6gMtZRCjS81g" target="_d9cmmeiaEd6gMtZRCjS81g"/>
    <edge id="_d9d0tuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_d9cmmeiaEd6gMtZRCjS81g" target="_d9cmm-iaEd6gMtZRCjS81g"/>
    <edge id="_d9ebwOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_d9cmnOiaEd6gMtZRCjS81g" target="_d9cmm-iaEd6gMtZRCjS81g"/>
    <edge id="_d9ebwOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_d9cmm-iaEd6gMtZRCjS81g" target="_d9cmnOiaEd6gMtZRCjS81g"/>
    <edge id="_d9ebweiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_d9cmneiaEd6gMtZRCjS81g" target="_d9cmm-iaEd6gMtZRCjS81g"/>
    <edge id="_d9ebweiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_d9cmm-iaEd6gMtZRCjS81g" target="_d9cmneiaEd6gMtZRCjS81g"/>
    <edge id="_d9ebwuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_d9cmnuiaEd6gMtZRCjS81g" target="_d9cmm-iaEd6gMtZRCjS81g"/>
    <edge id="_d9ebwuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_d9cmm-iaEd6gMtZRCjS81g" target="_d9cmnuiaEd6gMtZRCjS81g"/>
    <edge id="_d9ebw-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_d9cmn-iaEd6gMtZRCjS81g" target="_d9cmk-iaEd6gMtZRCjS81g"/>
    <edge id="_d9ebw-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_d9cmk-iaEd6gMtZRCjS81g" target="_d9cmn-iaEd6gMtZRCjS81g"/>
    <edge id="_d9ebxOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_d9cmoOiaEd6gMtZRCjS81g" target="_d9cmk-iaEd6gMtZRCjS81g"/>
    <edge id="_d9ebxOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_d9cmk-iaEd6gMtZRCjS81g" target="_d9cmoOiaEd6gMtZRCjS81g"/>
    <edge id="_d9ebxeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_d9cmoeiaEd6gMtZRCjS81g" target="_d9cmoOiaEd6gMtZRCjS81g"/>
    <edge id="_d9ebxeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_d9cmoOiaEd6gMtZRCjS81g" target="_d9cmoeiaEd6gMtZRCjS81g"/>
    <edge id="_d9ebxuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_d9cmouiaEd6gMtZRCjS81g" target="_d9cmoOiaEd6gMtZRCjS81g"/>
    <edge id="_d9ebxuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_d9cmoOiaEd6gMtZRCjS81g" target="_d9cmouiaEd6gMtZRCjS81g"/>
    <edge id="_d9ebx-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_d9cmpOiaEd6gMtZRCjS81g" target="_d9cmo-iaEd6gMtZRCjS81g"/>
    <edge id="_d9ebx-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_d9cmo-iaEd6gMtZRCjS81g" target="_d9cmpOiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
