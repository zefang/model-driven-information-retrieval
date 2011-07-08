<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_fCPrcOiaEd6gMtZRCjS81g" projectName="MTRANS">
    <node className="MetaClass" id="_fCPrc-iaEd6gMtZRCjS81g"/>
    <node className="MetaModel" id="_fCPrdOiaEd6gMtZRCjS81g"/>
    <node className="Module" id="_fCPrdeiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>mode</attribute>
    </node>
    <node className="Rule" id="_fCPrduiaEd6gMtZRCjS81g">
      <attribute>isAbstract</attribute>
      <attribute>isEntryPoint</attribute>
      <attribute>name</attribute>
    </node>
    <node className="Inheritance" id="_fCPrd-iaEd6gMtZRCjS81g"/>
    <node className="Expression" id="_fCPreOiaEd6gMtZRCjS81g">
      <attribute>operator</attribute>
    </node>
    <node className="Section" id="_fCPreeiaEd6gMtZRCjS81g">
      <attribute>kind</attribute>
    </node>
    <node className="Instruction" id="_fCPreuiaEd6gMtZRCjS81g"/>
    <node className="Variable" id="_fCPre-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <edge id="_fCPriuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fCPrdeiaEd6gMtZRCjS81g" target="_fCPrduiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">rules</attribute>
    </edge>
    <edge id="_fCPriuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fCPrduiaEd6gMtZRCjS81g" target="_fCPrdeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fCQSg-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fCPrduiaEd6gMtZRCjS81g" target="_fCPre-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">declaration</attribute>
    </edge>
    <edge id="_fCQSg-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fCPre-iaEd6gMtZRCjS81g" target="_fCPrduiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fCQShuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fCPrduiaEd6gMtZRCjS81g" target="_fCPreeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">sections</attribute>
    </edge>
    <edge id="_fCQShuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fCPreeiaEd6gMtZRCjS81g" target="_fCPrduiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fCQSieiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fCPrduiaEd6gMtZRCjS81g" target="_fCPreOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">guard</attribute>
    </edge>
    <edge id="_fCQSieiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fCPreOiaEd6gMtZRCjS81g" target="_fCPrduiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fCQSjOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fCPrduiaEd6gMtZRCjS81g" target="_fCPrd-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">inheritances</attribute>
    </edge>
    <edge id="_fCQSjOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fCPrd-iaEd6gMtZRCjS81g" target="_fCPrduiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fCQSj-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fCPrd-iaEd6gMtZRCjS81g" target="_fCPreOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">expressions</attribute>
    </edge>
    <edge id="_fCQSj-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fCPreOiaEd6gMtZRCjS81g" target="_fCPrd-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fCQSleiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fCPreeiaEd6gMtZRCjS81g" target="_fCPreuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">instructions</attribute>
    </edge>
    <edge id="_fCQSleiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fCPreuiaEd6gMtZRCjS81g" target="_fCPreeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fCQSmOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fCPreuiaEd6gMtZRCjS81g" target="_fCPreOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">body</attribute>
    </edge>
    <edge id="_fCQSmOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fCPreOiaEd6gMtZRCjS81g" target="_fCPreuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fCPrhOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fCPrdeiaEd6gMtZRCjS81g" target="_fCPrdOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">metaDest</attribute>
    </edge>
    <edge id="_fCPrhOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fCPrdOiaEd6gMtZRCjS81g" target="_fCPrdeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fCPrh-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fCPrdeiaEd6gMtZRCjS81g" target="_fCPrdOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">metaSource</attribute>
    </edge>
    <edge id="_fCPrh-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fCPrdOiaEd6gMtZRCjS81g" target="_fCPrdeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fCPrjeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fCPrduiaEd6gMtZRCjS81g" target="_fCPrc-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">target</attribute>
    </edge>
    <edge id="_fCPrjeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fCPrc-iaEd6gMtZRCjS81g" target="_fCPrduiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fCQSgOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fCPrduiaEd6gMtZRCjS81g" target="_fCPrc-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">source</attribute>
    </edge>
    <edge id="_fCQSgOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fCPrc-iaEd6gMtZRCjS81g" target="_fCPrduiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fCQSkuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fCPrd-iaEd6gMtZRCjS81g" target="_fCPrduiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">inheritedRules</attribute>
    </edge>
    <edge id="_fCQSkuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fCPrduiaEd6gMtZRCjS81g" target="_fCPrd-iaEd6gMtZRCjS81g" upperValue="1"/>
  </graph>
</graphml>
