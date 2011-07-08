<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_gC4CAOiaEd6gMtZRCjS81g" projectName="RelationalDBContent">
    <node className="NamedElement" id="_gC4CA-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="DataBase" id="_gC4CBOiaEd6gMtZRCjS81g">
      <attribute>SGBDname</attribute>
    </node>
    <node className="Table" id="_gC4CBeiaEd6gMtZRCjS81g"/>
    <node className="Tuple" id="_gC4CBuiaEd6gMtZRCjS81g"/>
    <node className="TupleElement" id="_gC4CB-iaEd6gMtZRCjS81g">
      <attribute>value</attribute>
    </node>
    <edge id="_gC4CC-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gC4CBOiaEd6gMtZRCjS81g" target="_gC4CBeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">tables</attribute>
    </edge>
    <edge id="_gC4CC-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gC4CBeiaEd6gMtZRCjS81g" target="_gC4CBOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gC4CDuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gC4CBeiaEd6gMtZRCjS81g" target="_gC4CBuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">tuples</attribute>
    </edge>
    <edge id="_gC4CDuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gC4CBuiaEd6gMtZRCjS81g" target="_gC4CBeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gC4CEeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gC4CBuiaEd6gMtZRCjS81g" target="_gC4CB-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">elements</attribute>
    </edge>
    <edge id="_gC4CEeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gC4CB-iaEd6gMtZRCjS81g" target="_gC4CBuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gC4pEOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gC4CBOiaEd6gMtZRCjS81g" target="_gC4CA-iaEd6gMtZRCjS81g"/>
    <edge id="_gC4pEOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gC4CA-iaEd6gMtZRCjS81g" target="_gC4CBOiaEd6gMtZRCjS81g"/>
    <edge id="_gC4pEeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gC4CBeiaEd6gMtZRCjS81g" target="_gC4CA-iaEd6gMtZRCjS81g"/>
    <edge id="_gC4pEeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gC4CA-iaEd6gMtZRCjS81g" target="_gC4CBeiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
