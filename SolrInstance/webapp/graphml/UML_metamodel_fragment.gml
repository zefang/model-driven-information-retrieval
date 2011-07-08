<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_gol-MOiaEd6gMtZRCjS81g" projectName="UMLMetamodelFragment">
    <node className="Class" id="_gol-M-iaEd6gMtZRCjS81g"/>
    <node className="Generalization" id="_gol-NOiaEd6gMtZRCjS81g"/>
    <node className="Dependency" id="_gol-NeiaEd6gMtZRCjS81g"/>
    <node className="Stereotype" id="_gol-NuiaEd6gMtZRCjS81g">
      <attribute>baseClass</attribute>
    </node>
    <node className="StateMachine" id="_gol-N-iaEd6gMtZRCjS81g"/>
    <node className="State" id="_gol-OOiaEd6gMtZRCjS81g"/>
    <node className="CompositeState" id="_gol-OeiaEd6gMtZRCjS81g"/>
    <node className="SimpleState" id="_gol-OuiaEd6gMtZRCjS81g"/>
    <node className="FinalState" id="_gol-O-iaEd6gMtZRCjS81g"/>
    <node className="StateVertex" id="_gol-POiaEd6gMtZRCjS81g"/>
    <node className="PseudoState" id="_gol-PeiaEd6gMtZRCjS81g"/>
    <node className="Transition" id="_gol-PuiaEd6gMtZRCjS81g"/>
    <node className="Event" id="_gol-P-iaEd6gMtZRCjS81g"/>
    <edge id="_gol-U-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gol-N-iaEd6gMtZRCjS81g" target="_gol-OOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">top</attribute>
    </edge>
    <edge id="_gol-U-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gol-OOiaEd6gMtZRCjS81g" target="_gol-N-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gomlQOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gol-OOiaEd6gMtZRCjS81g" target="_gol-PuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">internal</attribute>
    </edge>
    <edge id="_gomlQOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gol-PuiaEd6gMtZRCjS81g" target="_gol-OOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gomlQ-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gol-OeiaEd6gMtZRCjS81g" target="_gol-POiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">subvertex</attribute>
    </edge>
    <edge id="_gomlQ-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gol-POiaEd6gMtZRCjS81g" target="_gol-OeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gol-QeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gol-M-iaEd6gMtZRCjS81g" target="_gol-NOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">parent</attribute>
    </edge>
    <edge id="_gol-QeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gol-NOiaEd6gMtZRCjS81g" target="_gol-M-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gol-ROiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gol-M-iaEd6gMtZRCjS81g" target="_gol-NOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">child</attribute>
    </edge>
    <edge id="_gol-ROiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gol-NOiaEd6gMtZRCjS81g" target="_gol-M-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gol-R-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gol-M-iaEd6gMtZRCjS81g" target="_gol-NeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">dependency</attribute>
    </edge>
    <edge id="_gol-R-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gol-NeiaEd6gMtZRCjS81g" target="_gol-M-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gol-SuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gol-NeiaEd6gMtZRCjS81g" target="_gol-N-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">supplier</attribute>
    </edge>
    <edge id="_gol-SuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gol-N-iaEd6gMtZRCjS81g" target="_gol-NeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gol-TeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gol-NeiaEd6gMtZRCjS81g" target="_gol-NuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">stereotype</attribute>
    </edge>
    <edge id="_gol-TeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gol-NuiaEd6gMtZRCjS81g" target="_gol-NeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gol-UOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gol-N-iaEd6gMtZRCjS81g" target="_gol-M-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">context</attribute>
    </edge>
    <edge id="_gol-UOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gol-M-iaEd6gMtZRCjS81g" target="_gol-N-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gomlRuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gol-PuiaEd6gMtZRCjS81g" target="_gol-P-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">trigger</attribute>
    </edge>
    <edge id="_gomlRuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gol-P-iaEd6gMtZRCjS81g" target="_gol-PuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gomlSeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gol-PuiaEd6gMtZRCjS81g" target="_gol-POiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">source</attribute>
    </edge>
    <edge id="_gomlSeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gol-POiaEd6gMtZRCjS81g" target="_gol-PuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gomlTOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gol-PuiaEd6gMtZRCjS81g" target="_gol-POiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">target</attribute>
    </edge>
    <edge id="_gomlTOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gol-POiaEd6gMtZRCjS81g" target="_gol-PuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gonMUOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gol-OOiaEd6gMtZRCjS81g" target="_gol-POiaEd6gMtZRCjS81g"/>
    <edge id="_gonMUOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gol-POiaEd6gMtZRCjS81g" target="_gol-OOiaEd6gMtZRCjS81g"/>
    <edge id="_gonMUeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gol-OeiaEd6gMtZRCjS81g" target="_gol-OOiaEd6gMtZRCjS81g"/>
    <edge id="_gonMUeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gol-OOiaEd6gMtZRCjS81g" target="_gol-OeiaEd6gMtZRCjS81g"/>
    <edge id="_gonMUuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gol-OuiaEd6gMtZRCjS81g" target="_gol-OOiaEd6gMtZRCjS81g"/>
    <edge id="_gonMUuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gol-OOiaEd6gMtZRCjS81g" target="_gol-OuiaEd6gMtZRCjS81g"/>
    <edge id="_gonMU-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gol-O-iaEd6gMtZRCjS81g" target="_gol-OOiaEd6gMtZRCjS81g"/>
    <edge id="_gonMU-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gol-OOiaEd6gMtZRCjS81g" target="_gol-O-iaEd6gMtZRCjS81g"/>
    <edge id="_gonMVOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gol-PeiaEd6gMtZRCjS81g" target="_gol-POiaEd6gMtZRCjS81g"/>
    <edge id="_gonMVOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gol-POiaEd6gMtZRCjS81g" target="_gol-PeiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
