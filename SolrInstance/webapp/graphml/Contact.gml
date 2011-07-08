<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_d58moOiaEd6gMtZRCjS81g" projectName="Contact">
    <node className="Contact" id="_d58mo-iaEd6gMtZRCjS81g">
      <attribute>nom</attribute>
      <attribute>prenom</attribute>
    </node>
    <node className="Num_fixe" id="_d58mpOiaEd6gMtZRCjS81g">
      <attribute>numero</attribute>
    </node>
    <node className="Num_portable" id="_d58mpeiaEd6gMtZRCjS81g">
      <attribute>numero</attribute>
    </node>
    <edge id="_d58mquiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_d58mo-iaEd6gMtZRCjS81g" target="_d58mpOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">num_fixes</attribute>
    </edge>
    <edge id="_d58mquiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_d58mpOiaEd6gMtZRCjS81g" target="_d58mo-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d58mreiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_d58mo-iaEd6gMtZRCjS81g" target="_d58mpeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">num_portables</attribute>
    </edge>
    <edge id="_d58mreiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_d58mpeiaEd6gMtZRCjS81g" target="_d58mo-iaEd6gMtZRCjS81g" upperValue="1"/>
  </graph>
</graphml>
