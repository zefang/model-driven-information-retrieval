<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_eyk3wOiaEd6gMtZRCjS81g" projectName="SpreadsheetMLSimplified">
    <node className="DateTimeType" id="_eyk3w-iaEd6gMtZRCjS81g">
      <attribute>year</attribute>
      <attribute>month</attribute>
      <attribute>day</attribute>
      <attribute>hour</attribute>
      <attribute>minute</attribute>
      <attribute>second</attribute>
    </node>
    <node className="ValueType" id="_eyk3xOiaEd6gMtZRCjS81g"/>
    <node className="StringValue" id="_eyk3xeiaEd6gMtZRCjS81g">
      <attribute>value</attribute>
    </node>
    <node className="NumberValue" id="_eyk3xuiaEd6gMtZRCjS81g">
      <attribute>value</attribute>
    </node>
    <node className="DateTimeTypeValue" id="_eyk3x-iaEd6gMtZRCjS81g"/>
    <node className="BooleanValue" id="_eyk3yOiaEd6gMtZRCjS81g">
      <attribute>value</attribute>
    </node>
    <node className="ErrorValue" id="_eyk3yeiaEd6gMtZRCjS81g"/>
    <node className="Workbook" id="_eyk3yuiaEd6gMtZRCjS81g"/>
    <node className="Worksheet" id="_eyk3y-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Table" id="_eyk3zOiaEd6gMtZRCjS81g"/>
    <node className="TableElement" id="_eyk3zeiaEd6gMtZRCjS81g">
      <attribute>index</attribute>
    </node>
    <node className="ColOrRowElement" id="_eyk3zuiaEd6gMtZRCjS81g">
      <attribute>hidden</attribute>
      <attribute>span</attribute>
    </node>
    <node className="Column" id="_eyk3z-iaEd6gMtZRCjS81g">
      <attribute>autoFitWidth</attribute>
      <attribute>width</attribute>
    </node>
    <node className="Row" id="_eyk30OiaEd6gMtZRCjS81g">
      <attribute>autoFitHeight</attribute>
      <attribute>height</attribute>
    </node>
    <node className="Cell" id="_eyk30eiaEd6gMtZRCjS81g">
      <attribute>arrayRange</attribute>
      <attribute>formula</attribute>
      <attribute>hRef</attribute>
      <attribute>mergeAcross</attribute>
      <attribute>mergeDown</attribute>
    </node>
    <node className="Data" id="_eyk30uiaEd6gMtZRCjS81g"/>
    <edge id="_eyle2OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eyk3x-iaEd6gMtZRCjS81g" target="_eyk3w-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">value</attribute>
    </edge>
    <edge id="_eyle2OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eyk3w-iaEd6gMtZRCjS81g" target="_eyk3x-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eyle2-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eyk3yuiaEd6gMtZRCjS81g" target="_eyk3y-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">wb_worksheets</attribute>
    </edge>
    <edge id="_eyle2-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eyk3y-iaEd6gMtZRCjS81g" target="_eyk3yuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eyle3uiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eyk3y-iaEd6gMtZRCjS81g" target="_eyk3zOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">ws_table</attribute>
    </edge>
    <edge id="_eyle3uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eyk3zOiaEd6gMtZRCjS81g" target="_eyk3y-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eyle4eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eyk3zOiaEd6gMtZRCjS81g" target="_eyk3z-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">t_cols</attribute>
    </edge>
    <edge id="_eyle4eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eyk3z-iaEd6gMtZRCjS81g" target="_eyk3zOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eyle5OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eyk3zOiaEd6gMtZRCjS81g" target="_eyk30OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">t_rows</attribute>
    </edge>
    <edge id="_eyle5OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eyk30OiaEd6gMtZRCjS81g" target="_eyk3zOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eyle5-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eyk30OiaEd6gMtZRCjS81g" target="_eyk30eiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">r_cells</attribute>
    </edge>
    <edge id="_eyle5-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eyk30eiaEd6gMtZRCjS81g" target="_eyk30OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eyle6uiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eyk30eiaEd6gMtZRCjS81g" target="_eyk30uiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">c_data</attribute>
    </edge>
    <edge id="_eyle6uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eyk30uiaEd6gMtZRCjS81g" target="_eyk30eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eyle7eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eyk30uiaEd6gMtZRCjS81g" target="_eyk3xOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">value</attribute>
    </edge>
    <edge id="_eyle7eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eyk3xOiaEd6gMtZRCjS81g" target="_eyk30uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eymF4OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eyk3xeiaEd6gMtZRCjS81g" target="_eyk3xOiaEd6gMtZRCjS81g"/>
    <edge id="_eymF4OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eyk3xOiaEd6gMtZRCjS81g" target="_eyk3xeiaEd6gMtZRCjS81g"/>
    <edge id="_eymF4eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eyk3xuiaEd6gMtZRCjS81g" target="_eyk3xOiaEd6gMtZRCjS81g"/>
    <edge id="_eymF4eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eyk3xOiaEd6gMtZRCjS81g" target="_eyk3xuiaEd6gMtZRCjS81g"/>
    <edge id="_eymF4uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eyk3x-iaEd6gMtZRCjS81g" target="_eyk3xOiaEd6gMtZRCjS81g"/>
    <edge id="_eymF4uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eyk3xOiaEd6gMtZRCjS81g" target="_eyk3x-iaEd6gMtZRCjS81g"/>
    <edge id="_eymF4-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eyk3yOiaEd6gMtZRCjS81g" target="_eyk3xOiaEd6gMtZRCjS81g"/>
    <edge id="_eymF4-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eyk3xOiaEd6gMtZRCjS81g" target="_eyk3yOiaEd6gMtZRCjS81g"/>
    <edge id="_eymF5OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eyk3yeiaEd6gMtZRCjS81g" target="_eyk3xOiaEd6gMtZRCjS81g"/>
    <edge id="_eymF5OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eyk3xOiaEd6gMtZRCjS81g" target="_eyk3yeiaEd6gMtZRCjS81g"/>
    <edge id="_eyms8OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eyk3zuiaEd6gMtZRCjS81g" target="_eyk3zeiaEd6gMtZRCjS81g"/>
    <edge id="_eyms8OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eyk3zeiaEd6gMtZRCjS81g" target="_eyk3zuiaEd6gMtZRCjS81g"/>
    <edge id="_eyms8eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eyk3z-iaEd6gMtZRCjS81g" target="_eyk3zuiaEd6gMtZRCjS81g"/>
    <edge id="_eyms8eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eyk3zuiaEd6gMtZRCjS81g" target="_eyk3z-iaEd6gMtZRCjS81g"/>
    <edge id="_eyms8uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eyk30OiaEd6gMtZRCjS81g" target="_eyk3zuiaEd6gMtZRCjS81g"/>
    <edge id="_eyms8uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eyk3zuiaEd6gMtZRCjS81g" target="_eyk30OiaEd6gMtZRCjS81g"/>
    <edge id="_eyms8-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eyk30eiaEd6gMtZRCjS81g" target="_eyk3zeiaEd6gMtZRCjS81g"/>
    <edge id="_eyms8-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eyk3zeiaEd6gMtZRCjS81g" target="_eyk30eiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
