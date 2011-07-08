<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_gkx1MOiaEd6gMtZRCjS81g" projectName="Core">
    <node className="Element" id="_gkx1NuiaEd6gMtZRCjS81g"/>
    <node className="ModelElement" id="_gkx1N-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>visibility</attribute>
      <attribute>isSpecification</attribute>
    </node>
    <node className="GeneralizableElement" id="_gkx1OOiaEd6gMtZRCjS81g">
      <attribute>isRoot</attribute>
      <attribute>isLeaf</attribute>
      <attribute>isAbstract</attribute>
    </node>
    <node className="Namespace" id="_gkx1OeiaEd6gMtZRCjS81g"/>
    <node className="Classifier" id="_gkx1OuiaEd6gMtZRCjS81g"/>
    <node className="Feature" id="_gkx1O-iaEd6gMtZRCjS81g">
      <attribute>ownerScope</attribute>
    </node>
    <node className="StructuralFeature" id="_gkycQOiaEd6gMtZRCjS81g">
      <attribute>multiplicity</attribute>
      <attribute>changeability</attribute>
      <attribute>targetScope</attribute>
      <attribute>ordering</attribute>
    </node>
    <node className="AssociationEnd" id="_gkycQeiaEd6gMtZRCjS81g">
      <attribute>isNavigable</attribute>
      <attribute>ordering</attribute>
      <attribute>aggregation</attribute>
      <attribute>targetScope</attribute>
      <attribute>multiplicity</attribute>
      <attribute>changeability</attribute>
    </node>
    <node className="Relationship" id="_gkycQuiaEd6gMtZRCjS81g"/>
    <node className="Association" id="_gkycQ-iaEd6gMtZRCjS81g"/>
    <node className="Attribute" id="_gkycROiaEd6gMtZRCjS81g">
      <attribute>initialValue</attribute>
    </node>
    <node className="Generalization" id="_gkycReiaEd6gMtZRCjS81g">
      <attribute>discriminator</attribute>
    </node>
    <node className="Instance" id="_gkycRuiaEd6gMtZRCjS81g"/>
    <node className="AttributeLink" id="_gkycR-iaEd6gMtZRCjS81g"/>
    <node className="Link" id="_gkycSOiaEd6gMtZRCjS81g"/>
    <node className="LinkEnd" id="_gkycSeiaEd6gMtZRCjS81g"/>
    <node className="ComponentInstance" id="_gkycSuiaEd6gMtZRCjS81g"/>
    <node className="NodeInstance" id="_gkycS-iaEd6gMtZRCjS81g"/>
    <node className="UseCase" id="_gkycTOiaEd6gMtZRCjS81g"/>
    <node className="Actor" id="_gkycTeiaEd6gMtZRCjS81g"/>
    <node className="UseCaseInstance" id="_gkycTuiaEd6gMtZRCjS81g"/>
    <node className="Extend" id="_gkycT-iaEd6gMtZRCjS81g">
      <attribute>condition</attribute>
    </node>
    <node className="Include" id="_gkycUOiaEd6gMtZRCjS81g"/>
    <node className="ExtensionPoint" id="_gkycUeiaEd6gMtZRCjS81g">
      <attribute>location</attribute>
    </node>
    <node className="Multiplicity" id="_gkycUuiaEd6gMtZRCjS81g"/>
    <node className="MultiplicityRange" id="_gkycU-iaEd6gMtZRCjS81g">
      <attribute>lower</attribute>
      <attribute>upper</attribute>
    </node>
    <node className="Expression" id="_gkycVOiaEd6gMtZRCjS81g">
      <attribute>language</attribute>
      <attribute>body</attribute>
    </node>
    <node className="BooleanExpression" id="_gkycVeiaEd6gMtZRCjS81g"/>
    <edge id="_gkyccuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gkx1OeiaEd6gMtZRCjS81g" target="_gkx1N-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">ownedElement</attribute>
    </edge>
    <edge id="_gkyccuiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gkx1N-iaEd6gMtZRCjS81g" target="_gkx1OeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gkyceOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gkx1OuiaEd6gMtZRCjS81g" target="_gkx1O-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">feature</attribute>
    </edge>
    <edge id="_gkyceOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gkx1O-iaEd6gMtZRCjS81g" target="_gkx1OuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gkzDVOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gkycQeiaEd6gMtZRCjS81g" target="_gkycROiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">qualifier</attribute>
    </edge>
    <edge id="_gkzDVOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gkycROiaEd6gMtZRCjS81g" target="_gkycQeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gkzDV-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gkycQ-iaEd6gMtZRCjS81g" target="_gkycQeiaEd6gMtZRCjS81g">
      <attribute lowerValue="2" upperValue="*">connection</attribute>
    </edge>
    <edge id="_gkzDV-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gkycQeiaEd6gMtZRCjS81g" target="_gkycQ-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gkzDXeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gkycRuiaEd6gMtZRCjS81g" target="_gkycRuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">ownedInstance</attribute>
    </edge>
    <edge id="_gkzDXeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gkycRuiaEd6gMtZRCjS81g" target="_gkycRuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gkzDaeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gkycRuiaEd6gMtZRCjS81g" target="_gkycR-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">slot</attribute>
    </edge>
    <edge id="_gkzDaeiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gkycR-iaEd6gMtZRCjS81g" target="_gkycRuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gkzDbOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gkycRuiaEd6gMtZRCjS81g" target="_gkycSOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">ownedLink</attribute>
    </edge>
    <edge id="_gkzDbOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gkycSOiaEd6gMtZRCjS81g" target="_gkycRuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gkzDeOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gkycSOiaEd6gMtZRCjS81g" target="_gkycSeiaEd6gMtZRCjS81g">
      <attribute lowerValue="2" upperValue="*">connection</attribute>
    </edge>
    <edge id="_gkzDeOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gkycSeiaEd6gMtZRCjS81g" target="_gkycSOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gkzDe-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gkycSeiaEd6gMtZRCjS81g" target="_gkycR-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">qualifiedValue</attribute>
    </edge>
    <edge id="_gkzDe-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gkycR-iaEd6gMtZRCjS81g" target="_gkycSeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gkzqYuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gkycTOiaEd6gMtZRCjS81g" target="_gkycUeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">extensionPoint</attribute>
    </edge>
    <edge id="_gkzqYuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gkycUeiaEd6gMtZRCjS81g" target="_gkycTOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gkzqbuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gkycUuiaEd6gMtZRCjS81g" target="_gkycU-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">range</attribute>
    </edge>
    <edge id="_gkzqbuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gkycU-iaEd6gMtZRCjS81g" target="_gkycUuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gkycb-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gkx1OOiaEd6gMtZRCjS81g" target="_gkycReiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">generalization</attribute>
    </edge>
    <edge id="_gkycb-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gkycReiaEd6gMtZRCjS81g" target="_gkx1OOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gkycdeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gkx1OuiaEd6gMtZRCjS81g" target="_gkycReiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">powertypeRange</attribute>
    </edge>
    <edge id="_gkycdeiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gkycReiaEd6gMtZRCjS81g" target="_gkx1OuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gkyce-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gkycQOiaEd6gMtZRCjS81g" target="_gkx1OuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">type</attribute>
    </edge>
    <edge id="_gkyce-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gkx1OuiaEd6gMtZRCjS81g" target="_gkycQOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gkycfuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gkycQeiaEd6gMtZRCjS81g" target="_gkx1OuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">specification</attribute>
    </edge>
    <edge id="_gkycfuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gkx1OuiaEd6gMtZRCjS81g" target="_gkycQeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gkzDUeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gkycQeiaEd6gMtZRCjS81g" target="_gkx1OuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">participant</attribute>
    </edge>
    <edge id="_gkzDUeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gkx1OuiaEd6gMtZRCjS81g" target="_gkycQeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gkzDWuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gkycReiaEd6gMtZRCjS81g" target="_gkx1OOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">parent</attribute>
    </edge>
    <edge id="_gkzDWuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gkx1OOiaEd6gMtZRCjS81g" target="_gkycReiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gkzDYOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gkycRuiaEd6gMtZRCjS81g" target="_gkycSeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">linkEnd</attribute>
    </edge>
    <edge id="_gkzDYOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gkycSeiaEd6gMtZRCjS81g" target="_gkycRuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gkzDY-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gkycRuiaEd6gMtZRCjS81g" target="_gkx1OuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">classifier</attribute>
    </edge>
    <edge id="_gkzDY-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gkx1OuiaEd6gMtZRCjS81g" target="_gkycRuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gkzDZuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gkycRuiaEd6gMtZRCjS81g" target="_gkycSuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">componentInstance</attribute>
    </edge>
    <edge id="_gkzDZuiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gkycSuiaEd6gMtZRCjS81g" target="_gkycRuiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gkzDb-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gkycR-iaEd6gMtZRCjS81g" target="_gkycRuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">value</attribute>
    </edge>
    <edge id="_gkzDb-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gkycRuiaEd6gMtZRCjS81g" target="_gkycR-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gkzDcuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gkycR-iaEd6gMtZRCjS81g" target="_gkycROiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">attribute</attribute>
    </edge>
    <edge id="_gkzDcuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gkycROiaEd6gMtZRCjS81g" target="_gkycR-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gkzDdeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gkycSOiaEd6gMtZRCjS81g" target="_gkycQ-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">association</attribute>
    </edge>
    <edge id="_gkzDdeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gkycQ-iaEd6gMtZRCjS81g" target="_gkycSOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gkzDfuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gkycSeiaEd6gMtZRCjS81g" target="_gkycQeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">associationEnd</attribute>
    </edge>
    <edge id="_gkzDfuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gkycQeiaEd6gMtZRCjS81g" target="_gkycSeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gkzDgeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gkycSuiaEd6gMtZRCjS81g" target="_gkycS-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">nodeInstance</attribute>
    </edge>
    <edge id="_gkzDgeiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gkycS-iaEd6gMtZRCjS81g" target="_gkycSuiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gkzDhOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gkycTOiaEd6gMtZRCjS81g" target="_gkycUOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">include</attribute>
    </edge>
    <edge id="_gkzDhOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gkycUOiaEd6gMtZRCjS81g" target="_gkycTOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gkzDh-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gkycTOiaEd6gMtZRCjS81g" target="_gkycT-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">extend</attribute>
    </edge>
    <edge id="_gkzDh-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gkycT-iaEd6gMtZRCjS81g" target="_gkycTOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gkzqZeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gkycT-iaEd6gMtZRCjS81g" target="_gkycUeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">extensionPoint</attribute>
    </edge>
    <edge id="_gkzqZeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gkycUeiaEd6gMtZRCjS81g" target="_gkycT-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gkzqaOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gkycT-iaEd6gMtZRCjS81g" target="_gkycTOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">base</attribute>
    </edge>
    <edge id="_gkzqaOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gkycTOiaEd6gMtZRCjS81g" target="_gkycT-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gkzqa-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gkycUOiaEd6gMtZRCjS81g" target="_gkycTOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">addition</attribute>
    </edge>
    <edge id="_gkzqa-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gkycTOiaEd6gMtZRCjS81g" target="_gkycUOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gk0RcOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gkx1N-iaEd6gMtZRCjS81g" target="_gkx1NuiaEd6gMtZRCjS81g"/>
    <edge id="_gk0RcOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gkx1NuiaEd6gMtZRCjS81g" target="_gkx1N-iaEd6gMtZRCjS81g"/>
    <edge id="_gk0RceiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gkx1OOiaEd6gMtZRCjS81g" target="_gkx1N-iaEd6gMtZRCjS81g"/>
    <edge id="_gk0RceiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gkx1N-iaEd6gMtZRCjS81g" target="_gkx1OOiaEd6gMtZRCjS81g"/>
    <edge id="_gk0RcuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gkx1OeiaEd6gMtZRCjS81g" target="_gkx1N-iaEd6gMtZRCjS81g"/>
    <edge id="_gk0RcuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gkx1N-iaEd6gMtZRCjS81g" target="_gkx1OeiaEd6gMtZRCjS81g"/>
    <edge id="_gk04gOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gkx1OuiaEd6gMtZRCjS81g" target="_gkx1OOiaEd6gMtZRCjS81g"/>
    <edge id="_gk04gOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gkx1OOiaEd6gMtZRCjS81g" target="_gkx1OuiaEd6gMtZRCjS81g"/>
    <edge id="_gk04geiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gkx1OuiaEd6gMtZRCjS81g" target="_gkx1OeiaEd6gMtZRCjS81g"/>
    <edge id="_gk04geiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gkx1OeiaEd6gMtZRCjS81g" target="_gkx1OuiaEd6gMtZRCjS81g"/>
    <edge id="_gk04guiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gkx1O-iaEd6gMtZRCjS81g" target="_gkx1N-iaEd6gMtZRCjS81g"/>
    <edge id="_gk04guiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gkx1N-iaEd6gMtZRCjS81g" target="_gkx1O-iaEd6gMtZRCjS81g"/>
    <edge id="_gk04g-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gkycQOiaEd6gMtZRCjS81g" target="_gkx1O-iaEd6gMtZRCjS81g"/>
    <edge id="_gk04g-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gkx1O-iaEd6gMtZRCjS81g" target="_gkycQOiaEd6gMtZRCjS81g"/>
    <edge id="_gk04hOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gkycQeiaEd6gMtZRCjS81g" target="_gkx1N-iaEd6gMtZRCjS81g"/>
    <edge id="_gk04hOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gkx1N-iaEd6gMtZRCjS81g" target="_gkycQeiaEd6gMtZRCjS81g"/>
    <edge id="_gk04heiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gkycQuiaEd6gMtZRCjS81g" target="_gkx1N-iaEd6gMtZRCjS81g"/>
    <edge id="_gk04heiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gkx1N-iaEd6gMtZRCjS81g" target="_gkycQuiaEd6gMtZRCjS81g"/>
    <edge id="_gk04huiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gkycQ-iaEd6gMtZRCjS81g" target="_gkx1OOiaEd6gMtZRCjS81g"/>
    <edge id="_gk04huiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gkx1OOiaEd6gMtZRCjS81g" target="_gkycQ-iaEd6gMtZRCjS81g"/>
    <edge id="_gk04h-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gkycQ-iaEd6gMtZRCjS81g" target="_gkycQuiaEd6gMtZRCjS81g"/>
    <edge id="_gk04h-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gkycQuiaEd6gMtZRCjS81g" target="_gkycQ-iaEd6gMtZRCjS81g"/>
    <edge id="_gk04iOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gkycROiaEd6gMtZRCjS81g" target="_gkycQOiaEd6gMtZRCjS81g"/>
    <edge id="_gk04iOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gkycQOiaEd6gMtZRCjS81g" target="_gkycROiaEd6gMtZRCjS81g"/>
    <edge id="_gk04ieiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gkycReiaEd6gMtZRCjS81g" target="_gkycQuiaEd6gMtZRCjS81g"/>
    <edge id="_gk04ieiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gkycQuiaEd6gMtZRCjS81g" target="_gkycReiaEd6gMtZRCjS81g"/>
    <edge id="_gk04iuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gkycRuiaEd6gMtZRCjS81g" target="_gkx1N-iaEd6gMtZRCjS81g"/>
    <edge id="_gk04iuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gkx1N-iaEd6gMtZRCjS81g" target="_gkycRuiaEd6gMtZRCjS81g"/>
    <edge id="_gk04i-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gkycR-iaEd6gMtZRCjS81g" target="_gkx1N-iaEd6gMtZRCjS81g"/>
    <edge id="_gk04i-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gkx1N-iaEd6gMtZRCjS81g" target="_gkycR-iaEd6gMtZRCjS81g"/>
    <edge id="_gk1fkOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gkycSOiaEd6gMtZRCjS81g" target="_gkx1N-iaEd6gMtZRCjS81g"/>
    <edge id="_gk1fkOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gkx1N-iaEd6gMtZRCjS81g" target="_gkycSOiaEd6gMtZRCjS81g"/>
    <edge id="_gk1fkeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gkycSeiaEd6gMtZRCjS81g" target="_gkx1N-iaEd6gMtZRCjS81g"/>
    <edge id="_gk1fkeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gkx1N-iaEd6gMtZRCjS81g" target="_gkycSeiaEd6gMtZRCjS81g"/>
    <edge id="_gk1fkuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gkycSuiaEd6gMtZRCjS81g" target="_gkycRuiaEd6gMtZRCjS81g"/>
    <edge id="_gk1fkuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gkycRuiaEd6gMtZRCjS81g" target="_gkycSuiaEd6gMtZRCjS81g"/>
    <edge id="_gk1fk-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gkycS-iaEd6gMtZRCjS81g" target="_gkycRuiaEd6gMtZRCjS81g"/>
    <edge id="_gk1fk-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gkycRuiaEd6gMtZRCjS81g" target="_gkycS-iaEd6gMtZRCjS81g"/>
    <edge id="_gk1flOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gkycTOiaEd6gMtZRCjS81g" target="_gkx1OuiaEd6gMtZRCjS81g"/>
    <edge id="_gk1flOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gkx1OuiaEd6gMtZRCjS81g" target="_gkycTOiaEd6gMtZRCjS81g"/>
    <edge id="_gk1fleiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gkycTeiaEd6gMtZRCjS81g" target="_gkx1OuiaEd6gMtZRCjS81g"/>
    <edge id="_gk1fleiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gkx1OuiaEd6gMtZRCjS81g" target="_gkycTeiaEd6gMtZRCjS81g"/>
    <edge id="_gk1fluiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gkycTuiaEd6gMtZRCjS81g" target="_gkycRuiaEd6gMtZRCjS81g"/>
    <edge id="_gk1fluiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gkycRuiaEd6gMtZRCjS81g" target="_gkycTuiaEd6gMtZRCjS81g"/>
    <edge id="_gk1fl-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gkycT-iaEd6gMtZRCjS81g" target="_gkycQuiaEd6gMtZRCjS81g"/>
    <edge id="_gk1fl-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gkycQuiaEd6gMtZRCjS81g" target="_gkycT-iaEd6gMtZRCjS81g"/>
    <edge id="_gk1fmOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gkycUOiaEd6gMtZRCjS81g" target="_gkycQuiaEd6gMtZRCjS81g"/>
    <edge id="_gk1fmOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gkycQuiaEd6gMtZRCjS81g" target="_gkycUOiaEd6gMtZRCjS81g"/>
    <edge id="_gk1fmeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gkycUeiaEd6gMtZRCjS81g" target="_gkx1N-iaEd6gMtZRCjS81g"/>
    <edge id="_gk1fmeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gkx1N-iaEd6gMtZRCjS81g" target="_gkycUeiaEd6gMtZRCjS81g"/>
    <edge id="_gk1fmuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gkycVeiaEd6gMtZRCjS81g" target="_gkycVOiaEd6gMtZRCjS81g"/>
    <edge id="_gk1fmuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gkycVOiaEd6gMtZRCjS81g" target="_gkycVeiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
