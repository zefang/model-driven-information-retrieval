<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_fDYT4OiaEd6gMtZRCjS81g" projectName="Mantis">
    <node className="MantisRoot" id="_fDYT4-iaEd6gMtZRCjS81g"/>
    <node className="IdentifiedElt" id="_fDYT5OiaEd6gMtZRCjS81g">
      <attribute>id</attribute>
    </node>
    <node className="PrivateElt" id="_fDYT5eiaEd6gMtZRCjS81g">
      <attribute>private</attribute>
    </node>
    <node className="Issue" id="_fDYT5uiaEd6gMtZRCjS81g">
      <attribute>category</attribute>
      <attribute>summary</attribute>
      <attribute>description</attribute>
      <attribute>version</attribute>
      <attribute>build</attribute>
      <attribute>platform</attribute>
      <attribute>os</attribute>
      <attribute>osVersion</attribute>
      <attribute>stepsToReproduce</attribute>
      <attribute>additionalInfo</attribute>
      <attribute>dateSubmitted</attribute>
      <attribute>fixedInVersion</attribute>
      <attribute>lastUpdate</attribute>
    </node>
    <node className="ValueWithId" id="_fDYT5-iaEd6gMtZRCjS81g">
      <attribute>value</attribute>
    </node>
    <node className="Person" id="_fDYT6OiaEd6gMtZRCjS81g">
      <attribute>login</attribute>
    </node>
    <node className="Relationship" id="_fDYT6eiaEd6gMtZRCjS81g">
      <attribute>type</attribute>
    </node>
    <node className="TimeStampedElt" id="_fDYT6uiaEd6gMtZRCjS81g">
      <attribute>timestamp</attribute>
    </node>
    <node className="Note" id="_fDY68OiaEd6gMtZRCjS81g">
      <attribute>text</attribute>
    </node>
    <node className="Attachment" id="_fDY68eiaEd6gMtZRCjS81g">
      <attribute>filename</attribute>
      <attribute>size</attribute>
      <attribute>contentType</attribute>
      <attribute>downloadUrl</attribute>
    </node>
    <edge id="_fDY7CuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fDYT4-iaEd6gMtZRCjS81g" target="_fDYT5uiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">issues</attribute>
    </edge>
    <edge id="_fDY7CuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fDYT5uiaEd6gMtZRCjS81g" target="_fDYT4-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fDY7DeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fDYT5uiaEd6gMtZRCjS81g" target="_fDYT5-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">project</attribute>
    </edge>
    <edge id="_fDY7DeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fDYT5-iaEd6gMtZRCjS81g" target="_fDYT5uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fDY7EOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fDYT5uiaEd6gMtZRCjS81g" target="_fDYT5-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">priority</attribute>
    </edge>
    <edge id="_fDY7EOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fDYT5-iaEd6gMtZRCjS81g" target="_fDYT5uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fDY7E-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fDYT5uiaEd6gMtZRCjS81g" target="_fDYT5-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">severity</attribute>
    </edge>
    <edge id="_fDY7E-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fDYT5-iaEd6gMtZRCjS81g" target="_fDYT5uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fDY7FuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fDYT5uiaEd6gMtZRCjS81g" target="_fDYT5-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">status</attribute>
    </edge>
    <edge id="_fDY7FuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fDYT5-iaEd6gMtZRCjS81g" target="_fDYT5uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fDY7GeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fDYT5uiaEd6gMtZRCjS81g" target="_fDYT6OiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">reporter</attribute>
    </edge>
    <edge id="_fDY7GeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fDYT6OiaEd6gMtZRCjS81g" target="_fDYT5uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fDY7HOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fDYT5uiaEd6gMtZRCjS81g" target="_fDYT5-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">reproducibility</attribute>
    </edge>
    <edge id="_fDY7HOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fDYT5-iaEd6gMtZRCjS81g" target="_fDYT5uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fDY7H-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fDYT5uiaEd6gMtZRCjS81g" target="_fDYT6OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">assignedTo</attribute>
    </edge>
    <edge id="_fDY7H-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fDYT6OiaEd6gMtZRCjS81g" target="_fDYT5uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fDY7IuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fDYT5uiaEd6gMtZRCjS81g" target="_fDYT5-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">projection</attribute>
    </edge>
    <edge id="_fDY7IuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fDYT5-iaEd6gMtZRCjS81g" target="_fDYT5uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fDY7JeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fDYT5uiaEd6gMtZRCjS81g" target="_fDYT5-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">eta</attribute>
    </edge>
    <edge id="_fDY7JeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fDYT5-iaEd6gMtZRCjS81g" target="_fDYT5uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fDY7KOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fDYT5uiaEd6gMtZRCjS81g" target="_fDYT5-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">resolution</attribute>
    </edge>
    <edge id="_fDY7KOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fDYT5-iaEd6gMtZRCjS81g" target="_fDYT5uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fDZiAeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fDYT5uiaEd6gMtZRCjS81g" target="_fDY68eiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">attachments</attribute>
    </edge>
    <edge id="_fDZiAeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fDY68eiaEd6gMtZRCjS81g" target="_fDYT5uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fDZiBOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fDYT5uiaEd6gMtZRCjS81g" target="_fDYT6eiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">relationships</attribute>
    </edge>
    <edge id="_fDZiBOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fDYT6eiaEd6gMtZRCjS81g" target="_fDYT5uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fDZiB-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fDYT5uiaEd6gMtZRCjS81g" target="_fDY68OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">notes</attribute>
    </edge>
    <edge id="_fDZiB-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fDY68OiaEd6gMtZRCjS81g" target="_fDYT5uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fDZiCuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fDY68OiaEd6gMtZRCjS81g" target="_fDYT6OiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">author</attribute>
    </edge>
    <edge id="_fDZiCuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fDYT6OiaEd6gMtZRCjS81g" target="_fDY68OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fDaJEOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fDYT5uiaEd6gMtZRCjS81g" target="_fDYT5OiaEd6gMtZRCjS81g"/>
    <edge id="_fDaJEOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fDYT5OiaEd6gMtZRCjS81g" target="_fDYT5uiaEd6gMtZRCjS81g"/>
    <edge id="_fDaJEeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fDYT5uiaEd6gMtZRCjS81g" target="_fDYT5eiaEd6gMtZRCjS81g"/>
    <edge id="_fDaJEeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fDYT5eiaEd6gMtZRCjS81g" target="_fDYT5uiaEd6gMtZRCjS81g"/>
    <edge id="_fDaJEuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fDYT5-iaEd6gMtZRCjS81g" target="_fDYT5OiaEd6gMtZRCjS81g"/>
    <edge id="_fDaJEuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fDYT5OiaEd6gMtZRCjS81g" target="_fDYT5-iaEd6gMtZRCjS81g"/>
    <edge id="_fDaJE-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fDYT6OiaEd6gMtZRCjS81g" target="_fDYT5-iaEd6gMtZRCjS81g"/>
    <edge id="_fDaJE-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fDYT5-iaEd6gMtZRCjS81g" target="_fDYT6OiaEd6gMtZRCjS81g"/>
    <edge id="_fDaJFOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fDYT6eiaEd6gMtZRCjS81g" target="_fDYT5OiaEd6gMtZRCjS81g"/>
    <edge id="_fDaJFOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fDYT5OiaEd6gMtZRCjS81g" target="_fDYT6eiaEd6gMtZRCjS81g"/>
    <edge id="_fDaJFeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fDY68OiaEd6gMtZRCjS81g" target="_fDYT6uiaEd6gMtZRCjS81g"/>
    <edge id="_fDaJFeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fDYT6uiaEd6gMtZRCjS81g" target="_fDY68OiaEd6gMtZRCjS81g"/>
    <edge id="_fDaJFuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fDY68OiaEd6gMtZRCjS81g" target="_fDYT5eiaEd6gMtZRCjS81g"/>
    <edge id="_fDaJFuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fDYT5eiaEd6gMtZRCjS81g" target="_fDY68OiaEd6gMtZRCjS81g"/>
    <edge id="_fDaJF-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fDY68eiaEd6gMtZRCjS81g" target="_fDYT6uiaEd6gMtZRCjS81g"/>
    <edge id="_fDaJF-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fDYT6uiaEd6gMtZRCjS81g" target="_fDY68eiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
