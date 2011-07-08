<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_e6BjkOiaEd6gMtZRCjS81g" projectName="MSProject">
    <node className="MSProject" id="_e6Bjk-iaEd6gMtZRCjS81g"/>
    <node className="NamedElement" id="_e6BjlOiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Task" id="_e6BjleiaEd6gMtZRCjS81g">
      <attribute>UID</attribute>
    </node>
    <edge id="_e6BjmOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_e6Bjk-iaEd6gMtZRCjS81g" target="_e6BjleiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">tasks</attribute>
    </edge>
    <edge id="_e6BjmOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_e6BjleiaEd6gMtZRCjS81g" target="_e6Bjk-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_e6Bjm-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_e6BjleiaEd6gMtZRCjS81g" target="_e6BjleiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">predecessors</attribute>
    </edge>
    <edge id="_e6Bjm-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_e6BjleiaEd6gMtZRCjS81g" target="_e6BjleiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_e6CKouiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_e6BjleiaEd6gMtZRCjS81g" target="_e6BjlOiaEd6gMtZRCjS81g"/>
    <edge id="_e6CKouiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_e6BjlOiaEd6gMtZRCjS81g" target="_e6BjleiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
