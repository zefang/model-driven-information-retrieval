<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_dyDO4OiaEd6gMtZRCjS81g" projectName="CSM">
    <node className="CSM" id="_dyDO4-iaEd6gMtZRCjS81g"/>
    <node className="GeneralResource" id="_dyDO5OiaEd6gMtZRCjS81g"/>
    <node className="Step" id="_dyDO5eiaEd6gMtZRCjS81g"/>
    <node className="Scenarion" id="_dyDO5uiaEd6gMtZRCjS81g"/>
    <node className="Start" id="_dyDO5-iaEd6gMtZRCjS81g"/>
    <node className="End" id="_dyDO6OiaEd6gMtZRCjS81g"/>
    <node className="ResourceAcquire" id="_dyDO6eiaEd6gMtZRCjS81g"/>
    <node className="ResourceRelease" id="_dyDO6uiaEd6gMtZRCjS81g"/>
    <node className="Workload" id="_dyDO6-iaEd6gMtZRCjS81g"/>
    <node className="Component" id="_dyDO7OiaEd6gMtZRCjS81g"/>
    <node className="ProcessingResource" id="_dyDO7eiaEd6gMtZRCjS81g"/>
    <node className="ExternalService" id="_dyDO7uiaEd6gMtZRCjS81g"/>
    <node className="ActiveResource" id="_dyDO7-iaEd6gMtZRCjS81g"/>
    <node className="PassiveResource" id="_dyDO8OiaEd6gMtZRCjS81g"/>
    <node className="Message" id="_dyDO8eiaEd6gMtZRCjS81g"/>
    <node className="PathConnection" id="_dyDO8uiaEd6gMtZRCjS81g"/>
    <node className="Join" id="_dyDO8-iaEd6gMtZRCjS81g"/>
    <node className="Fork" id="_dyDO9OiaEd6gMtZRCjS81g"/>
    <node className="Merge" id="_dyDO9eiaEd6gMtZRCjS81g"/>
    <node className="Branch" id="_dyDO9uiaEd6gMtZRCjS81g"/>
    <node className="Seqence" id="_dyDO9-iaEd6gMtZRCjS81g"/>
    <edge id="_dyDO-OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dyDO4-iaEd6gMtZRCjS81g" target="_dyDO5eiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">step</attribute>
    </edge>
    <edge id="_dyDO-OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dyDO5eiaEd6gMtZRCjS81g" target="_dyDO4-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dyD18OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dyDO4-iaEd6gMtZRCjS81g" target="_dyDO5OiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">generalResource</attribute>
    </edge>
    <edge id="_dyD18OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dyDO5OiaEd6gMtZRCjS81g" target="_dyDO4-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dyD18-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dyDO4-iaEd6gMtZRCjS81g" target="_dyDO5uiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">scenarion</attribute>
    </edge>
    <edge id="_dyD18-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dyDO5uiaEd6gMtZRCjS81g" target="_dyDO4-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dyD2BeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dyDO5uiaEd6gMtZRCjS81g" target="_dyDO5eiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">step</attribute>
    </edge>
    <edge id="_dyD2BeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dyDO5eiaEd6gMtZRCjS81g" target="_dyDO5uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dyD19uiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dyDO5OiaEd6gMtZRCjS81g" target="_dyDO6eiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">resourceAcquire</attribute>
    </edge>
    <edge id="_dyD19uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dyDO6eiaEd6gMtZRCjS81g" target="_dyDO5OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dyD1-eiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dyDO5OiaEd6gMtZRCjS81g" target="_dyDO6uiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">resourceRelease</attribute>
    </edge>
    <edge id="_dyD1-eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dyDO6uiaEd6gMtZRCjS81g" target="_dyDO5OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dyD1_OiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dyDO5eiaEd6gMtZRCjS81g" target="_dyDO8uiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">postPath</attribute>
    </edge>
    <edge id="_dyD1_OiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_dyDO8uiaEd6gMtZRCjS81g" target="_dyDO5eiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_dyD1_-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dyDO5eiaEd6gMtZRCjS81g" target="_dyDO8uiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">prePath</attribute>
    </edge>
    <edge id="_dyD1_-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_dyDO8uiaEd6gMtZRCjS81g" target="_dyDO5eiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_dyD2AuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dyDO5eiaEd6gMtZRCjS81g" target="_dyDO7-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">activeResource</attribute>
    </edge>
    <edge id="_dyD2AuiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_dyDO7-iaEd6gMtZRCjS81g" target="_dyDO5eiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_dyD2COiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dyDO5uiaEd6gMtZRCjS81g" target="_dyDO5-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">root</attribute>
    </edge>
    <edge id="_dyD2COiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dyDO5-iaEd6gMtZRCjS81g" target="_dyDO5uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dyD2C-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dyDO5-iaEd6gMtZRCjS81g" target="_dyDO6-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">workload</attribute>
    </edge>
    <edge id="_dyD2C-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dyDO6-iaEd6gMtZRCjS81g" target="_dyDO5-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dyD2DuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dyDO8uiaEd6gMtZRCjS81g" target="_dyDO8eiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">message</attribute>
    </edge>
    <edge id="_dyD2DuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dyDO8eiaEd6gMtZRCjS81g" target="_dyDO8uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dyEdAOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dyDO5eiaEd6gMtZRCjS81g" target="_dyDO5uiaEd6gMtZRCjS81g"/>
    <edge id="_dyEdAOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dyDO5uiaEd6gMtZRCjS81g" target="_dyDO5eiaEd6gMtZRCjS81g"/>
    <edge id="_dyEdAeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dyDO5-iaEd6gMtZRCjS81g" target="_dyDO5eiaEd6gMtZRCjS81g"/>
    <edge id="_dyEdAeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dyDO5eiaEd6gMtZRCjS81g" target="_dyDO5-iaEd6gMtZRCjS81g"/>
    <edge id="_dyEdAuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dyDO6OiaEd6gMtZRCjS81g" target="_dyDO5eiaEd6gMtZRCjS81g"/>
    <edge id="_dyEdAuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dyDO5eiaEd6gMtZRCjS81g" target="_dyDO6OiaEd6gMtZRCjS81g"/>
    <edge id="_dyEdA-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dyDO6eiaEd6gMtZRCjS81g" target="_dyDO5eiaEd6gMtZRCjS81g"/>
    <edge id="_dyEdA-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dyDO5eiaEd6gMtZRCjS81g" target="_dyDO6eiaEd6gMtZRCjS81g"/>
    <edge id="_dyEdBOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dyDO6uiaEd6gMtZRCjS81g" target="_dyDO5eiaEd6gMtZRCjS81g"/>
    <edge id="_dyEdBOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dyDO5eiaEd6gMtZRCjS81g" target="_dyDO6uiaEd6gMtZRCjS81g"/>
    <edge id="_dyEdBeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dyDO7OiaEd6gMtZRCjS81g" target="_dyDO8OiaEd6gMtZRCjS81g"/>
    <edge id="_dyEdBeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dyDO8OiaEd6gMtZRCjS81g" target="_dyDO7OiaEd6gMtZRCjS81g"/>
    <edge id="_dyEdBuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dyDO7eiaEd6gMtZRCjS81g" target="_dyDO7-iaEd6gMtZRCjS81g"/>
    <edge id="_dyEdBuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dyDO7-iaEd6gMtZRCjS81g" target="_dyDO7eiaEd6gMtZRCjS81g"/>
    <edge id="_dyEdB-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dyDO7uiaEd6gMtZRCjS81g" target="_dyDO7-iaEd6gMtZRCjS81g"/>
    <edge id="_dyEdB-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dyDO7-iaEd6gMtZRCjS81g" target="_dyDO7uiaEd6gMtZRCjS81g"/>
    <edge id="_dyFEEOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dyDO7-iaEd6gMtZRCjS81g" target="_dyDO5OiaEd6gMtZRCjS81g"/>
    <edge id="_dyFEEOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dyDO5OiaEd6gMtZRCjS81g" target="_dyDO7-iaEd6gMtZRCjS81g"/>
    <edge id="_dyFEEeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dyDO8OiaEd6gMtZRCjS81g" target="_dyDO5OiaEd6gMtZRCjS81g"/>
    <edge id="_dyFEEeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dyDO5OiaEd6gMtZRCjS81g" target="_dyDO8OiaEd6gMtZRCjS81g"/>
    <edge id="_dyFEEuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dyDO8-iaEd6gMtZRCjS81g" target="_dyDO8uiaEd6gMtZRCjS81g"/>
    <edge id="_dyFEEuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dyDO8uiaEd6gMtZRCjS81g" target="_dyDO8-iaEd6gMtZRCjS81g"/>
    <edge id="_dyFEE-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dyDO9OiaEd6gMtZRCjS81g" target="_dyDO8uiaEd6gMtZRCjS81g"/>
    <edge id="_dyFEE-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dyDO8uiaEd6gMtZRCjS81g" target="_dyDO9OiaEd6gMtZRCjS81g"/>
    <edge id="_dyFEFOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dyDO9eiaEd6gMtZRCjS81g" target="_dyDO8uiaEd6gMtZRCjS81g"/>
    <edge id="_dyFEFOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dyDO8uiaEd6gMtZRCjS81g" target="_dyDO9eiaEd6gMtZRCjS81g"/>
    <edge id="_dyFEFeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dyDO9uiaEd6gMtZRCjS81g" target="_dyDO8uiaEd6gMtZRCjS81g"/>
    <edge id="_dyFEFeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dyDO8uiaEd6gMtZRCjS81g" target="_dyDO9uiaEd6gMtZRCjS81g"/>
    <edge id="_dyFEFuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dyDO9-iaEd6gMtZRCjS81g" target="_dyDO8uiaEd6gMtZRCjS81g"/>
    <edge id="_dyFEFuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dyDO8uiaEd6gMtZRCjS81g" target="_dyDO9-iaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
