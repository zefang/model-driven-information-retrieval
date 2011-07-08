<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_eLxWcOiaEd6gMtZRCjS81g" projectName="FeatureDiagrams">
    <node className="Node" id="_eLxWc-iaEd6gMtZRCjS81g">
      <attribute>description</attribute>
      <attribute>preliminary</attribute>
      <attribute>object</attribute>
    </node>
    <node className="Attribute" id="_eLxWdOiaEd6gMtZRCjS81g">
      <attribute>description</attribute>
      <attribute>editable</attribute>
      <attribute>key</attribute>
      <attribute>value</attribute>
      <attribute>name</attribute>
    </node>
    <node className="Root" id="_eLxWdeiaEd6gMtZRCjS81g"/>
    <node className="Child" id="_eLxWduiaEd6gMtZRCjS81g"/>
    <node className="XORGroup" id="_eLxWd-iaEd6gMtZRCjS81g">
      <attribute>preliminary</attribute>
      <attribute>name</attribute>
    </node>
    <node className="ORGroup" id="_eLxWeOiaEd6gMtZRCjS81g">
      <attribute>preliminary</attribute>
      <attribute>name</attribute>
    </node>
    <edge id="_eLxWheiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eLxWc-iaEd6gMtZRCjS81g" target="_eLxWdOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">attributes</attribute>
    </edge>
    <edge id="_eLxWheiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eLxWdOiaEd6gMtZRCjS81g" target="_eLxWc-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eLxWiOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eLxWc-iaEd6gMtZRCjS81g" target="_eLxWeOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">no_dst</attribute>
    </edge>
    <edge id="_eLxWiOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_eLxWeOiaEd6gMtZRCjS81g" target="_eLxWc-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_eLxWi-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eLxWc-iaEd6gMtZRCjS81g" target="_eLxWd-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">nx_dst</attribute>
    </edge>
    <edge id="_eLxWi-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_eLxWd-iaEd6gMtZRCjS81g" target="_eLxWc-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_eLx9gOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eLxWc-iaEd6gMtZRCjS81g" target="_eLxWduiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">cn_dst</attribute>
    </edge>
    <edge id="_eLx9gOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_eLxWduiaEd6gMtZRCjS81g" target="_eLxWc-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_eLx9g-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eLxWduiaEd6gMtZRCjS81g" target="_eLxWd-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">cx_src</attribute>
    </edge>
    <edge id="_eLx9g-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_eLxWd-iaEd6gMtZRCjS81g" target="_eLxWduiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_eLx9huiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eLxWduiaEd6gMtZRCjS81g" target="_eLxWeOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">co_src</attribute>
    </edge>
    <edge id="_eLx9huiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_eLxWeOiaEd6gMtZRCjS81g" target="_eLxWduiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_eLykkOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eLxWdeiaEd6gMtZRCjS81g" target="_eLxWc-iaEd6gMtZRCjS81g"/>
    <edge id="_eLykkOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eLxWc-iaEd6gMtZRCjS81g" target="_eLxWdeiaEd6gMtZRCjS81g"/>
    <edge id="_eLykkeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eLxWduiaEd6gMtZRCjS81g" target="_eLxWc-iaEd6gMtZRCjS81g"/>
    <edge id="_eLykkeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eLxWc-iaEd6gMtZRCjS81g" target="_eLxWduiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
