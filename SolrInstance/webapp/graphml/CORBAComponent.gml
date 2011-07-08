<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_dshOoOiaEd6gMtZRCjS81g" projectName="CORBAComponent">
    <node className="InterfaceDef" id="_dshOo-iaEd6gMtZRCjS81g"/>
    <node className="OperationDef" id="_dshOpOiaEd6gMtZRCjS81g"/>
    <node className="ValueDef" id="_dshOpeiaEd6gMtZRCjS81g"/>
    <node className="ComponentDef" id="_dshOpuiaEd6gMtZRCjS81g">
      <attribute>isBasic</attribute>
    </node>
    <node className="ProvidesDef" id="_dshOp-iaEd6gMtZRCjS81g"/>
    <node className="UsesDef" id="_dshOqOiaEd6gMtZRCjS81g">
      <attribute>multiple</attribute>
    </node>
    <node className="EventDef" id="_dshOqeiaEd6gMtZRCjS81g"/>
    <node className="EmitsDef" id="_dshOquiaEd6gMtZRCjS81g"/>
    <node className="PublishesDef" id="_dshOq-iaEd6gMtZRCjS81g"/>
    <node className="ConsumesDef" id="_dshOrOiaEd6gMtZRCjS81g"/>
    <node className="HomeDef" id="_dshOreiaEd6gMtZRCjS81g"/>
    <node className="FactoryDef" id="_dshOruiaEd6gMtZRCjS81g"/>
    <node className="FinderDef" id="_dshOr-iaEd6gMtZRCjS81g"/>
    <node className="PrimaryKeyDef" id="_dshOsOiaEd6gMtZRCjS81g"/>
    <edge id="_dsh1suiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dshOpuiaEd6gMtZRCjS81g" target="_dshOp-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">facets</attribute>
    </edge>
    <edge id="_dsh1suiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dshOp-iaEd6gMtZRCjS81g" target="_dshOpuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dsh1teiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dshOpuiaEd6gMtZRCjS81g" target="_dshOqOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">receptacles</attribute>
    </edge>
    <edge id="_dsh1teiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dshOqOiaEd6gMtZRCjS81g" target="_dshOpuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dsh1u-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dshOpuiaEd6gMtZRCjS81g" target="_dshOquiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">emits</attribute>
    </edge>
    <edge id="_dsh1u-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dshOquiaEd6gMtZRCjS81g" target="_dshOpuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dsh1vuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dshOpuiaEd6gMtZRCjS81g" target="_dshOq-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">publishes</attribute>
    </edge>
    <edge id="_dsh1vuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dshOq-iaEd6gMtZRCjS81g" target="_dshOpuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dsh1weiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dshOpuiaEd6gMtZRCjS81g" target="_dshOrOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">consumes</attribute>
    </edge>
    <edge id="_dsh1weiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dshOrOiaEd6gMtZRCjS81g" target="_dshOpuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dsh10OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dshOreiaEd6gMtZRCjS81g" target="_dshOruiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">factories</attribute>
    </edge>
    <edge id="_dsh10OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dshOruiaEd6gMtZRCjS81g" target="_dshOreiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dsh10-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dshOreiaEd6gMtZRCjS81g" target="_dshOr-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">finders</attribute>
    </edge>
    <edge id="_dsh10-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dshOr-iaEd6gMtZRCjS81g" target="_dshOreiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dsh11uiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dshOreiaEd6gMtZRCjS81g" target="_dshOsOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">key</attribute>
    </edge>
    <edge id="_dsh11uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dshOsOiaEd6gMtZRCjS81g" target="_dshOreiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dsh1uOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dshOpuiaEd6gMtZRCjS81g" target="_dshOo-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">supports</attribute>
    </edge>
    <edge id="_dsh1uOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dshOo-iaEd6gMtZRCjS81g" target="_dshOpuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dsh1xOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dshOp-iaEd6gMtZRCjS81g" target="_dshOo-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">provides</attribute>
    </edge>
    <edge id="_dsh1xOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dshOo-iaEd6gMtZRCjS81g" target="_dshOp-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dsh1x-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dshOqOiaEd6gMtZRCjS81g" target="_dshOo-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">uses</attribute>
    </edge>
    <edge id="_dsh1x-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dshOo-iaEd6gMtZRCjS81g" target="_dshOqOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dsh1yuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dshOqeiaEd6gMtZRCjS81g" target="_dshOpeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">type</attribute>
    </edge>
    <edge id="_dsh1yuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dshOpeiaEd6gMtZRCjS81g" target="_dshOqeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dsh1zeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dshOreiaEd6gMtZRCjS81g" target="_dshOpuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">manages</attribute>
    </edge>
    <edge id="_dsh1zeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dshOpuiaEd6gMtZRCjS81g" target="_dshOreiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dsh12eiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dshOsOiaEd6gMtZRCjS81g" target="_dshOpeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">type</attribute>
    </edge>
    <edge id="_dsh12eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dshOpeiaEd6gMtZRCjS81g" target="_dshOsOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dsicw-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dshOpuiaEd6gMtZRCjS81g" target="_dshOo-iaEd6gMtZRCjS81g"/>
    <edge id="_dsicw-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dshOo-iaEd6gMtZRCjS81g" target="_dshOpuiaEd6gMtZRCjS81g"/>
    <edge id="_dsicxOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dshOquiaEd6gMtZRCjS81g" target="_dshOqeiaEd6gMtZRCjS81g"/>
    <edge id="_dsicxOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dshOqeiaEd6gMtZRCjS81g" target="_dshOquiaEd6gMtZRCjS81g"/>
    <edge id="_dsjD0OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dshOq-iaEd6gMtZRCjS81g" target="_dshOqeiaEd6gMtZRCjS81g"/>
    <edge id="_dsjD0OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dshOqeiaEd6gMtZRCjS81g" target="_dshOq-iaEd6gMtZRCjS81g"/>
    <edge id="_dsjD0eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dshOrOiaEd6gMtZRCjS81g" target="_dshOqeiaEd6gMtZRCjS81g"/>
    <edge id="_dsjD0eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dshOqeiaEd6gMtZRCjS81g" target="_dshOrOiaEd6gMtZRCjS81g"/>
    <edge id="_dsjD0uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dshOreiaEd6gMtZRCjS81g" target="_dshOo-iaEd6gMtZRCjS81g"/>
    <edge id="_dsjD0uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dshOo-iaEd6gMtZRCjS81g" target="_dshOreiaEd6gMtZRCjS81g"/>
    <edge id="_dsjD0-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dshOruiaEd6gMtZRCjS81g" target="_dshOpOiaEd6gMtZRCjS81g"/>
    <edge id="_dsjD0-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dshOpOiaEd6gMtZRCjS81g" target="_dshOruiaEd6gMtZRCjS81g"/>
    <edge id="_dsjD1OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dshOr-iaEd6gMtZRCjS81g" target="_dshOpOiaEd6gMtZRCjS81g"/>
    <edge id="_dsjD1OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dshOpOiaEd6gMtZRCjS81g" target="_dshOr-iaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
