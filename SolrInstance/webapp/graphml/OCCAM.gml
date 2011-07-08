<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_fVc7UOiaEd6gMtZRCjS81g" projectName="OCCAM">
    <node className="OCCAM_Program" id="_fVc7U-iaEd6gMtZRCjS81g"/>
    <node className="OCCAM_Element" id="_fVc7VOiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Process" id="_fVc7VeiaEd6gMtZRCjS81g"/>
    <node className="Channel" id="_fVc7VuiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>type</attribute>
    </node>
    <node className="Action" id="_fVc7V-iaEd6gMtZRCjS81g"/>
    <node className="Assignment" id="_fVc7WOiaEd6gMtZRCjS81g"/>
    <node className="Input" id="_fVc7WeiaEd6gMtZRCjS81g"/>
    <node className="Output" id="_fVc7WuiaEd6gMtZRCjS81g"/>
    <node className="Constructor" id="_fVc7W-iaEd6gMtZRCjS81g"/>
    <node className="Buckel" id="_fVc7XOiaEd6gMtZRCjS81g"/>
    <node className="If" id="_fVdiYOiaEd6gMtZRCjS81g"/>
    <node className="While" id="_fVdiYeiaEd6gMtZRCjS81g"/>
    <node className="Condition" id="_fVdiYuiaEd6gMtZRCjS81g">
      <attribute>elementRight</attribute>
      <attribute>elementLeft</attribute>
      <attribute>typeCondition</attribute>
    </node>
    <node className="Sequential" id="_fVdiY-iaEd6gMtZRCjS81g"/>
    <node className="Parallel" id="_fVdiZOiaEd6gMtZRCjS81g"/>
    <node className="Alternative" id="_fVdiZeiaEd6gMtZRCjS81g"/>
    <node className="DataType" id="_fVdiZuiaEd6gMtZRCjS81g">
      <attribute>dataType</attribute>
    </node>
    <node className="Library" id="_fVdiZ-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="File" id="_fVdiaOiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Server" id="_fVdiaeiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Declaration" id="_fVdiauiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <edge id="_fVdiduiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fVc7U-iaEd6gMtZRCjS81g" target="_fVc7VOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">occam_Elements</attribute>
    </edge>
    <edge id="_fVdiduiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fVc7VOiaEd6gMtZRCjS81g" target="_fVc7U-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fVdieeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fVc7U-iaEd6gMtZRCjS81g" target="_fVdiaOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">files</attribute>
    </edge>
    <edge id="_fVdieeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fVdiaOiaEd6gMtZRCjS81g" target="_fVc7U-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fVdifOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fVc7VeiaEd6gMtZRCjS81g" target="_fVdiauiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">declaration</attribute>
    </edge>
    <edge id="_fVdifOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fVdiauiaEd6gMtZRCjS81g" target="_fVc7VeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fVdif-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fVc7VeiaEd6gMtZRCjS81g" target="_fVc7W-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">constructors</attribute>
    </edge>
    <edge id="_fVdif-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fVc7W-iaEd6gMtZRCjS81g" target="_fVc7VeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fVdikeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fVc7W-iaEd6gMtZRCjS81g" target="_fVc7V-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">actions</attribute>
    </edge>
    <edge id="_fVdikeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fVc7V-iaEd6gMtZRCjS81g" target="_fVc7W-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fVdilOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fVc7W-iaEd6gMtZRCjS81g" target="_fVc7XOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">buckels</attribute>
    </edge>
    <edge id="_fVdilOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fVc7XOiaEd6gMtZRCjS81g" target="_fVc7W-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fVdil-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fVc7W-iaEd6gMtZRCjS81g" target="_fVc7W-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">childrens</attribute>
    </edge>
    <edge id="_fVdil-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fVc7W-iaEd6gMtZRCjS81g" target="_fVc7W-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fVeJceiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fVdiYOiaEd6gMtZRCjS81g" target="_fVdiYuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">conditions</attribute>
    </edge>
    <edge id="_fVeJceiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fVdiYuiaEd6gMtZRCjS81g" target="_fVdiYOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fVeJdOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fVdiYOiaEd6gMtZRCjS81g" target="_fVc7V-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">actions</attribute>
    </edge>
    <edge id="_fVeJdOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fVc7V-iaEd6gMtZRCjS81g" target="_fVdiYOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fVeJd-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fVdiYeiaEd6gMtZRCjS81g" target="_fVdiYuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">conditions</attribute>
    </edge>
    <edge id="_fVeJd-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fVdiYuiaEd6gMtZRCjS81g" target="_fVdiYeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fVeJeuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fVdiYeiaEd6gMtZRCjS81g" target="_fVc7V-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">actions</attribute>
    </edge>
    <edge id="_fVeJeuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fVc7V-iaEd6gMtZRCjS81g" target="_fVdiYeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fVeJgOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fVdiauiaEd6gMtZRCjS81g" target="_fVdiZuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">elements</attribute>
    </edge>
    <edge id="_fVeJgOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fVdiZuiaEd6gMtZRCjS81g" target="_fVdiauiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fVdiguiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fVc7VeiaEd6gMtZRCjS81g" target="_fVdiZuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">parameters</attribute>
    </edge>
    <edge id="_fVdiguiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fVdiZuiaEd6gMtZRCjS81g" target="_fVc7VeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fVdiheiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fVc7VeiaEd6gMtZRCjS81g" target="_fVdiZ-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">libraries</attribute>
    </edge>
    <edge id="_fVdiheiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fVdiZ-iaEd6gMtZRCjS81g" target="_fVc7VeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fVdiiOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fVc7VeiaEd6gMtZRCjS81g" target="_fVc7VuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">toChannel</attribute>
    </edge>
    <edge id="_fVdiiOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fVc7VuiaEd6gMtZRCjS81g" target="_fVc7VeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fVdii-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fVc7VuiaEd6gMtZRCjS81g" target="_fVdiaeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">toServer</attribute>
    </edge>
    <edge id="_fVdii-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fVdiaeiaEd6gMtZRCjS81g" target="_fVc7VuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fVdijuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fVc7VuiaEd6gMtZRCjS81g" target="_fVc7VeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">toProcess</attribute>
    </edge>
    <edge id="_fVdijuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fVc7VeiaEd6gMtZRCjS81g" target="_fVc7VuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fVeJfeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fVdiaeiaEd6gMtZRCjS81g" target="_fVc7VuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">toChannel</attribute>
    </edge>
    <edge id="_fVeJfeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fVc7VuiaEd6gMtZRCjS81g" target="_fVdiaeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fVewgOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fVc7VeiaEd6gMtZRCjS81g" target="_fVc7VOiaEd6gMtZRCjS81g"/>
    <edge id="_fVewgOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fVc7VOiaEd6gMtZRCjS81g" target="_fVc7VeiaEd6gMtZRCjS81g"/>
    <edge id="_fVewgeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fVc7V-iaEd6gMtZRCjS81g" target="_fVc7VOiaEd6gMtZRCjS81g"/>
    <edge id="_fVewgeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fVc7VOiaEd6gMtZRCjS81g" target="_fVc7V-iaEd6gMtZRCjS81g"/>
    <edge id="_fVewguiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fVc7WOiaEd6gMtZRCjS81g" target="_fVc7V-iaEd6gMtZRCjS81g"/>
    <edge id="_fVewguiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fVc7V-iaEd6gMtZRCjS81g" target="_fVc7WOiaEd6gMtZRCjS81g"/>
    <edge id="_fVewg-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fVc7WeiaEd6gMtZRCjS81g" target="_fVc7V-iaEd6gMtZRCjS81g"/>
    <edge id="_fVewg-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fVc7V-iaEd6gMtZRCjS81g" target="_fVc7WeiaEd6gMtZRCjS81g"/>
    <edge id="_fVewhOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fVc7WuiaEd6gMtZRCjS81g" target="_fVc7V-iaEd6gMtZRCjS81g"/>
    <edge id="_fVewhOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fVc7V-iaEd6gMtZRCjS81g" target="_fVc7WuiaEd6gMtZRCjS81g"/>
    <edge id="_fVewheiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fVc7W-iaEd6gMtZRCjS81g" target="_fVc7VOiaEd6gMtZRCjS81g"/>
    <edge id="_fVewheiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fVc7VOiaEd6gMtZRCjS81g" target="_fVc7W-iaEd6gMtZRCjS81g"/>
    <edge id="_fVewhuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fVdiYOiaEd6gMtZRCjS81g" target="_fVc7XOiaEd6gMtZRCjS81g"/>
    <edge id="_fVewhuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fVc7XOiaEd6gMtZRCjS81g" target="_fVdiYOiaEd6gMtZRCjS81g"/>
    <edge id="_fVewh-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fVdiYeiaEd6gMtZRCjS81g" target="_fVc7XOiaEd6gMtZRCjS81g"/>
    <edge id="_fVewh-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fVc7XOiaEd6gMtZRCjS81g" target="_fVdiYeiaEd6gMtZRCjS81g"/>
    <edge id="_fVewiOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fVdiY-iaEd6gMtZRCjS81g" target="_fVc7W-iaEd6gMtZRCjS81g"/>
    <edge id="_fVewiOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fVc7W-iaEd6gMtZRCjS81g" target="_fVdiY-iaEd6gMtZRCjS81g"/>
    <edge id="_fVewieiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fVdiZOiaEd6gMtZRCjS81g" target="_fVc7W-iaEd6gMtZRCjS81g"/>
    <edge id="_fVewieiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fVc7W-iaEd6gMtZRCjS81g" target="_fVdiZOiaEd6gMtZRCjS81g"/>
    <edge id="_fVfXkOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fVdiZeiaEd6gMtZRCjS81g" target="_fVc7W-iaEd6gMtZRCjS81g"/>
    <edge id="_fVfXkOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fVc7W-iaEd6gMtZRCjS81g" target="_fVdiZeiaEd6gMtZRCjS81g"/>
    <edge id="_fVfXkeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fVdiZuiaEd6gMtZRCjS81g" target="_fVc7VOiaEd6gMtZRCjS81g"/>
    <edge id="_fVfXkeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fVc7VOiaEd6gMtZRCjS81g" target="_fVdiZuiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
