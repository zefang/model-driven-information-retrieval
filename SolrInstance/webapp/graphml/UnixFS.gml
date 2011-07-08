<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_grdE8OiaEd6gMtZRCjS81g" projectName="UnixFS">
    <node className="NamedElement" id="_grdE8-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="File" id="_grdE9OiaEd6gMtZRCjS81g">
      <attribute>owner</attribute>
      <attribute>group</attribute>
    </node>
    <node className="Directory" id="_grdE9eiaEd6gMtZRCjS81g"/>
    <node className="FileSystemRoot" id="_grdE9uiaEd6gMtZRCjS81g"/>
    <node className="TextFile" id="_grdE9-iaEd6gMtZRCjS81g"/>
    <edge id="_grdsAuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_grdE9eiaEd6gMtZRCjS81g" target="_grdE9OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">contents</attribute>
    </edge>
    <edge id="_grdsAuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_grdE9OiaEd6gMtZRCjS81g" target="_grdE9eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_grdsBuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_grdE9OiaEd6gMtZRCjS81g" target="_grdE8-iaEd6gMtZRCjS81g"/>
    <edge id="_grdsBuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_grdE8-iaEd6gMtZRCjS81g" target="_grdE9OiaEd6gMtZRCjS81g"/>
    <edge id="_grdsB-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_grdE9eiaEd6gMtZRCjS81g" target="_grdE9OiaEd6gMtZRCjS81g"/>
    <edge id="_grdsB-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_grdE9OiaEd6gMtZRCjS81g" target="_grdE9eiaEd6gMtZRCjS81g"/>
    <edge id="_grdsCOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_grdE9uiaEd6gMtZRCjS81g" target="_grdE9eiaEd6gMtZRCjS81g"/>
    <edge id="_grdsCOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_grdE9eiaEd6gMtZRCjS81g" target="_grdE9uiaEd6gMtZRCjS81g"/>
    <edge id="_grdsCeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_grdE9-iaEd6gMtZRCjS81g" target="_grdE9OiaEd6gMtZRCjS81g"/>
    <edge id="_grdsCeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_grdE9OiaEd6gMtZRCjS81g" target="_grdE9-iaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
