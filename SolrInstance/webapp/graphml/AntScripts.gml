<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_da1BsOiaEd6gMtZRCjS81g" projectName="AntScripts">
    <node className="NamedElement" id="_da1Bs-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="DescribableElement" id="_da1BtOiaEd6gMtZRCjS81g">
      <attribute>description</attribute>
    </node>
    <node className="CommentableElement" id="_da1BteiaEd6gMtZRCjS81g">
      <attribute>comment</attribute>
    </node>
    <node className="Project" id="_da1BtuiaEd6gMtZRCjS81g"/>
    <node className="Property" id="_da1Bt-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>value</attribute>
      <attribute>location</attribute>
      <attribute>refid</attribute>
      <attribute>resource</attribute>
      <attribute>file</attribute>
      <attribute>url</attribute>
      <attribute>environment</attribute>
      <attribute>classpath</attribute>
      <attribute>classpathref</attribute>
      <attribute>prefix</attribute>
    </node>
    <node className="Target" id="_da1BuOiaEd6gMtZRCjS81g">
      <attribute>if</attribute>
      <attribute>unless</attribute>
    </node>
    <node className="TaskElement" id="_da1BueiaEd6gMtZRCjS81g"/>
    <node className="Attribute" id="_da1BuuiaEd6gMtZRCjS81g">
      <attribute>value</attribute>
    </node>
    <node className="Task" id="_da1Bu-iaEd6gMtZRCjS81g"/>
    <node className="TaskParameter" id="_da1BvOiaEd6gMtZRCjS81g"/>
    <edge id="_da1BzuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_da1BtuiaEd6gMtZRCjS81g" target="_da1Bt-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">properties</attribute>
    </edge>
    <edge id="_da1BzuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_da1Bt-iaEd6gMtZRCjS81g" target="_da1BtuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_da1B0eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_da1BtuiaEd6gMtZRCjS81g" target="_da1BuOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">targets</attribute>
    </edge>
    <edge id="_da1B0eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_da1BuOiaEd6gMtZRCjS81g" target="_da1BtuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_da1B1-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_da1BuOiaEd6gMtZRCjS81g" target="_da1Bu-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">tasks</attribute>
    </edge>
    <edge id="_da1B1-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_da1Bu-iaEd6gMtZRCjS81g" target="_da1BuOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_da1ow-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_da1BueiaEd6gMtZRCjS81g" target="_da1BuuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">attributes</attribute>
    </edge>
    <edge id="_da1ow-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_da1BuuiaEd6gMtZRCjS81g" target="_da1BueiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_da1oxuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_da1BueiaEd6gMtZRCjS81g" target="_da1BueiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">elements</attribute>
    </edge>
    <edge id="_da1oxuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_da1BueiaEd6gMtZRCjS81g" target="_da1BueiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_da1B1OiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_da1BtuiaEd6gMtZRCjS81g" target="_da1BuOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">defaultTarget</attribute>
    </edge>
    <edge id="_da1B1OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_da1BuOiaEd6gMtZRCjS81g" target="_da1BtuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_da1owOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_da1BuOiaEd6gMtZRCjS81g" target="_da1BuOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">depends</attribute>
    </edge>
    <edge id="_da1owOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_da1BuOiaEd6gMtZRCjS81g" target="_da1BuOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_da1oyuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_da1BtuiaEd6gMtZRCjS81g" target="_da1Bs-iaEd6gMtZRCjS81g"/>
    <edge id="_da1oyuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_da1Bs-iaEd6gMtZRCjS81g" target="_da1BtuiaEd6gMtZRCjS81g"/>
    <edge id="_da1oy-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_da1BtuiaEd6gMtZRCjS81g" target="_da1BtOiaEd6gMtZRCjS81g"/>
    <edge id="_da1oy-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_da1BtOiaEd6gMtZRCjS81g" target="_da1BtuiaEd6gMtZRCjS81g"/>
    <edge id="_da1ozOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_da1BtuiaEd6gMtZRCjS81g" target="_da1BteiaEd6gMtZRCjS81g"/>
    <edge id="_da1ozOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_da1BteiaEd6gMtZRCjS81g" target="_da1BtuiaEd6gMtZRCjS81g"/>
    <edge id="_da2P0OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_da1BuOiaEd6gMtZRCjS81g" target="_da1Bs-iaEd6gMtZRCjS81g"/>
    <edge id="_da2P0OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_da1Bs-iaEd6gMtZRCjS81g" target="_da1BuOiaEd6gMtZRCjS81g"/>
    <edge id="_da2P0eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_da1BuOiaEd6gMtZRCjS81g" target="_da1BtOiaEd6gMtZRCjS81g"/>
    <edge id="_da2P0eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_da1BtOiaEd6gMtZRCjS81g" target="_da1BuOiaEd6gMtZRCjS81g"/>
    <edge id="_da2P0uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_da1BuOiaEd6gMtZRCjS81g" target="_da1BteiaEd6gMtZRCjS81g"/>
    <edge id="_da2P0uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_da1BteiaEd6gMtZRCjS81g" target="_da1BuOiaEd6gMtZRCjS81g"/>
    <edge id="_da2P0-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_da1BueiaEd6gMtZRCjS81g" target="_da1Bs-iaEd6gMtZRCjS81g"/>
    <edge id="_da2P0-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_da1Bs-iaEd6gMtZRCjS81g" target="_da1BueiaEd6gMtZRCjS81g"/>
    <edge id="_da2P1OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_da1BueiaEd6gMtZRCjS81g" target="_da1BteiaEd6gMtZRCjS81g"/>
    <edge id="_da2P1OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_da1BteiaEd6gMtZRCjS81g" target="_da1BueiaEd6gMtZRCjS81g"/>
    <edge id="_da2P1eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_da1BuuiaEd6gMtZRCjS81g" target="_da1Bs-iaEd6gMtZRCjS81g"/>
    <edge id="_da2P1eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_da1Bs-iaEd6gMtZRCjS81g" target="_da1BuuiaEd6gMtZRCjS81g"/>
    <edge id="_da2P1uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_da1Bu-iaEd6gMtZRCjS81g" target="_da1BueiaEd6gMtZRCjS81g"/>
    <edge id="_da2P1uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_da1BueiaEd6gMtZRCjS81g" target="_da1Bu-iaEd6gMtZRCjS81g"/>
    <edge id="_da2P1-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_da1BvOiaEd6gMtZRCjS81g" target="_da1BueiaEd6gMtZRCjS81g"/>
    <edge id="_da2P1-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_da1BueiaEd6gMtZRCjS81g" target="_da1BvOiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
