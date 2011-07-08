<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_dz8sUOiaEd6gMtZRCjS81g" projectName="CWMRelationalData">
    <node className="QueryExpression" id="_dz9TYuiaEd6gMtZRCjS81g">
      <attribute>expresssion</attribute>
    </node>
    <node className="CheckConstraint" id="_dz9TY-iaEd6gMtZRCjS81g"/>
    <node className="Column" id="_dz9TZOiaEd6gMtZRCjS81g">
      <attribute>precision</attribute>
      <attribute>scale</attribute>
      <attribute>isNullable</attribute>
      <attribute>length</attribute>
      <attribute>collectionName</attribute>
      <attribute>characterSetName</attribute>
    </node>
    <node className="ColumnSet" id="_dz9TZeiaEd6gMtZRCjS81g"/>
    <node className="NamedColumnSet" id="_dz9TZuiaEd6gMtZRCjS81g"/>
    <node className="QueryColumnSet" id="_dz9TZ-iaEd6gMtZRCjS81g"/>
    <node className="Table" id="_dz9TaOiaEd6gMtZRCjS81g">
      <attribute>isTemporary</attribute>
      <attribute>temporaryScope</attribute>
      <attribute>isSystem</attribute>
    </node>
    <node className="View" id="_dz9TaeiaEd6gMtZRCjS81g">
      <attribute>isReadOnly</attribute>
      <attribute>checkOption</attribute>
    </node>
    <node className="Trigger" id="_dz9TauiaEd6gMtZRCjS81g"/>
    <node className="SQLDataType" id="_dz9Ta-iaEd6gMtZRCjS81g">
      <attribute>typeNumber</attribute>
    </node>
    <node className="SQLDistinctType" id="_dz9TbOiaEd6gMtZRCjS81g">
      <attribute>length</attribute>
      <attribute>precision</attribute>
      <attribute>scale</attribute>
    </node>
    <node className="SQLSimpleType" id="_dz9TbeiaEd6gMtZRCjS81g">
      <attribute>characterMaximumLength</attribute>
      <attribute>characterOctetLength</attribute>
      <attribute>numericPrecision</attribute>
      <attribute>numericPrecisionRadix</attribute>
      <attribute>numericScale</attribute>
      <attribute>dateTimePrecision</attribute>
    </node>
    <edge id="_dz9TkOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dz9TZeiaEd6gMtZRCjS81g" target="_dz9TZOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">features</attribute>
    </edge>
    <edge id="_dz9TkOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dz9TZOiaEd6gMtZRCjS81g" target="_dz9TZeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dz9TluiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dz9TZ-iaEd6gMtZRCjS81g" target="_dz9TYuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">query</attribute>
    </edge>
    <edge id="_dz9TluiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dz9TYuiaEd6gMtZRCjS81g" target="_dz9TZ-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dz96ceiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dz9TaeiaEd6gMtZRCjS81g" target="_dz9TYuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">queryExpression</attribute>
    </edge>
    <edge id="_dz96ceiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dz9TYuiaEd6gMtZRCjS81g" target="_dz9TaeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dz9ThOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dz9TY-iaEd6gMtZRCjS81g" target="_dz9TZOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">constraintElements</attribute>
    </edge>
    <edge id="_dz9ThOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_dz9TZOiaEd6gMtZRCjS81g" target="_dz9TY-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_dz9Th-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dz9TY-iaEd6gMtZRCjS81g" target="_dz9TaOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">constrainedElements</attribute>
    </edge>
    <edge id="_dz9Th-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_dz9TaOiaEd6gMtZRCjS81g" target="_dz9TY-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_dz9TiuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dz9TZOiaEd6gMtZRCjS81g" target="_dz9Ta-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">type</attribute>
    </edge>
    <edge id="_dz9TiuiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_dz9Ta-iaEd6gMtZRCjS81g" target="_dz9TZOiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_dz9TjeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dz9TZOiaEd6gMtZRCjS81g" target="_dz9TZuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">optionScopeColumnSet</attribute>
    </edge>
    <edge id="_dz9TjeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dz9TZuiaEd6gMtZRCjS81g" target="_dz9TZOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dz9Tk-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dz9TZuiaEd6gMtZRCjS81g" target="_dz9TauiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">triggers</attribute>
    </edge>
    <edge id="_dz9Tk-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dz9TauiaEd6gMtZRCjS81g" target="_dz9TZuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dz96dOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dz9TbOiaEd6gMtZRCjS81g" target="_dz9TbeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">sqlSimpleType</attribute>
    </edge>
    <edge id="_dz96dOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_dz9TbeiaEd6gMtZRCjS81g" target="_dz9TbOiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_dz-hgOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dz9TZuiaEd6gMtZRCjS81g" target="_dz9TZeiaEd6gMtZRCjS81g"/>
    <edge id="_dz-hgOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dz9TZeiaEd6gMtZRCjS81g" target="_dz9TZuiaEd6gMtZRCjS81g"/>
    <edge id="_dz-hgeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dz9TZ-iaEd6gMtZRCjS81g" target="_dz9TZeiaEd6gMtZRCjS81g"/>
    <edge id="_dz-hgeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dz9TZeiaEd6gMtZRCjS81g" target="_dz9TZ-iaEd6gMtZRCjS81g"/>
    <edge id="_dz-hguiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dz9TaOiaEd6gMtZRCjS81g" target="_dz9TZuiaEd6gMtZRCjS81g"/>
    <edge id="_dz-hguiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dz9TZuiaEd6gMtZRCjS81g" target="_dz9TaOiaEd6gMtZRCjS81g"/>
    <edge id="_dz-hg-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dz9TaeiaEd6gMtZRCjS81g" target="_dz9TZuiaEd6gMtZRCjS81g"/>
    <edge id="_dz-hg-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dz9TZuiaEd6gMtZRCjS81g" target="_dz9TaeiaEd6gMtZRCjS81g"/>
    <edge id="_dz-hhOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dz9TbOiaEd6gMtZRCjS81g" target="_dz9Ta-iaEd6gMtZRCjS81g"/>
    <edge id="_dz-hhOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dz9Ta-iaEd6gMtZRCjS81g" target="_dz9TbOiaEd6gMtZRCjS81g"/>
    <edge id="_dz-hheiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dz9TbeiaEd6gMtZRCjS81g" target="_dz9Ta-iaEd6gMtZRCjS81g"/>
    <edge id="_dz-hheiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dz9Ta-iaEd6gMtZRCjS81g" target="_dz9TbeiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
