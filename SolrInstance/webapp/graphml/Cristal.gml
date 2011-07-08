<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_d7CLwOiaEd6gMtZRCjS81g" projectName="Cristal">
    <node className="Condition" id="_d7CLw-iaEd6gMtZRCjS81g"/>
    <node className="CompositeParDef" id="_d7CLxOiaEd6gMtZRCjS81g"/>
    <node className="ElementaryPartDef" id="_d7CLxeiaEd6gMtZRCjS81g"/>
    <node className="ElementaryActDef" id="_d7CLxuiaEd6gMtZRCjS81g"/>
    <node className="CompositeActDef" id="_d7CLx-iaEd6gMtZRCjS81g"/>
    <node className="ActCompositeMember" id="_d7CLyOiaEd6gMtZRCjS81g"/>
    <node className="ActivityDefinition" id="_d7CLyeiaEd6gMtZRCjS81g"/>
    <node className="PartDefinition" id="_d7CLyuiaEd6gMtZRCjS81g"/>
    <node className="PartCompositeMember" id="_d7CLy-iaEd6gMtZRCjS81g"/>
    <edge id="_d7CL0uiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_d7CLxOiaEd6gMtZRCjS81g" target="_d7CLy-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">partCompositeMember</attribute>
    </edge>
    <edge id="_d7CL0uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_d7CLy-iaEd6gMtZRCjS81g" target="_d7CLxOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d7CL1eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_d7CLx-iaEd6gMtZRCjS81g" target="_d7CLyOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">actCompositeMembers</attribute>
    </edge>
    <edge id="_d7CL1eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_d7CLyOiaEd6gMtZRCjS81g" target="_d7CLx-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d7CLzOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_d7CLw-iaEd6gMtZRCjS81g" target="_d7CLy-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">partCompositeMembers</attribute>
    </edge>
    <edge id="_d7CLzOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_d7CLy-iaEd6gMtZRCjS81g" target="_d7CLw-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d7CLz-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_d7CLw-iaEd6gMtZRCjS81g" target="_d7CLyOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">actCompositeMembers</attribute>
    </edge>
    <edge id="_d7CLz-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_d7CLyOiaEd6gMtZRCjS81g" target="_d7CLw-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d7CL2OiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_d7CLyOiaEd6gMtZRCjS81g" target="_d7CLyeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">activityDefinitions</attribute>
    </edge>
    <edge id="_d7CL2OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_d7CLyeiaEd6gMtZRCjS81g" target="_d7CLyOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d7CL2-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_d7CLyuiaEd6gMtZRCjS81g" target="_d7CLy-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">partCompositeMembers</attribute>
    </edge>
    <edge id="_d7CL2-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_d7CLy-iaEd6gMtZRCjS81g" target="_d7CLyuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d7Cy0OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_d7CLxOiaEd6gMtZRCjS81g" target="_d7CLyuiaEd6gMtZRCjS81g"/>
    <edge id="_d7Cy0OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_d7CLyuiaEd6gMtZRCjS81g" target="_d7CLxOiaEd6gMtZRCjS81g"/>
    <edge id="_d7Cy0eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_d7CLxeiaEd6gMtZRCjS81g" target="_d7CLyuiaEd6gMtZRCjS81g"/>
    <edge id="_d7Cy0eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_d7CLyuiaEd6gMtZRCjS81g" target="_d7CLxeiaEd6gMtZRCjS81g"/>
    <edge id="_d7Cy0uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_d7CLxuiaEd6gMtZRCjS81g" target="_d7CLyeiaEd6gMtZRCjS81g"/>
    <edge id="_d7Cy0uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_d7CLyeiaEd6gMtZRCjS81g" target="_d7CLxuiaEd6gMtZRCjS81g"/>
    <edge id="_d7Cy0-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_d7CLx-iaEd6gMtZRCjS81g" target="_d7CLyeiaEd6gMtZRCjS81g"/>
    <edge id="_d7Cy0-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_d7CLyeiaEd6gMtZRCjS81g" target="_d7CLx-iaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
