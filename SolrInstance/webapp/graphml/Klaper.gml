<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_emx3cOiaEd6gMtZRCjS81g" projectName="Klaper">
    <node className="Resource" id="_emx3c-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>type</attribute>
      <attribute>capacity</attribute>
      <attribute>schedulingPolicy</attribute>
      <attribute>description</attribute>
    </node>
    <node className="Service" id="_emx3dOiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>formalParams</attribute>
      <attribute>speedAttr</attribute>
      <attribute>failAttr</attribute>
      <attribute>description</attribute>
    </node>
    <node className="Behavior" id="_emx3deiaEd6gMtZRCjS81g"/>
    <node className="WorkLoad" id="_emx3duiaEd6gMtZRCjS81g">
      <attribute>workLoadType</attribute>
      <attribute>arrivalProcess</attribute>
      <attribute>population</attribute>
      <attribute>initialResource</attribute>
    </node>
    <node className="Step" id="_emx3d-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>repetition</attribute>
      <attribute>internalExecTime</attribute>
      <attribute>internalFailProb</attribute>
      <attribute>completionModel</attribute>
    </node>
    <node className="Start" id="_emx3eOiaEd6gMtZRCjS81g"/>
    <node className="End" id="_emx3eeiaEd6gMtZRCjS81g"/>
    <node className="Control" id="_emx3euiaEd6gMtZRCjS81g"/>
    <node className="InternalActivity" id="_emx3e-iaEd6gMtZRCjS81g"/>
    <node className="ServiceCall" id="_emx3fOiaEd6gMtZRCjS81g">
      <attribute>resourceType</attribute>
      <attribute>serviceName</attribute>
      <attribute>isSynch</attribute>
    </node>
    <node className="ActualParam" id="_emx3feiaEd6gMtZRCjS81g">
      <attribute>value</attribute>
    </node>
    <node className="Branch" id="_emx3fuiaEd6gMtZRCjS81g">
      <attribute>branchProbs</attribute>
    </node>
    <node className="Fork" id="_emx3f-iaEd6gMtZRCjS81g"/>
    <node className="Join" id="_emx3gOiaEd6gMtZRCjS81g"/>
    <node className="Acquire" id="_emx3geiaEd6gMtZRCjS81g">
      <attribute>resourceUnits</attribute>
    </node>
    <node className="Release" id="_emx3guiaEd6gMtZRCjS81g">
      <attribute>resourceUnits</attribute>
    </node>
    <edge id="_emyemOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_emx3deiaEd6gMtZRCjS81g" target="_emx3d-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">stepb</attribute>
    </edge>
    <edge id="_emyemOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_emx3d-iaEd6gMtZRCjS81g" target="_emx3deiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_emyenuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_emx3d-iaEd6gMtZRCjS81g" target="_emx3fOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">serviceCall</attribute>
    </edge>
    <edge id="_emyenuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_emx3fOiaEd6gMtZRCjS81g" target="_emx3d-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_emyehuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_emx3c-iaEd6gMtZRCjS81g" target="_emx3geiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">acquire</attribute>
    </edge>
    <edge id="_emyehuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_emx3geiaEd6gMtZRCjS81g" target="_emx3c-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_emyeieiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_emx3c-iaEd6gMtZRCjS81g" target="_emx3guiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">release</attribute>
    </edge>
    <edge id="_emyeieiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_emx3guiaEd6gMtZRCjS81g" target="_emx3c-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_emyejOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_emx3dOiaEd6gMtZRCjS81g" target="_emx3deiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">behavior</attribute>
    </edge>
    <edge id="_emyejOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_emx3deiaEd6gMtZRCjS81g" target="_emx3dOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_emyej-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_emx3dOiaEd6gMtZRCjS81g" target="_emx3deiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">behaviorUsed</attribute>
    </edge>
    <edge id="_emyej-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_emx3deiaEd6gMtZRCjS81g" target="_emx3dOiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_emyekuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_emx3dOiaEd6gMtZRCjS81g" target="_emx3fOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">serviceCall</attribute>
    </edge>
    <edge id="_emyekuiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_emx3fOiaEd6gMtZRCjS81g" target="_emx3dOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_emyeleiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_emx3deiaEd6gMtZRCjS81g" target="_emx3d-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">stepn</attribute>
    </edge>
    <edge id="_emyeleiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_emx3d-iaEd6gMtZRCjS81g" target="_emx3deiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_emyem-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_emx3deiaEd6gMtZRCjS81g" target="_emx3duiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">workLoad</attribute>
    </edge>
    <edge id="_emyem-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_emx3duiaEd6gMtZRCjS81g" target="_emx3deiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_emyeoeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_emx3d-iaEd6gMtZRCjS81g" target="_emx3d-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">predecessor</attribute>
    </edge>
    <edge id="_emyeoeiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_emx3d-iaEd6gMtZRCjS81g" target="_emx3d-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_emyepOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_emx3fOiaEd6gMtZRCjS81g" target="_emx3feiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">actualParam</attribute>
    </edge>
    <edge id="_emyepOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_emx3feiaEd6gMtZRCjS81g" target="_emx3fOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_em06wOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_emx3d-iaEd6gMtZRCjS81g" target="_emx3deiaEd6gMtZRCjS81g"/>
    <edge id="_em06wOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_emx3deiaEd6gMtZRCjS81g" target="_emx3d-iaEd6gMtZRCjS81g"/>
    <edge id="_em06weiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_emx3eOiaEd6gMtZRCjS81g" target="_emx3d-iaEd6gMtZRCjS81g"/>
    <edge id="_em06weiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_emx3d-iaEd6gMtZRCjS81g" target="_emx3eOiaEd6gMtZRCjS81g"/>
    <edge id="_em06wuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_emx3eeiaEd6gMtZRCjS81g" target="_emx3d-iaEd6gMtZRCjS81g"/>
    <edge id="_em06wuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_emx3d-iaEd6gMtZRCjS81g" target="_emx3eeiaEd6gMtZRCjS81g"/>
    <edge id="_em06w-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_emx3euiaEd6gMtZRCjS81g" target="_emx3d-iaEd6gMtZRCjS81g"/>
    <edge id="_em06w-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_emx3d-iaEd6gMtZRCjS81g" target="_emx3euiaEd6gMtZRCjS81g"/>
    <edge id="_em06xOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_emx3e-iaEd6gMtZRCjS81g" target="_emx3d-iaEd6gMtZRCjS81g"/>
    <edge id="_em06xOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_emx3d-iaEd6gMtZRCjS81g" target="_emx3e-iaEd6gMtZRCjS81g"/>
    <edge id="_em06xeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_emx3fOiaEd6gMtZRCjS81g" target="_emx3d-iaEd6gMtZRCjS81g"/>
    <edge id="_em06xeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_emx3d-iaEd6gMtZRCjS81g" target="_emx3fOiaEd6gMtZRCjS81g"/>
    <edge id="_em06xuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_emx3fuiaEd6gMtZRCjS81g" target="_emx3euiaEd6gMtZRCjS81g"/>
    <edge id="_em06xuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_emx3euiaEd6gMtZRCjS81g" target="_emx3fuiaEd6gMtZRCjS81g"/>
    <edge id="_em06x-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_emx3f-iaEd6gMtZRCjS81g" target="_emx3euiaEd6gMtZRCjS81g"/>
    <edge id="_em06x-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_emx3euiaEd6gMtZRCjS81g" target="_emx3f-iaEd6gMtZRCjS81g"/>
    <edge id="_em06yOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_emx3gOiaEd6gMtZRCjS81g" target="_emx3euiaEd6gMtZRCjS81g"/>
    <edge id="_em06yOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_emx3euiaEd6gMtZRCjS81g" target="_emx3gOiaEd6gMtZRCjS81g"/>
    <edge id="_em06yeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_emx3geiaEd6gMtZRCjS81g" target="_emx3euiaEd6gMtZRCjS81g"/>
    <edge id="_em06yeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_emx3euiaEd6gMtZRCjS81g" target="_emx3geiaEd6gMtZRCjS81g"/>
    <edge id="_em1h0OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_emx3guiaEd6gMtZRCjS81g" target="_emx3euiaEd6gMtZRCjS81g"/>
    <edge id="_em1h0OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_emx3euiaEd6gMtZRCjS81g" target="_emx3guiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
