<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_eTDDIOiaEd6gMtZRCjS81g" projectName="GeoTrans">
    <node className="GeoTransfos" id="_eTDDI-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="GeoTransfo" id="_eTDDJOiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>freeze</attribute>
    </node>
    <node className="Param" id="_eTDDJeiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>param</attribute>
    </node>
    <edge id="_eTDDK-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eTDDI-iaEd6gMtZRCjS81g" target="_eTDDJOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">transfos</attribute>
    </edge>
    <edge id="_eTDDK-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eTDDJOiaEd6gMtZRCjS81g" target="_eTDDI-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eTDDLuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eTDDJOiaEd6gMtZRCjS81g" target="_eTDDJOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">subGeoTransfos</attribute>
    </edge>
    <edge id="_eTDDLuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eTDDJOiaEd6gMtZRCjS81g" target="_eTDDJOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eTDDMeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eTDDJOiaEd6gMtZRCjS81g" target="_eTDDJeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">params</attribute>
    </edge>
    <edge id="_eTDDMeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eTDDJeiaEd6gMtZRCjS81g" target="_eTDDJOiaEd6gMtZRCjS81g" upperValue="1"/>
  </graph>
</graphml>
