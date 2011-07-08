<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_eELgsOiaEd6gMtZRCjS81g" projectName="DocBook">
    <node className="DocBook" id="_eELgs-iaEd6gMtZRCjS81g"/>
    <node className="Book" id="_eELgtOiaEd6gMtZRCjS81g"/>
    <node className="TitledElement" id="_eELgteiaEd6gMtZRCjS81g">
      <attribute>title</attribute>
    </node>
    <node className="Article" id="_eELgtuiaEd6gMtZRCjS81g"/>
    <node className="Sect1" id="_eELgt-iaEd6gMtZRCjS81g"/>
    <node className="Para" id="_eELguOiaEd6gMtZRCjS81g">
      <attribute>content</attribute>
    </node>
    <edge id="_eELgu-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eELgs-iaEd6gMtZRCjS81g" target="_eELgtOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">books</attribute>
    </edge>
    <edge id="_eELgu-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eELgtOiaEd6gMtZRCjS81g" target="_eELgs-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eELgvuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eELgtOiaEd6gMtZRCjS81g" target="_eELgtuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">articles</attribute>
    </edge>
    <edge id="_eELgvuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eELgtuiaEd6gMtZRCjS81g" target="_eELgtOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eELgweiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eELgtuiaEd6gMtZRCjS81g" target="_eELgt-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">sections_1</attribute>
    </edge>
    <edge id="_eELgweiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eELgt-iaEd6gMtZRCjS81g" target="_eELgtuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eELgxOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eELgt-iaEd6gMtZRCjS81g" target="_eELguOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">paras</attribute>
    </edge>
    <edge id="_eELgxOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eELguOiaEd6gMtZRCjS81g" target="_eELgt-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eEMHwOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eELgtuiaEd6gMtZRCjS81g" target="_eELgteiaEd6gMtZRCjS81g"/>
    <edge id="_eEMHwOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eELgteiaEd6gMtZRCjS81g" target="_eELgtuiaEd6gMtZRCjS81g"/>
    <edge id="_eEMHweiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eELgt-iaEd6gMtZRCjS81g" target="_eELgteiaEd6gMtZRCjS81g"/>
    <edge id="_eEMHweiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eELgteiaEd6gMtZRCjS81g" target="_eELgt-iaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
