<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_eRb5kOiaEd6gMtZRCjS81g" projectName="PetriNet">
    <node className="Place" id="_eRb5k-iaEd6gMtZRCjS81g"/>
    <node className="Transition" id="_eRb5lOiaEd6gMtZRCjS81g"/>
    <node className="Net" id="_eRb5leiaEd6gMtZRCjS81g"/>
    <node className="Arc" id="_eRb5luiaEd6gMtZRCjS81g">
      <attribute>weight</attribute>
    </node>
    <node className="PTArc" id="_eRb5l-iaEd6gMtZRCjS81g"/>
    <node className="TPArc" id="_eRb5mOiaEd6gMtZRCjS81g"/>
    <node className="Token" id="_eRb5meiaEd6gMtZRCjS81g"/>
    <edge id="_eRb5oeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eRb5k-iaEd6gMtZRCjS81g" target="_eRb5meiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">token</attribute>
    </edge>
    <edge id="_eRb5oeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eRb5meiaEd6gMtZRCjS81g" target="_eRb5k-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eRb5quiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eRb5leiaEd6gMtZRCjS81g" target="_eRb5k-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">place</attribute>
    </edge>
    <edge id="_eRb5quiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eRb5k-iaEd6gMtZRCjS81g" target="_eRb5leiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eRb5reiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eRb5leiaEd6gMtZRCjS81g" target="_eRb5lOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">transition</attribute>
    </edge>
    <edge id="_eRb5reiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eRb5lOiaEd6gMtZRCjS81g" target="_eRb5leiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eRb5m-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eRb5k-iaEd6gMtZRCjS81g" target="_eRb5l-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">out</attribute>
    </edge>
    <edge id="_eRb5m-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eRb5l-iaEd6gMtZRCjS81g" target="_eRb5k-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eRb5nuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eRb5k-iaEd6gMtZRCjS81g" target="_eRb5mOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">in</attribute>
    </edge>
    <edge id="_eRb5nuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eRb5mOiaEd6gMtZRCjS81g" target="_eRb5k-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eRb5pOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eRb5lOiaEd6gMtZRCjS81g" target="_eRb5l-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">in</attribute>
    </edge>
    <edge id="_eRb5pOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eRb5l-iaEd6gMtZRCjS81g" target="_eRb5lOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eRb5p-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eRb5lOiaEd6gMtZRCjS81g" target="_eRb5mOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">out</attribute>
    </edge>
    <edge id="_eRb5p-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eRb5mOiaEd6gMtZRCjS81g" target="_eRb5lOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eRcgoOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eRb5l-iaEd6gMtZRCjS81g" target="_eRb5luiaEd6gMtZRCjS81g"/>
    <edge id="_eRcgoOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eRb5luiaEd6gMtZRCjS81g" target="_eRb5l-iaEd6gMtZRCjS81g"/>
    <edge id="_eRcgoeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eRb5mOiaEd6gMtZRCjS81g" target="_eRb5luiaEd6gMtZRCjS81g"/>
    <edge id="_eRcgoeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eRb5luiaEd6gMtZRCjS81g" target="_eRb5mOiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
