<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_eQYJoOiaEd6gMtZRCjS81g" projectName="PetriNet">
    <node className="Place" id="_eQYJouiaEd6gMtZRCjS81g"/>
    <node className="Transition" id="_eQYJo-iaEd6gMtZRCjS81g"/>
    <node className="Net" id="_eQYJpOiaEd6gMtZRCjS81g"/>
    <node className="Arc" id="_eQYJpeiaEd6gMtZRCjS81g"/>
    <node className="PTArc" id="_eQYJpuiaEd6gMtZRCjS81g"/>
    <node className="TPArc" id="_eQYJp-iaEd6gMtZRCjS81g"/>
    <edge id="_eQYwuuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eQYJpOiaEd6gMtZRCjS81g" target="_eQYJouiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">place</attribute>
    </edge>
    <edge id="_eQYwuuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eQYJouiaEd6gMtZRCjS81g" target="_eQYJpOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eQYwveiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eQYJpOiaEd6gMtZRCjS81g" target="_eQYJo-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">transition</attribute>
    </edge>
    <edge id="_eQYwveiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eQYJo-iaEd6gMtZRCjS81g" target="_eQYJpOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eQYJqOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eQYJouiaEd6gMtZRCjS81g" target="_eQYJpuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">out</attribute>
    </edge>
    <edge id="_eQYJqOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eQYJpuiaEd6gMtZRCjS81g" target="_eQYJouiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eQYwseiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eQYJouiaEd6gMtZRCjS81g" target="_eQYJp-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">in</attribute>
    </edge>
    <edge id="_eQYwseiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eQYJp-iaEd6gMtZRCjS81g" target="_eQYJouiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eQYwtOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eQYJo-iaEd6gMtZRCjS81g" target="_eQYJpuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">in</attribute>
    </edge>
    <edge id="_eQYwtOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eQYJpuiaEd6gMtZRCjS81g" target="_eQYJo-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eQYwt-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eQYJo-iaEd6gMtZRCjS81g" target="_eQYJp-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">out</attribute>
    </edge>
    <edge id="_eQYwt-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eQYJp-iaEd6gMtZRCjS81g" target="_eQYJo-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eQYwwOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eQYJpuiaEd6gMtZRCjS81g" target="_eQYJpeiaEd6gMtZRCjS81g"/>
    <edge id="_eQYwwOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eQYJpeiaEd6gMtZRCjS81g" target="_eQYJpuiaEd6gMtZRCjS81g"/>
    <edge id="_eQYwweiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eQYJp-iaEd6gMtZRCjS81g" target="_eQYJpeiaEd6gMtZRCjS81g"/>
    <edge id="_eQYwweiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eQYJpeiaEd6gMtZRCjS81g" target="_eQYJp-iaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
