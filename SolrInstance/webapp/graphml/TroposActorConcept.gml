<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_gWtkAOiaEd6gMtZRCjS81g" projectName="ActorConcept">
    <node className="Actor" id="_gWtkAuiaEd6gMtZRCjS81g"/>
    <node className="Goal" id="_gWtkA-iaEd6gMtZRCjS81g"/>
    <node className="SoftGoal" id="_gWtkBOiaEd6gMtZRCjS81g"/>
    <node className="HardGoal" id="_gWtkBeiaEd6gMtZRCjS81g"/>
    <node className="Dependency" id="_gWtkBuiaEd6gMtZRCjS81g"/>
    <node className="Plan" id="_gWtkB-iaEd6gMtZRCjS81g"/>
    <node className="Resource" id="_gWtkCOiaEd6gMtZRCjS81g"/>
    <edge id="_gWuLEOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gWtkAuiaEd6gMtZRCjS81g" target="_gWtkBuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">dependencyE</attribute>
    </edge>
    <edge id="_gWuLEOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gWtkBuiaEd6gMtZRCjS81g" target="_gWtkAuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gWuLE-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gWtkAuiaEd6gMtZRCjS81g" target="_gWtkBuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">dependencyR</attribute>
    </edge>
    <edge id="_gWuLE-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gWtkBuiaEd6gMtZRCjS81g" target="_gWtkAuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gWuLFuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gWtkAuiaEd6gMtZRCjS81g" target="_gWtkA-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">goal</attribute>
    </edge>
    <edge id="_gWuLFuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gWtkA-iaEd6gMtZRCjS81g" target="_gWtkAuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gWuLGeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gWtkAuiaEd6gMtZRCjS81g" target="_gWtkB-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">plan</attribute>
    </edge>
    <edge id="_gWuLGeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gWtkB-iaEd6gMtZRCjS81g" target="_gWtkAuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gWuLHOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gWtkAuiaEd6gMtZRCjS81g" target="_gWtkCOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">resource</attribute>
    </edge>
    <edge id="_gWuLHOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gWtkCOiaEd6gMtZRCjS81g" target="_gWtkAuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gWuLH-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gWtkA-iaEd6gMtZRCjS81g" target="_gWtkB-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">plan</attribute>
    </edge>
    <edge id="_gWuLH-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gWtkB-iaEd6gMtZRCjS81g" target="_gWtkA-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gWuLIuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gWtkA-iaEd6gMtZRCjS81g" target="_gWtkBuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">dependencyWG</attribute>
    </edge>
    <edge id="_gWuLIuiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gWtkBuiaEd6gMtZRCjS81g" target="_gWtkA-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gWuLJeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gWtkA-iaEd6gMtZRCjS81g" target="_gWtkBuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">dependencyG</attribute>
    </edge>
    <edge id="_gWuLJeiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gWtkBuiaEd6gMtZRCjS81g" target="_gWtkA-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gWuLKOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gWtkBuiaEd6gMtZRCjS81g" target="_gWtkCOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">WhyR</attribute>
    </edge>
    <edge id="_gWuLKOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gWtkCOiaEd6gMtZRCjS81g" target="_gWtkBuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gWuLK-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gWtkBuiaEd6gMtZRCjS81g" target="_gWtkCOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">resourceD</attribute>
    </edge>
    <edge id="_gWuLK-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gWtkCOiaEd6gMtZRCjS81g" target="_gWtkBuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gWuLLuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gWtkBuiaEd6gMtZRCjS81g" target="_gWtkB-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">WhyP</attribute>
    </edge>
    <edge id="_gWuLLuiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gWtkB-iaEd6gMtZRCjS81g" target="_gWtkBuiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gWuLMeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gWtkBuiaEd6gMtZRCjS81g" target="_gWtkB-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">plan</attribute>
    </edge>
    <edge id="_gWuLMeiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gWtkB-iaEd6gMtZRCjS81g" target="_gWtkBuiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gWuyIOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gWtkBOiaEd6gMtZRCjS81g" target="_gWtkA-iaEd6gMtZRCjS81g"/>
    <edge id="_gWuyIOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gWtkA-iaEd6gMtZRCjS81g" target="_gWtkBOiaEd6gMtZRCjS81g"/>
    <edge id="_gWuyIeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gWtkBeiaEd6gMtZRCjS81g" target="_gWtkA-iaEd6gMtZRCjS81g"/>
    <edge id="_gWuyIeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gWtkA-iaEd6gMtZRCjS81g" target="_gWtkBeiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
