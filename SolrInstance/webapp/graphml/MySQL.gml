<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_fUUS4OiaEd6gMtZRCjS81g" projectName="MySQL">
    <node className="NamedElement" id="_fUUS4-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="DataBase" id="_fUUS5OiaEd6gMtZRCjS81g"/>
    <node className="Table" id="_fUUS5eiaEd6gMtZRCjS81g"/>
    <node className="Column" id="_fUUS5uiaEd6gMtZRCjS81g">
      <attribute>type</attribute>
      <attribute>isPrimaryKey</attribute>
      <attribute>null</attribute>
      <attribute>defaultValue</attribute>
      <attribute>comment</attribute>
    </node>
    <node className="IntegerColumn" id="_fUUS5-iaEd6gMtZRCjS81g">
      <attribute>isAutoIncrement</attribute>
    </node>
    <node className="EnumColumn" id="_fUUS6OiaEd6gMtZRCjS81g"/>
    <node className="EnumSet" id="_fUUS6eiaEd6gMtZRCjS81g"/>
    <node className="EnumItem" id="_fUUS6uiaEd6gMtZRCjS81g"/>
    <edge id="_fUUS8uiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fUUS5OiaEd6gMtZRCjS81g" target="_fUUS5eiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">tables</attribute>
    </edge>
    <edge id="_fUUS8uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fUUS5eiaEd6gMtZRCjS81g" target="_fUUS5OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fUU58OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fUUS5eiaEd6gMtZRCjS81g" target="_fUUS5uiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">columns</attribute>
    </edge>
    <edge id="_fUU58OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fUUS5uiaEd6gMtZRCjS81g" target="_fUUS5eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fUU58-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fUUS6OiaEd6gMtZRCjS81g" target="_fUUS6eiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">enumSet</attribute>
    </edge>
    <edge id="_fUU58-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fUUS6eiaEd6gMtZRCjS81g" target="_fUUS6OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fUU59uiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fUUS6eiaEd6gMtZRCjS81g" target="_fUUS6uiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">enumItems</attribute>
    </edge>
    <edge id="_fUU59uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fUUS6uiaEd6gMtZRCjS81g" target="_fUUS6eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fUU5_OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fUUS5OiaEd6gMtZRCjS81g" target="_fUUS4-iaEd6gMtZRCjS81g"/>
    <edge id="_fUU5_OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fUUS4-iaEd6gMtZRCjS81g" target="_fUUS5OiaEd6gMtZRCjS81g"/>
    <edge id="_fUU5_eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fUUS5eiaEd6gMtZRCjS81g" target="_fUUS4-iaEd6gMtZRCjS81g"/>
    <edge id="_fUU5_eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fUUS4-iaEd6gMtZRCjS81g" target="_fUUS5eiaEd6gMtZRCjS81g"/>
    <edge id="_fUU5_uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fUUS5uiaEd6gMtZRCjS81g" target="_fUUS4-iaEd6gMtZRCjS81g"/>
    <edge id="_fUU5_uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fUUS4-iaEd6gMtZRCjS81g" target="_fUUS5uiaEd6gMtZRCjS81g"/>
    <edge id="_fUVhAOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fUUS5-iaEd6gMtZRCjS81g" target="_fUUS5uiaEd6gMtZRCjS81g"/>
    <edge id="_fUVhAOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fUUS5uiaEd6gMtZRCjS81g" target="_fUUS5-iaEd6gMtZRCjS81g"/>
    <edge id="_fUVhAeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fUUS6OiaEd6gMtZRCjS81g" target="_fUUS5uiaEd6gMtZRCjS81g"/>
    <edge id="_fUVhAeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fUUS5uiaEd6gMtZRCjS81g" target="_fUUS6OiaEd6gMtZRCjS81g"/>
    <edge id="_fUVhAuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fUUS6uiaEd6gMtZRCjS81g" target="_fUUS4-iaEd6gMtZRCjS81g"/>
    <edge id="_fUVhAuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fUUS4-iaEd6gMtZRCjS81g" target="_fUUS6uiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
