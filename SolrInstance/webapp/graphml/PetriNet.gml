<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_fvGxcOiaEd6gMtZRCjS81g" projectName="PetriNet">
    <node className="Element" id="_fvGxc-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="PetriNet" id="_fvGxdOiaEd6gMtZRCjS81g"/>
    <node className="Place" id="_fvGxdeiaEd6gMtZRCjS81g"/>
    <node className="Transition" id="_fvGxduiaEd6gMtZRCjS81g"/>
    <node className="Arc" id="_fvGxd-iaEd6gMtZRCjS81g">
      <attribute>weight</attribute>
    </node>
    <node className="PlaceToTransArc" id="_fvGxeOiaEd6gMtZRCjS81g"/>
    <node className="TransToPlaceArc" id="_fvGxeeiaEd6gMtZRCjS81g"/>
    <edge id="_fvGxfOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fvGxdOiaEd6gMtZRCjS81g" target="_fvGxdeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">places</attribute>
    </edge>
    <edge id="_fvGxfOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fvGxdeiaEd6gMtZRCjS81g" target="_fvGxdOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fvGxf-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fvGxdOiaEd6gMtZRCjS81g" target="_fvGxduiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">transitions</attribute>
    </edge>
    <edge id="_fvGxf-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fvGxduiaEd6gMtZRCjS81g" target="_fvGxdOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fvHYgeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fvGxdOiaEd6gMtZRCjS81g" target="_fvGxd-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">arcs</attribute>
    </edge>
    <edge id="_fvHYgeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fvGxd-iaEd6gMtZRCjS81g" target="_fvGxdOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fvHYhOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fvGxdeiaEd6gMtZRCjS81g" target="_fvGxeeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">incoming</attribute>
    </edge>
    <edge id="_fvHYhOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fvGxeeiaEd6gMtZRCjS81g" target="_fvGxdeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fvHYh-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fvGxdeiaEd6gMtZRCjS81g" target="_fvGxeOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">outgoing</attribute>
    </edge>
    <edge id="_fvHYh-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fvGxeOiaEd6gMtZRCjS81g" target="_fvGxdeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fvHYiuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fvGxduiaEd6gMtZRCjS81g" target="_fvGxeOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">incoming</attribute>
    </edge>
    <edge id="_fvHYiuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fvGxeOiaEd6gMtZRCjS81g" target="_fvGxduiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fvHYjeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fvGxduiaEd6gMtZRCjS81g" target="_fvGxeeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">outgoing</attribute>
    </edge>
    <edge id="_fvHYjeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fvGxeeiaEd6gMtZRCjS81g" target="_fvGxduiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fvHYkuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fvGxdOiaEd6gMtZRCjS81g" target="_fvGxc-iaEd6gMtZRCjS81g"/>
    <edge id="_fvHYkuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fvGxc-iaEd6gMtZRCjS81g" target="_fvGxdOiaEd6gMtZRCjS81g"/>
    <edge id="_fvHYk-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fvGxdeiaEd6gMtZRCjS81g" target="_fvGxc-iaEd6gMtZRCjS81g"/>
    <edge id="_fvHYk-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fvGxc-iaEd6gMtZRCjS81g" target="_fvGxdeiaEd6gMtZRCjS81g"/>
    <edge id="_fvHYlOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fvGxduiaEd6gMtZRCjS81g" target="_fvGxc-iaEd6gMtZRCjS81g"/>
    <edge id="_fvHYlOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fvGxc-iaEd6gMtZRCjS81g" target="_fvGxduiaEd6gMtZRCjS81g"/>
    <edge id="_fvH_kOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fvGxeOiaEd6gMtZRCjS81g" target="_fvGxd-iaEd6gMtZRCjS81g"/>
    <edge id="_fvH_kOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fvGxd-iaEd6gMtZRCjS81g" target="_fvGxeOiaEd6gMtZRCjS81g"/>
    <edge id="_fvH_keiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fvGxeeiaEd6gMtZRCjS81g" target="_fvGxd-iaEd6gMtZRCjS81g"/>
    <edge id="_fvH_keiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fvGxd-iaEd6gMtZRCjS81g" target="_fvGxeeiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
