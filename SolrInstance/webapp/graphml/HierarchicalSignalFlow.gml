<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_eXHq0OiaEd6gMtZRCjS81g" projectName="HierarchicalSignalFlow">
    <node className="Port" id="_eXHq0-iaEd6gMtZRCjS81g"/>
    <node className="Signal" id="_eXHq1OiaEd6gMtZRCjS81g"/>
    <node className="Base" id="_eXHq1eiaEd6gMtZRCjS81g"/>
    <node className="Compound" id="_eXHq1uiaEd6gMtZRCjS81g"/>
    <node className="InputPort" id="_eXHq1-iaEd6gMtZRCjS81g"/>
    <node className="OutputPort" id="_eXHq2OiaEd6gMtZRCjS81g"/>
    <node className="LocalPort" id="_eXHq2eiaEd6gMtZRCjS81g"/>
    <node className="Primitive" id="_eXHq2uiaEd6gMtZRCjS81g"/>
    <node className="Asso_Port_Signal" id="_eXHq2-iaEd6gMtZRCjS81g"/>
    <edge id="_eXIR6eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eXHq1eiaEd6gMtZRCjS81g" target="_eXHq1-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">inputPort</attribute>
    </edge>
    <edge id="_eXIR6eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eXHq1-iaEd6gMtZRCjS81g" target="_eXHq1eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eXIR7OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eXHq1eiaEd6gMtZRCjS81g" target="_eXHq2OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">outputPort</attribute>
    </edge>
    <edge id="_eXIR7OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eXHq2OiaEd6gMtZRCjS81g" target="_eXHq1eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eXIR7-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eXHq1eiaEd6gMtZRCjS81g" target="_eXHq1OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">signal</attribute>
    </edge>
    <edge id="_eXIR7-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eXHq1OiaEd6gMtZRCjS81g" target="_eXHq1eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eXIR8uiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eXHq1uiaEd6gMtZRCjS81g" target="_eXHq2eiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">localPort</attribute>
    </edge>
    <edge id="_eXIR8uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eXHq2eiaEd6gMtZRCjS81g" target="_eXHq1uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eXIR9eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eXHq1uiaEd6gMtZRCjS81g" target="_eXHq1eiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">base</attribute>
    </edge>
    <edge id="_eXIR9eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eXHq1eiaEd6gMtZRCjS81g" target="_eXHq1uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eXIR4OiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eXHq0-iaEd6gMtZRCjS81g" target="_eXHq2-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">asso_Port_Signalsrc</attribute>
    </edge>
    <edge id="_eXIR4OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eXHq2-iaEd6gMtZRCjS81g" target="_eXHq0-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_eXIR4-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eXHq0-iaEd6gMtZRCjS81g" target="_eXHq2-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">asso_Port_Signaldst</attribute>
    </edge>
    <edge id="_eXIR4-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eXHq2-iaEd6gMtZRCjS81g" target="_eXHq0-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_eXIR5uiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eXHq1OiaEd6gMtZRCjS81g" target="_eXHq2-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">asso_Port_Signal</attribute>
    </edge>
    <edge id="_eXIR5uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eXHq2-iaEd6gMtZRCjS81g" target="_eXHq1OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eXI48OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eXHq1uiaEd6gMtZRCjS81g" target="_eXHq1eiaEd6gMtZRCjS81g"/>
    <edge id="_eXI48OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eXHq1eiaEd6gMtZRCjS81g" target="_eXHq1uiaEd6gMtZRCjS81g"/>
    <edge id="_eXI48eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eXHq1-iaEd6gMtZRCjS81g" target="_eXHq0-iaEd6gMtZRCjS81g"/>
    <edge id="_eXI48eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eXHq0-iaEd6gMtZRCjS81g" target="_eXHq1-iaEd6gMtZRCjS81g"/>
    <edge id="_eXI48uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eXHq2OiaEd6gMtZRCjS81g" target="_eXHq0-iaEd6gMtZRCjS81g"/>
    <edge id="_eXI48uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eXHq0-iaEd6gMtZRCjS81g" target="_eXHq2OiaEd6gMtZRCjS81g"/>
    <edge id="_eXI48-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eXHq2eiaEd6gMtZRCjS81g" target="_eXHq0-iaEd6gMtZRCjS81g"/>
    <edge id="_eXI48-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eXHq0-iaEd6gMtZRCjS81g" target="_eXHq2eiaEd6gMtZRCjS81g"/>
    <edge id="_eXI49OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eXHq2uiaEd6gMtZRCjS81g" target="_eXHq1eiaEd6gMtZRCjS81g"/>
    <edge id="_eXI49OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eXHq1eiaEd6gMtZRCjS81g" target="_eXHq2uiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
