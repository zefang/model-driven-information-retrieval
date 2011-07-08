<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_guqxAOiaEd6gMtZRCjS81g" projectName="CompleteWebApplication">
    <node className="ClientPage" id="_guqxBeiaEd6gMtZRCjS81g"/>
    <node className="ClientPageModule" id="_guqxBuiaEd6gMtZRCjS81g"/>
    <node className="LogicInterface" id="_guqxB-iaEd6gMtZRCjS81g"/>
    <node className="DesignElement" id="_guqxCOiaEd6gMtZRCjS81g"/>
    <node className="HyperLink" id="_guqxCeiaEd6gMtZRCjS81g"/>
    <node className="ServerPage" id="_guqxCuiaEd6gMtZRCjS81g"/>
    <node className="ServerPageModule" id="_guqxC-iaEd6gMtZRCjS81g"/>
    <node className="DesignModule" id="_guqxDOiaEd6gMtZRCjS81g"/>
    <node className="LogicModule" id="_guqxDeiaEd6gMtZRCjS81g"/>
    <node className="Link" id="_guqxDuiaEd6gMtZRCjS81g"/>
    <node className="BeginUseCase" id="_guqxD-iaEd6gMtZRCjS81g"/>
    <node className="UseCase" id="_guqxEOiaEd6gMtZRCjS81g"/>
    <node className="LogicElement" id="_guqxEeiaEd6gMtZRCjS81g"/>
    <node className="Alternative" id="_guqxEuiaEd6gMtZRCjS81g"/>
    <node className="UserDecision" id="_guqxE-iaEd6gMtZRCjS81g"/>
    <node className="ServerDecision" id="_guqxFOiaEd6gMtZRCjS81g"/>
    <node className="Processor" id="_gurYEOiaEd6gMtZRCjS81g"/>
    <node className="Renderer" id="_gurYEeiaEd6gMtZRCjS81g"/>
    <node className="Data" id="_gurYEuiaEd6gMtZRCjS81g"/>
    <edge id="_gurYFuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_guqxBuiaEd6gMtZRCjS81g" target="_guqxBeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">consistsOf</attribute>
    </edge>
    <edge id="_gurYFuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_guqxBeiaEd6gMtZRCjS81g" target="_guqxBuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gurYK-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_guqxCuiaEd6gMtZRCjS81g" target="_guqxC-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">module</attribute>
    </edge>
    <edge id="_gurYK-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_guqxC-iaEd6gMtZRCjS81g" target="_guqxCuiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gurYMeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_guqxC-iaEd6gMtZRCjS81g" target="_guqxDOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">containsModule</attribute>
    </edge>
    <edge id="_gurYMeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_guqxDOiaEd6gMtZRCjS81g" target="_guqxC-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gurYNOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_guqxDeiaEd6gMtZRCjS81g" target="_guqxEOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">useCase</attribute>
    </edge>
    <edge id="_gurYNOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_guqxEOiaEd6gMtZRCjS81g" target="_guqxDeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gurYN-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_guqxDeiaEd6gMtZRCjS81g" target="_guqxEeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">logicElement</attribute>
    </edge>
    <edge id="_gurYN-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_guqxEeiaEd6gMtZRCjS81g" target="_guqxDeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gur_IeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_guqxEOiaEd6gMtZRCjS81g" target="_guqxEeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">logicElem</attribute>
    </edge>
    <edge id="_gur_IeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_guqxEeiaEd6gMtZRCjS81g" target="_guqxEOiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gur_J-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_guqxE-iaEd6gMtZRCjS81g" target="_guqxEuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">allows</attribute>
    </edge>
    <edge id="_gur_J-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_guqxEuiaEd6gMtZRCjS81g" target="_guqxE-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gurYE-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_guqxBeiaEd6gMtZRCjS81g" target="_guqxCeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">hyperlink</attribute>
    </edge>
    <edge id="_gurYE-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_guqxCeiaEd6gMtZRCjS81g" target="_guqxBeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gurYGeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_guqxBuiaEd6gMtZRCjS81g" target="_guqxC-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">representsSMP</attribute>
    </edge>
    <edge id="_gurYGeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_guqxC-iaEd6gMtZRCjS81g" target="_guqxBuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gurYHOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_guqxB-iaEd6gMtZRCjS81g" target="_guqxDeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">represents</attribute>
    </edge>
    <edge id="_gurYHOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_guqxDeiaEd6gMtZRCjS81g" target="_guqxB-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gurYH-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_guqxB-iaEd6gMtZRCjS81g" target="_gurYEeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">generatedBy</attribute>
    </edge>
    <edge id="_gurYH-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gurYEeiaEd6gMtZRCjS81g" target="_guqxB-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gurYIuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_guqxCOiaEd6gMtZRCjS81g" target="_guqxDOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">represents</attribute>
    </edge>
    <edge id="_gurYIuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_guqxDOiaEd6gMtZRCjS81g" target="_guqxCOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gurYJeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_guqxCeiaEd6gMtZRCjS81g" target="_guqxCuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">server</attribute>
    </edge>
    <edge id="_gurYJeiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_guqxCuiaEd6gMtZRCjS81g" target="_guqxCeiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gurYKOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_guqxCuiaEd6gMtZRCjS81g" target="_guqxBeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">generates</attribute>
    </edge>
    <edge id="_gurYKOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_guqxBeiaEd6gMtZRCjS81g" target="_guqxCuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gurYLuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_guqxC-iaEd6gMtZRCjS81g" target="_guqxDuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">link</attribute>
    </edge>
    <edge id="_gurYLuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_guqxDuiaEd6gMtZRCjS81g" target="_guqxC-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gurYOuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_guqxDuiaEd6gMtZRCjS81g" target="_guqxCuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">page</attribute>
    </edge>
    <edge id="_gurYOuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_guqxCuiaEd6gMtZRCjS81g" target="_guqxDuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gurYPeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_guqxDuiaEd6gMtZRCjS81g" target="_gurYEuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">posts</attribute>
    </edge>
    <edge id="_gurYPeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gurYEuiaEd6gMtZRCjS81g" target="_guqxDuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gurYQOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_guqxD-iaEd6gMtZRCjS81g" target="_guqxEOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">useCase</attribute>
    </edge>
    <edge id="_gurYQOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_guqxEOiaEd6gMtZRCjS81g" target="_guqxD-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gur_JOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_guqxEeiaEd6gMtZRCjS81g" target="_guqxEeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">generatedBy</attribute>
    </edge>
    <edge id="_gur_JOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_guqxEeiaEd6gMtZRCjS81g" target="_guqxEeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gur_KuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_guqxFOiaEd6gMtZRCjS81g" target="_gurYEOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">evaluatesResultOf</attribute>
    </edge>
    <edge id="_gur_KuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gurYEOiaEd6gMtZRCjS81g" target="_guqxFOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gur_LeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gurYEOiaEd6gMtZRCjS81g" target="_gurYEuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">persistentData</attribute>
    </edge>
    <edge id="_gur_LeiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gurYEuiaEd6gMtZRCjS81g" target="_gurYEOiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gur_MOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gurYEOiaEd6gMtZRCjS81g" target="_gurYEuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">inputData</attribute>
    </edge>
    <edge id="_gur_MOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gurYEuiaEd6gMtZRCjS81g" target="_gurYEOiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gur_M-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gurYEOiaEd6gMtZRCjS81g" target="_gurYEuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">outputData</attribute>
    </edge>
    <edge id="_gur_M-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gurYEuiaEd6gMtZRCjS81g" target="_gurYEOiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gur_NuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gurYEeiaEd6gMtZRCjS81g" target="_gurYEuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">renders</attribute>
    </edge>
    <edge id="_gur_NuiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gurYEuiaEd6gMtZRCjS81g" target="_gurYEeiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gusmMOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_guqxB-iaEd6gMtZRCjS81g" target="_guqxBuiaEd6gMtZRCjS81g"/>
    <edge id="_gusmMOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_guqxBuiaEd6gMtZRCjS81g" target="_guqxB-iaEd6gMtZRCjS81g"/>
    <edge id="_gusmMeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_guqxCOiaEd6gMtZRCjS81g" target="_guqxBuiaEd6gMtZRCjS81g"/>
    <edge id="_gusmMeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_guqxBuiaEd6gMtZRCjS81g" target="_guqxCOiaEd6gMtZRCjS81g"/>
    <edge id="_gusmMuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_guqxDOiaEd6gMtZRCjS81g" target="_guqxC-iaEd6gMtZRCjS81g"/>
    <edge id="_gusmMuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_guqxC-iaEd6gMtZRCjS81g" target="_guqxDOiaEd6gMtZRCjS81g"/>
    <edge id="_gusmM-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_guqxDeiaEd6gMtZRCjS81g" target="_guqxC-iaEd6gMtZRCjS81g"/>
    <edge id="_gusmM-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_guqxC-iaEd6gMtZRCjS81g" target="_guqxDeiaEd6gMtZRCjS81g"/>
    <edge id="_gutNQOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_guqxD-iaEd6gMtZRCjS81g" target="_guqxDuiaEd6gMtZRCjS81g"/>
    <edge id="_gutNQOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_guqxDuiaEd6gMtZRCjS81g" target="_guqxD-iaEd6gMtZRCjS81g"/>
    <edge id="_gutNQeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_guqxEOiaEd6gMtZRCjS81g" target="_guqxDuiaEd6gMtZRCjS81g"/>
    <edge id="_gutNQeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_guqxDuiaEd6gMtZRCjS81g" target="_guqxEOiaEd6gMtZRCjS81g"/>
    <edge id="_gutNQuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_guqxEuiaEd6gMtZRCjS81g" target="_guqxEeiaEd6gMtZRCjS81g"/>
    <edge id="_gutNQuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_guqxEeiaEd6gMtZRCjS81g" target="_guqxEuiaEd6gMtZRCjS81g"/>
    <edge id="_gutNQ-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_guqxE-iaEd6gMtZRCjS81g" target="_guqxEeiaEd6gMtZRCjS81g"/>
    <edge id="_gutNQ-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_guqxEeiaEd6gMtZRCjS81g" target="_guqxE-iaEd6gMtZRCjS81g"/>
    <edge id="_gutNROiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_guqxFOiaEd6gMtZRCjS81g" target="_guqxEeiaEd6gMtZRCjS81g"/>
    <edge id="_gutNROiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_guqxEeiaEd6gMtZRCjS81g" target="_guqxFOiaEd6gMtZRCjS81g"/>
    <edge id="_gutNReiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gurYEOiaEd6gMtZRCjS81g" target="_guqxEeiaEd6gMtZRCjS81g"/>
    <edge id="_gutNReiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_guqxEeiaEd6gMtZRCjS81g" target="_gurYEOiaEd6gMtZRCjS81g"/>
    <edge id="_gutNRuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gurYEeiaEd6gMtZRCjS81g" target="_guqxEeiaEd6gMtZRCjS81g"/>
    <edge id="_gutNRuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_guqxEeiaEd6gMtZRCjS81g" target="_gurYEeiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
