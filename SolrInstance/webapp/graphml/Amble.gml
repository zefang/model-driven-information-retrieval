<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_dZHKcOiaEd6gMtZRCjS81g" projectName="Amble">
    <node className="Element" id="_dZHxguiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Program" id="_dZHxg-iaEd6gMtZRCjS81g"/>
    <node className="Process" id="_dZHxhOiaEd6gMtZRCjS81g">
      <attribute>minId</attribute>
      <attribute>maxId</attribute>
      <attribute>instancesNb</attribute>
    </node>
    <node className="State" id="_dZHxheiaEd6gMtZRCjS81g">
      <attribute>isInitial</attribute>
    </node>
    <node className="Transition" id="_dZHxhuiaEd6gMtZRCjS81g"/>
    <node className="Trans" id="_dZHxh-iaEd6gMtZRCjS81g"/>
    <node className="Strans" id="_dZHxiOiaEd6gMtZRCjS81g"/>
    <node className="Transall" id="_dZHxieiaEd6gMtZRCjS81g"/>
    <node className="Guard" id="_dZHxiuiaEd6gMtZRCjS81g"/>
    <node className="Action" id="_dZHxi-iaEd6gMtZRCjS81g"/>
    <node className="Network" id="_dZHxjOiaEd6gMtZRCjS81g"/>
    <node className="Channel" id="_dZHxjeiaEd6gMtZRCjS81g"/>
    <node className="Message" id="_dZHxjuiaEd6gMtZRCjS81g"/>
    <node className="Variable" id="_dZHxj-iaEd6gMtZRCjS81g">
      <attribute>type</attribute>
      <attribute>initValue</attribute>
    </node>
    <edge id="_dZHxl-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dZHxg-iaEd6gMtZRCjS81g" target="_dZHxhOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">processes</attribute>
    </edge>
    <edge id="_dZHxl-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dZHxhOiaEd6gMtZRCjS81g" target="_dZHxg-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dZHxmuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dZHxg-iaEd6gMtZRCjS81g" target="_dZHxjOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">networks</attribute>
    </edge>
    <edge id="_dZHxmuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dZHxjOiaEd6gMtZRCjS81g" target="_dZHxg-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dZHxneiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dZHxhOiaEd6gMtZRCjS81g" target="_dZHxheiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">states</attribute>
    </edge>
    <edge id="_dZHxneiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dZHxheiaEd6gMtZRCjS81g" target="_dZHxhOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dZHxoOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dZHxhOiaEd6gMtZRCjS81g" target="_dZHxhuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">transitions</attribute>
    </edge>
    <edge id="_dZHxoOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dZHxhuiaEd6gMtZRCjS81g" target="_dZHxhOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dZHxo-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dZHxhOiaEd6gMtZRCjS81g" target="_dZHxi-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">initial</attribute>
    </edge>
    <edge id="_dZHxo-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dZHxi-iaEd6gMtZRCjS81g" target="_dZHxhOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dZHxpuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dZHxhOiaEd6gMtZRCjS81g" target="_dZHxj-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">variables</attribute>
    </edge>
    <edge id="_dZHxpuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dZHxj-iaEd6gMtZRCjS81g" target="_dZHxhOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dZHxsuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dZHxhuiaEd6gMtZRCjS81g" target="_dZHxiuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">guard</attribute>
    </edge>
    <edge id="_dZHxsuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dZHxiuiaEd6gMtZRCjS81g" target="_dZHxhuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dZHxteiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dZHxhuiaEd6gMtZRCjS81g" target="_dZHxi-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">action</attribute>
    </edge>
    <edge id="_dZHxteiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dZHxi-iaEd6gMtZRCjS81g" target="_dZHxhuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dZIYmOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dZHxjOiaEd6gMtZRCjS81g" target="_dZHxjeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">channels</attribute>
    </edge>
    <edge id="_dZIYmOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dZHxjeiaEd6gMtZRCjS81g" target="_dZHxjOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dZIYm-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dZHxjeiaEd6gMtZRCjS81g" target="_dZHxjuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">messages</attribute>
    </edge>
    <edge id="_dZIYm-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dZHxjuiaEd6gMtZRCjS81g" target="_dZHxjeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dZHxqeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dZHxhOiaEd6gMtZRCjS81g" target="_dZHxjOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">connectedTo</attribute>
    </edge>
    <edge id="_dZHxqeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dZHxjOiaEd6gMtZRCjS81g" target="_dZHxhOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dZHxrOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dZHxheiaEd6gMtZRCjS81g" target="_dZHxhuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">incoming</attribute>
    </edge>
    <edge id="_dZHxrOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dZHxhuiaEd6gMtZRCjS81g" target="_dZHxheiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dZHxr-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dZHxheiaEd6gMtZRCjS81g" target="_dZHxhuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">outgoing</attribute>
    </edge>
    <edge id="_dZHxr-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dZHxhuiaEd6gMtZRCjS81g" target="_dZHxheiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dZIYkuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dZHxh-iaEd6gMtZRCjS81g" target="_dZHxjuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">waitFor</attribute>
    </edge>
    <edge id="_dZIYkuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dZHxjuiaEd6gMtZRCjS81g" target="_dZHxh-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dZIYleiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dZHxieiaEd6gMtZRCjS81g" target="_dZHxjuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">waitFor</attribute>
    </edge>
    <edge id="_dZIYleiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dZHxjuiaEd6gMtZRCjS81g" target="_dZHxieiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dZIYnuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dZHxjeiaEd6gMtZRCjS81g" target="_dZHxhOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">source</attribute>
    </edge>
    <edge id="_dZIYnuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dZHxhOiaEd6gMtZRCjS81g" target="_dZHxjeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dZIYoeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dZHxjeiaEd6gMtZRCjS81g" target="_dZHxhOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">target</attribute>
    </edge>
    <edge id="_dZIYoeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dZHxhOiaEd6gMtZRCjS81g" target="_dZHxjeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dZI_oOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dZHxg-iaEd6gMtZRCjS81g" target="_dZHxguiaEd6gMtZRCjS81g"/>
    <edge id="_dZI_oOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dZHxguiaEd6gMtZRCjS81g" target="_dZHxg-iaEd6gMtZRCjS81g"/>
    <edge id="_dZI_oeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dZHxhOiaEd6gMtZRCjS81g" target="_dZHxguiaEd6gMtZRCjS81g"/>
    <edge id="_dZI_oeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dZHxguiaEd6gMtZRCjS81g" target="_dZHxhOiaEd6gMtZRCjS81g"/>
    <edge id="_dZI_ouiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dZHxheiaEd6gMtZRCjS81g" target="_dZHxguiaEd6gMtZRCjS81g"/>
    <edge id="_dZI_ouiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dZHxguiaEd6gMtZRCjS81g" target="_dZHxheiaEd6gMtZRCjS81g"/>
    <edge id="_dZI_o-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dZHxh-iaEd6gMtZRCjS81g" target="_dZHxhuiaEd6gMtZRCjS81g"/>
    <edge id="_dZI_o-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dZHxhuiaEd6gMtZRCjS81g" target="_dZHxh-iaEd6gMtZRCjS81g"/>
    <edge id="_dZI_pOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dZHxiOiaEd6gMtZRCjS81g" target="_dZHxhuiaEd6gMtZRCjS81g"/>
    <edge id="_dZI_pOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dZHxhuiaEd6gMtZRCjS81g" target="_dZHxiOiaEd6gMtZRCjS81g"/>
    <edge id="_dZI_peiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dZHxieiaEd6gMtZRCjS81g" target="_dZHxhuiaEd6gMtZRCjS81g"/>
    <edge id="_dZI_peiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dZHxhuiaEd6gMtZRCjS81g" target="_dZHxieiaEd6gMtZRCjS81g"/>
    <edge id="_dZI_puiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dZHxiuiaEd6gMtZRCjS81g" target="_dZHxguiaEd6gMtZRCjS81g"/>
    <edge id="_dZI_puiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dZHxguiaEd6gMtZRCjS81g" target="_dZHxiuiaEd6gMtZRCjS81g"/>
    <edge id="_dZI_p-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dZHxi-iaEd6gMtZRCjS81g" target="_dZHxguiaEd6gMtZRCjS81g"/>
    <edge id="_dZI_p-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dZHxguiaEd6gMtZRCjS81g" target="_dZHxi-iaEd6gMtZRCjS81g"/>
    <edge id="_dZI_qOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dZHxjOiaEd6gMtZRCjS81g" target="_dZHxguiaEd6gMtZRCjS81g"/>
    <edge id="_dZI_qOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dZHxguiaEd6gMtZRCjS81g" target="_dZHxjOiaEd6gMtZRCjS81g"/>
    <edge id="_dZI_qeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dZHxjeiaEd6gMtZRCjS81g" target="_dZHxguiaEd6gMtZRCjS81g"/>
    <edge id="_dZI_qeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dZHxguiaEd6gMtZRCjS81g" target="_dZHxjeiaEd6gMtZRCjS81g"/>
    <edge id="_dZJmsOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dZHxjuiaEd6gMtZRCjS81g" target="_dZHxguiaEd6gMtZRCjS81g"/>
    <edge id="_dZJmsOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dZHxguiaEd6gMtZRCjS81g" target="_dZHxjuiaEd6gMtZRCjS81g"/>
    <edge id="_dZJmseiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dZHxj-iaEd6gMtZRCjS81g" target="_dZHxguiaEd6gMtZRCjS81g"/>
    <edge id="_dZJmseiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dZHxguiaEd6gMtZRCjS81g" target="_dZHxj-iaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
