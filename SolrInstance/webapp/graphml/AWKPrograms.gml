<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_dWD2cOiaEd6gMtZRCjS81g" projectName="AWKPrograms">
    <node className="AWKProgram" id="_dWD2c-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="File" id="_dWD2dOiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Record" id="_dWD2deiaEd6gMtZRCjS81g"/>
    <node className="Field" id="_dWD2duiaEd6gMtZRCjS81g">
      <attribute>value</attribute>
    </node>
    <node className="Script" id="_dWD2d-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Rule" id="_dWD2eOiaEd6gMtZRCjS81g"/>
    <node className="Pattern" id="_dWD2eeiaEd6gMtZRCjS81g">
      <attribute>regularExpression</attribute>
    </node>
    <node className="Action" id="_dWD2euiaEd6gMtZRCjS81g"/>
    <node className="Instruction" id="_dWD2e-iaEd6gMtZRCjS81g">
      <attribute>value</attribute>
    </node>
    <node className="InitialRule" id="_dWD2fOiaEd6gMtZRCjS81g"/>
    <node className="FinalRule" id="_dWD2feiaEd6gMtZRCjS81g"/>
    <edge id="_dWEdieiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dWD2dOiaEd6gMtZRCjS81g" target="_dWD2deiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">records</attribute>
    </edge>
    <edge id="_dWEdieiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dWD2deiaEd6gMtZRCjS81g" target="_dWD2dOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dWEdjOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dWD2deiaEd6gMtZRCjS81g" target="_dWD2duiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">fields</attribute>
    </edge>
    <edge id="_dWEdjOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dWD2duiaEd6gMtZRCjS81g" target="_dWD2deiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dWEdj-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dWD2d-iaEd6gMtZRCjS81g" target="_dWD2eOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">rules</attribute>
    </edge>
    <edge id="_dWEdj-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dWD2eOiaEd6gMtZRCjS81g" target="_dWD2d-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dWEdmOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dWD2euiaEd6gMtZRCjS81g" target="_dWD2e-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">instructions</attribute>
    </edge>
    <edge id="_dWEdmOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dWD2e-iaEd6gMtZRCjS81g" target="_dWD2euiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dWEdgOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dWD2c-iaEd6gMtZRCjS81g" target="_dWD2dOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">input</attribute>
    </edge>
    <edge id="_dWEdgOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dWD2dOiaEd6gMtZRCjS81g" target="_dWD2c-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dWEdg-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dWD2c-iaEd6gMtZRCjS81g" target="_dWD2dOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">output</attribute>
    </edge>
    <edge id="_dWEdg-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dWD2dOiaEd6gMtZRCjS81g" target="_dWD2c-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dWEdhuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dWD2c-iaEd6gMtZRCjS81g" target="_dWD2d-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">script</attribute>
    </edge>
    <edge id="_dWEdhuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dWD2d-iaEd6gMtZRCjS81g" target="_dWD2c-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dWEdkuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dWD2eOiaEd6gMtZRCjS81g" target="_dWD2eeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">pattern</attribute>
    </edge>
    <edge id="_dWEdkuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dWD2eeiaEd6gMtZRCjS81g" target="_dWD2eOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dWEdleiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dWD2eOiaEd6gMtZRCjS81g" target="_dWD2euiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">action</attribute>
    </edge>
    <edge id="_dWEdleiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dWD2euiaEd6gMtZRCjS81g" target="_dWD2eOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dWFEkOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dWD2fOiaEd6gMtZRCjS81g" target="_dWD2eOiaEd6gMtZRCjS81g"/>
    <edge id="_dWFEkOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dWD2eOiaEd6gMtZRCjS81g" target="_dWD2fOiaEd6gMtZRCjS81g"/>
    <edge id="_dWFroOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dWD2feiaEd6gMtZRCjS81g" target="_dWD2eOiaEd6gMtZRCjS81g"/>
    <edge id="_dWFroOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dWD2eOiaEd6gMtZRCjS81g" target="_dWD2feiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
