<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_fvqyIOiaEd6gMtZRCjS81g" projectName="PetriNet">
    <node className="LocatedElement" id="_fvqyI-iaEd6gMtZRCjS81g">
      <attribute>location</attribute>
    </node>
    <node className="NamedElement" id="_fvqyJOiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="PetriNet" id="_fvqyJeiaEd6gMtZRCjS81g"/>
    <node className="Element" id="_fvqyJuiaEd6gMtZRCjS81g"/>
    <node className="Place" id="_fvqyJ-iaEd6gMtZRCjS81g"/>
    <node className="Transition" id="_fvqyKOiaEd6gMtZRCjS81g"/>
    <node className="Arc" id="_fvqyKeiaEd6gMtZRCjS81g">
      <attribute>weight</attribute>
    </node>
    <node className="PlaceToTransition" id="_fvqyKuiaEd6gMtZRCjS81g"/>
    <node className="TransitionToPlace" id="_fvqyK-iaEd6gMtZRCjS81g"/>
    <node className="Execution" id="_fvqyLOiaEd6gMtZRCjS81g"/>
    <node className="Token" id="_fvqyLeiaEd6gMtZRCjS81g"/>
    <node className="Marking" id="_fvqyLuiaEd6gMtZRCjS81g"/>
    <node className="Movement" id="_fvqyL-iaEd6gMtZRCjS81g"/>
    <edge id="_fvrZM-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fvqyJeiaEd6gMtZRCjS81g" target="_fvqyJuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">elements</attribute>
    </edge>
    <edge id="_fvrZM-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fvqyJuiaEd6gMtZRCjS81g" target="_fvqyJeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fvrZNuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fvqyJeiaEd6gMtZRCjS81g" target="_fvqyKeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">arcs</attribute>
    </edge>
    <edge id="_fvrZNuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fvqyKeiaEd6gMtZRCjS81g" target="_fvqyJeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fvrZSOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fvqyLOiaEd6gMtZRCjS81g" target="_fvqyLuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">markings</attribute>
    </edge>
    <edge id="_fvrZSOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fvqyLuiaEd6gMtZRCjS81g" target="_fvqyLOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fvrZS-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fvqyLOiaEd6gMtZRCjS81g" target="_fvqyL-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">movements</attribute>
    </edge>
    <edge id="_fvrZS-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fvqyL-iaEd6gMtZRCjS81g" target="_fvqyLOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fvrZUeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fvqyLuiaEd6gMtZRCjS81g" target="_fvqyLeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">tokens</attribute>
    </edge>
    <edge id="_fvrZUeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fvqyLeiaEd6gMtZRCjS81g" target="_fvqyLuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fvrZOeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fvqyJeiaEd6gMtZRCjS81g" target="_fvqyLOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">execs</attribute>
    </edge>
    <edge id="_fvrZOeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fvqyLOiaEd6gMtZRCjS81g" target="_fvqyJeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fvrZPOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fvqyJ-iaEd6gMtZRCjS81g" target="_fvqyK-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">incomingArc</attribute>
    </edge>
    <edge id="_fvrZPOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fvqyK-iaEd6gMtZRCjS81g" target="_fvqyJ-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fvrZP-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fvqyJ-iaEd6gMtZRCjS81g" target="_fvqyKuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">outgoingArc</attribute>
    </edge>
    <edge id="_fvrZP-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fvqyKuiaEd6gMtZRCjS81g" target="_fvqyJ-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fvrZQuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fvqyKOiaEd6gMtZRCjS81g" target="_fvqyKuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">incomingArc</attribute>
    </edge>
    <edge id="_fvrZQuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fvqyKuiaEd6gMtZRCjS81g" target="_fvqyKOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fvrZReiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fvqyKOiaEd6gMtZRCjS81g" target="_fvqyK-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">outgoingArc</attribute>
    </edge>
    <edge id="_fvrZReiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fvqyK-iaEd6gMtZRCjS81g" target="_fvqyKOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fvrZTuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fvqyLeiaEd6gMtZRCjS81g" target="_fvqyJ-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">placedAt</attribute>
    </edge>
    <edge id="_fvrZTuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fvqyJ-iaEd6gMtZRCjS81g" target="_fvqyLeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fvrZVOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fvqyL-iaEd6gMtZRCjS81g" target="_fvqyKOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">fire</attribute>
    </edge>
    <edge id="_fvrZVOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fvqyKOiaEd6gMtZRCjS81g" target="_fvqyL-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fvrZV-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fvqyL-iaEd6gMtZRCjS81g" target="_fvqyLuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">source</attribute>
    </edge>
    <edge id="_fvrZV-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fvqyLuiaEd6gMtZRCjS81g" target="_fvqyL-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fvrZWuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fvqyL-iaEd6gMtZRCjS81g" target="_fvqyLuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">target</attribute>
    </edge>
    <edge id="_fvrZWuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fvqyLuiaEd6gMtZRCjS81g" target="_fvqyL-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fvsAQOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fvqyJOiaEd6gMtZRCjS81g" target="_fvqyI-iaEd6gMtZRCjS81g"/>
    <edge id="_fvsAQOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fvqyI-iaEd6gMtZRCjS81g" target="_fvqyJOiaEd6gMtZRCjS81g"/>
    <edge id="_fvsAQeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fvqyJeiaEd6gMtZRCjS81g" target="_fvqyJOiaEd6gMtZRCjS81g"/>
    <edge id="_fvsAQeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fvqyJOiaEd6gMtZRCjS81g" target="_fvqyJeiaEd6gMtZRCjS81g"/>
    <edge id="_fvsAQuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fvqyJuiaEd6gMtZRCjS81g" target="_fvqyJOiaEd6gMtZRCjS81g"/>
    <edge id="_fvsAQuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fvqyJOiaEd6gMtZRCjS81g" target="_fvqyJuiaEd6gMtZRCjS81g"/>
    <edge id="_fvsAQ-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fvqyJ-iaEd6gMtZRCjS81g" target="_fvqyJuiaEd6gMtZRCjS81g"/>
    <edge id="_fvsAQ-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fvqyJuiaEd6gMtZRCjS81g" target="_fvqyJ-iaEd6gMtZRCjS81g"/>
    <edge id="_fvsAROiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fvqyKOiaEd6gMtZRCjS81g" target="_fvqyJuiaEd6gMtZRCjS81g"/>
    <edge id="_fvsAROiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fvqyJuiaEd6gMtZRCjS81g" target="_fvqyKOiaEd6gMtZRCjS81g"/>
    <edge id="_fvsAReiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fvqyKeiaEd6gMtZRCjS81g" target="_fvqyJOiaEd6gMtZRCjS81g"/>
    <edge id="_fvsAReiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fvqyJOiaEd6gMtZRCjS81g" target="_fvqyKeiaEd6gMtZRCjS81g"/>
    <edge id="_fvsARuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fvqyKuiaEd6gMtZRCjS81g" target="_fvqyKeiaEd6gMtZRCjS81g"/>
    <edge id="_fvsARuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fvqyKeiaEd6gMtZRCjS81g" target="_fvqyKuiaEd6gMtZRCjS81g"/>
    <edge id="_fvsAR-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fvqyK-iaEd6gMtZRCjS81g" target="_fvqyKeiaEd6gMtZRCjS81g"/>
    <edge id="_fvsAR-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fvqyKeiaEd6gMtZRCjS81g" target="_fvqyK-iaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
