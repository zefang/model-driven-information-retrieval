<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_fzlBwOiaEd6gMtZRCjS81g" projectName="PtolemyII">
    <node className="EDataType" id="_fzlBw-iaEd6gMtZRCjS81g">
      <attribute>value</attribute>
    </node>
    <node className="NamedObject" id="_fzlBxOiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Attribute" id="_fzlBxeiaEd6gMtZRCjS81g">
      <attribute>value</attribute>
    </node>
    <node className="Entity" id="_fzlBxuiaEd6gMtZRCjS81g"/>
    <node className="Port" id="_fzlBx-iaEd6gMtZRCjS81g"/>
    <node className="Relation" id="_fzlByOiaEd6gMtZRCjS81g"/>
    <node className="Director" id="_fzlByeiaEd6gMtZRCjS81g"/>
    <node className="Parameter" id="_fzlByuiaEd6gMtZRCjS81g"/>
    <node className="ComponentPort" id="_fzlBy-iaEd6gMtZRCjS81g"/>
    <node className="ComponentRelation" id="_fzlBzOiaEd6gMtZRCjS81g"/>
    <node className="ComponentEntity" id="_fzlBzeiaEd6gMtZRCjS81g"/>
    <node className="AtomicActor" id="_fzlBzuiaEd6gMtZRCjS81g"/>
    <node className="CompositeEntity" id="_fzlBz-iaEd6gMtZRCjS81g"/>
    <node className="WorkSpace" id="_fzlB0OiaEd6gMtZRCjS81g"/>
    <node className="CompositeActor" id="_fzlB0eiaEd6gMtZRCjS81g"/>
    <edge id="_fzlo0uiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fzlBxuiaEd6gMtZRCjS81g" target="_fzlBxeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">attributes</attribute>
    </edge>
    <edge id="_fzlo0uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fzlBxeiaEd6gMtZRCjS81g" target="_fzlBxuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fzlo1eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fzlBxuiaEd6gMtZRCjS81g" target="_fzlByuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">parameters</attribute>
    </edge>
    <edge id="_fzlo1eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fzlByuiaEd6gMtZRCjS81g" target="_fzlBxuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fzlo2OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fzlBxuiaEd6gMtZRCjS81g" target="_fzlBx-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">ports</attribute>
    </edge>
    <edge id="_fzlo2OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fzlBx-iaEd6gMtZRCjS81g" target="_fzlBxuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fzlo5OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fzlBz-iaEd6gMtZRCjS81g" target="_fzlBzeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">containees</attribute>
    </edge>
    <edge id="_fzlo5OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fzlBzeiaEd6gMtZRCjS81g" target="_fzlBz-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fzlo5-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fzlBz-iaEd6gMtZRCjS81g" target="_fzlBzOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">relations</attribute>
    </edge>
    <edge id="_fzlo5-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fzlBzOiaEd6gMtZRCjS81g" target="_fzlBz-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fzlo2-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fzlBx-iaEd6gMtZRCjS81g" target="_fzlByOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">links</attribute>
    </edge>
    <edge id="_fzlo2-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_fzlByOiaEd6gMtZRCjS81g" target="_fzlBx-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_fzlo3uiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fzlByeiaEd6gMtZRCjS81g" target="_fzlB0eiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">ca_container</attribute>
    </edge>
    <edge id="_fzlo3uiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_fzlB0eiaEd6gMtZRCjS81g" target="_fzlByeiaEd6gMtZRCjS81g" upperValue="2"/>
    <edge id="_fzlo4eiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fzlByuiaEd6gMtZRCjS81g" target="_fzlBw-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">dataType</attribute>
    </edge>
    <edge id="_fzlo4eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fzlBw-iaEd6gMtZRCjS81g" target="_fzlByuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fzmP4OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fzlBxeiaEd6gMtZRCjS81g" target="_fzlBxOiaEd6gMtZRCjS81g"/>
    <edge id="_fzmP4OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fzlBxOiaEd6gMtZRCjS81g" target="_fzlBxeiaEd6gMtZRCjS81g"/>
    <edge id="_fzmP4eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fzlBxuiaEd6gMtZRCjS81g" target="_fzlBxOiaEd6gMtZRCjS81g"/>
    <edge id="_fzmP4eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fzlBxOiaEd6gMtZRCjS81g" target="_fzlBxuiaEd6gMtZRCjS81g"/>
    <edge id="_fzmP4uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fzlBx-iaEd6gMtZRCjS81g" target="_fzlBxOiaEd6gMtZRCjS81g"/>
    <edge id="_fzmP4uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fzlBxOiaEd6gMtZRCjS81g" target="_fzlBx-iaEd6gMtZRCjS81g"/>
    <edge id="_fzmP4-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fzlByOiaEd6gMtZRCjS81g" target="_fzlBxOiaEd6gMtZRCjS81g"/>
    <edge id="_fzmP4-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fzlBxOiaEd6gMtZRCjS81g" target="_fzlByOiaEd6gMtZRCjS81g"/>
    <edge id="_fzmP5OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fzlByeiaEd6gMtZRCjS81g" target="_fzlBxOiaEd6gMtZRCjS81g"/>
    <edge id="_fzmP5OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fzlBxOiaEd6gMtZRCjS81g" target="_fzlByeiaEd6gMtZRCjS81g"/>
    <edge id="_fzmP5eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fzlByuiaEd6gMtZRCjS81g" target="_fzlBxeiaEd6gMtZRCjS81g"/>
    <edge id="_fzmP5eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fzlBxeiaEd6gMtZRCjS81g" target="_fzlByuiaEd6gMtZRCjS81g"/>
    <edge id="_fzmP5uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fzlBy-iaEd6gMtZRCjS81g" target="_fzlBx-iaEd6gMtZRCjS81g"/>
    <edge id="_fzmP5uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fzlBx-iaEd6gMtZRCjS81g" target="_fzlBy-iaEd6gMtZRCjS81g"/>
    <edge id="_fzmP5-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fzlBzOiaEd6gMtZRCjS81g" target="_fzlByOiaEd6gMtZRCjS81g"/>
    <edge id="_fzmP5-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fzlByOiaEd6gMtZRCjS81g" target="_fzlBzOiaEd6gMtZRCjS81g"/>
    <edge id="_fzmP6OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fzlBzeiaEd6gMtZRCjS81g" target="_fzlBxeiaEd6gMtZRCjS81g"/>
    <edge id="_fzmP6OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fzlBxeiaEd6gMtZRCjS81g" target="_fzlBzeiaEd6gMtZRCjS81g"/>
    <edge id="_fzmP6eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fzlBzuiaEd6gMtZRCjS81g" target="_fzlBzeiaEd6gMtZRCjS81g"/>
    <edge id="_fzmP6eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fzlBzeiaEd6gMtZRCjS81g" target="_fzlBzuiaEd6gMtZRCjS81g"/>
    <edge id="_fzmP6uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fzlBz-iaEd6gMtZRCjS81g" target="_fzlBzeiaEd6gMtZRCjS81g"/>
    <edge id="_fzmP6uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fzlBzeiaEd6gMtZRCjS81g" target="_fzlBz-iaEd6gMtZRCjS81g"/>
    <edge id="_fzm28OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fzlB0OiaEd6gMtZRCjS81g" target="_fzlBz-iaEd6gMtZRCjS81g"/>
    <edge id="_fzm28OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fzlBz-iaEd6gMtZRCjS81g" target="_fzlB0OiaEd6gMtZRCjS81g"/>
    <edge id="_fzm28eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fzlB0eiaEd6gMtZRCjS81g" target="_fzlBz-iaEd6gMtZRCjS81g"/>
    <edge id="_fzm28eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fzlBz-iaEd6gMtZRCjS81g" target="_fzlB0eiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
