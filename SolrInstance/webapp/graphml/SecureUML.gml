<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_gPKxkOiaEd6gMtZRCjS81g" projectName="SecureUML">
    <node className="Group" id="_gPKxk-iaEd6gMtZRCjS81g"/>
    <node className="User" id="_gPKxlOiaEd6gMtZRCjS81g"/>
    <node className="Subject" id="_gPKxleiaEd6gMtZRCjS81g"/>
    <node className="Role" id="_gPKxluiaEd6gMtZRCjS81g"/>
    <node className="Permission" id="_gPKxl-iaEd6gMtZRCjS81g"/>
    <node className="AuthorizationConstraint" id="_gPKxmOiaEd6gMtZRCjS81g"/>
    <node className="AtomicAction" id="_gPKxmeiaEd6gMtZRCjS81g"/>
    <node className="CompositeAction" id="_gPKxmuiaEd6gMtZRCjS81g"/>
    <node className="Action" id="_gPKxm-iaEd6gMtZRCjS81g"/>
    <node className="Resource" id="_gPKxnOiaEd6gMtZRCjS81g"/>
    <edge id="_gPKxneiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gPKxk-iaEd6gMtZRCjS81g" target="_gPKxleiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">subjectGroup</attribute>
    </edge>
    <edge id="_gPKxneiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gPKxleiaEd6gMtZRCjS81g" target="_gPKxk-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gPLYoeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gPKxluiaEd6gMtZRCjS81g" target="_gPKxluiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">roleHierarchy</attribute>
    </edge>
    <edge id="_gPLYoeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gPKxluiaEd6gMtZRCjS81g" target="_gPKxluiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gPLYreiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gPKxmuiaEd6gMtZRCjS81g" target="_gPKxm-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">subordinatedAction</attribute>
    </edge>
    <edge id="_gPLYreiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gPKxm-iaEd6gMtZRCjS81g" target="_gPKxmuiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gPLYsOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gPKxnOiaEd6gMtZRCjS81g" target="_gPKxm-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">resourceAction</attribute>
    </edge>
    <edge id="_gPLYsOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gPKxm-iaEd6gMtZRCjS81g" target="_gPKxnOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gPKxoOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gPKxleiaEd6gMtZRCjS81g" target="_gPKxluiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">role</attribute>
    </edge>
    <edge id="_gPKxoOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gPKxluiaEd6gMtZRCjS81g" target="_gPKxleiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gPLYpOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gPKxluiaEd6gMtZRCjS81g" target="_gPKxl-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">permissionAssignment</attribute>
    </edge>
    <edge id="_gPLYpOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gPKxl-iaEd6gMtZRCjS81g" target="_gPKxluiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gPLYp-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gPKxl-iaEd6gMtZRCjS81g" target="_gPKxmOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">constraintAssignment</attribute>
    </edge>
    <edge id="_gPLYp-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gPKxmOiaEd6gMtZRCjS81g" target="_gPKxl-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gPLYquiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gPKxl-iaEd6gMtZRCjS81g" target="_gPKxm-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">actionAssignment</attribute>
    </edge>
    <edge id="_gPLYquiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gPKxm-iaEd6gMtZRCjS81g" target="_gPKxl-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gPLYtuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gPKxk-iaEd6gMtZRCjS81g" target="_gPKxleiaEd6gMtZRCjS81g"/>
    <edge id="_gPLYtuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gPKxleiaEd6gMtZRCjS81g" target="_gPKxk-iaEd6gMtZRCjS81g"/>
    <edge id="_gPLYt-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gPKxlOiaEd6gMtZRCjS81g" target="_gPKxleiaEd6gMtZRCjS81g"/>
    <edge id="_gPLYt-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gPKxleiaEd6gMtZRCjS81g" target="_gPKxlOiaEd6gMtZRCjS81g"/>
    <edge id="_gPL_sOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gPKxmeiaEd6gMtZRCjS81g" target="_gPKxm-iaEd6gMtZRCjS81g"/>
    <edge id="_gPL_sOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gPKxm-iaEd6gMtZRCjS81g" target="_gPKxmeiaEd6gMtZRCjS81g"/>
    <edge id="_gPL_seiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gPKxmuiaEd6gMtZRCjS81g" target="_gPKxm-iaEd6gMtZRCjS81g"/>
    <edge id="_gPL_seiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gPKxm-iaEd6gMtZRCjS81g" target="_gPKxmuiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
