<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_gQPIkOiaEd6gMtZRCjS81g" projectName="MMASharengo">
    <node className="ModelElement" id="_gQPIk-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Classifier" id="_gQPIlOiaEd6gMtZRCjS81g"/>
    <node className="Operation" id="_gQPIleiaEd6gMtZRCjS81g"/>
    <node className="Service" id="_gQPIluiaEd6gMtZRCjS81g"/>
    <node className="BusinessObject" id="_gQPIl-iaEd6gMtZRCjS81g"/>
    <node className="ServiceOperation" id="_gQPImOiaEd6gMtZRCjS81g"/>
    <node className="BusinessObjectOperation" id="_gQPImeiaEd6gMtZRCjS81g"/>
    <node className="BusinessRule" id="_gQPImuiaEd6gMtZRCjS81g">
      <attribute>expr</attribute>
    </node>
    <node className="Flow" id="_gQPIm-iaEd6gMtZRCjS81g">
      <attribute>source</attribute>
      <attribute>target</attribute>
    </node>
    <node className="Service2BusinessObjectFlow" id="_gQPInOiaEd6gMtZRCjS81g"/>
    <edge id="_gQPIoeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gQPIluiaEd6gMtZRCjS81g" target="_gQPImOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">operations</attribute>
    </edge>
    <edge id="_gQPIoeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gQPImOiaEd6gMtZRCjS81g" target="_gQPIluiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gQPIpOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gQPIl-iaEd6gMtZRCjS81g" target="_gQPImeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">operations</attribute>
    </edge>
    <edge id="_gQPIpOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gQPImeiaEd6gMtZRCjS81g" target="_gQPIl-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gQPIp-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gQPImOiaEd6gMtZRCjS81g" target="_gQPInOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">BOFlows</attribute>
    </edge>
    <edge id="_gQPIp-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gQPInOiaEd6gMtZRCjS81g" target="_gQPImOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gQPIquiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gQPImOiaEd6gMtZRCjS81g" target="_gQPImuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">rules</attribute>
    </edge>
    <edge id="_gQPIquiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gQPImuiaEd6gMtZRCjS81g" target="_gQPImOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gQPvoeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gQPImeiaEd6gMtZRCjS81g" target="_gQPImuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">rules</attribute>
    </edge>
    <edge id="_gQPvoeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gQPImuiaEd6gMtZRCjS81g" target="_gQPImeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gQPvpeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gQPIlOiaEd6gMtZRCjS81g" target="_gQPIk-iaEd6gMtZRCjS81g"/>
    <edge id="_gQPvpeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gQPIk-iaEd6gMtZRCjS81g" target="_gQPIlOiaEd6gMtZRCjS81g"/>
    <edge id="_gQPvpuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gQPIleiaEd6gMtZRCjS81g" target="_gQPIk-iaEd6gMtZRCjS81g"/>
    <edge id="_gQPvpuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gQPIk-iaEd6gMtZRCjS81g" target="_gQPIleiaEd6gMtZRCjS81g"/>
    <edge id="_gQPvp-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gQPIluiaEd6gMtZRCjS81g" target="_gQPIlOiaEd6gMtZRCjS81g"/>
    <edge id="_gQPvp-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gQPIlOiaEd6gMtZRCjS81g" target="_gQPIluiaEd6gMtZRCjS81g"/>
    <edge id="_gQPvqOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gQPIl-iaEd6gMtZRCjS81g" target="_gQPIlOiaEd6gMtZRCjS81g"/>
    <edge id="_gQPvqOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gQPIlOiaEd6gMtZRCjS81g" target="_gQPIl-iaEd6gMtZRCjS81g"/>
    <edge id="_gQPvqeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gQPImOiaEd6gMtZRCjS81g" target="_gQPIleiaEd6gMtZRCjS81g"/>
    <edge id="_gQPvqeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gQPIleiaEd6gMtZRCjS81g" target="_gQPImOiaEd6gMtZRCjS81g"/>
    <edge id="_gQPvquiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gQPImeiaEd6gMtZRCjS81g" target="_gQPIleiaEd6gMtZRCjS81g"/>
    <edge id="_gQPvquiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gQPIleiaEd6gMtZRCjS81g" target="_gQPImeiaEd6gMtZRCjS81g"/>
    <edge id="_gQPvq-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gQPImuiaEd6gMtZRCjS81g" target="_gQPIk-iaEd6gMtZRCjS81g"/>
    <edge id="_gQPvq-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gQPIk-iaEd6gMtZRCjS81g" target="_gQPImuiaEd6gMtZRCjS81g"/>
    <edge id="_gQPvrOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gQPIm-iaEd6gMtZRCjS81g" target="_gQPIk-iaEd6gMtZRCjS81g"/>
    <edge id="_gQPvrOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gQPIk-iaEd6gMtZRCjS81g" target="_gQPIm-iaEd6gMtZRCjS81g"/>
    <edge id="_gQQWsOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gQPInOiaEd6gMtZRCjS81g" target="_gQPIm-iaEd6gMtZRCjS81g"/>
    <edge id="_gQQWsOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gQPIm-iaEd6gMtZRCjS81g" target="_gQPInOiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
