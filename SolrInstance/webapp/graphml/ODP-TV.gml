<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_fbX9IOiaEd6gMtZRCjS81g" projectName="ODPTV">
    <node className="TechnologyObject" id="_fbX9IuiaEd6gMtZRCjS81g"/>
    <node className="Implementation" id="_fbX9I-iaEd6gMtZRCjS81g"/>
    <node className="IXIT" id="_fbX9JOiaEd6gMtZRCjS81g"/>
    <node className="ImplementableStandard" id="_fbX9JeiaEd6gMtZRCjS81g"/>
    <edge id="_fbX9JuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fbX9IuiaEd6gMtZRCjS81g" target="_fbX9JeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">implStandard</attribute>
    </edge>
    <edge id="_fbX9JuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fbX9JeiaEd6gMtZRCjS81g" target="_fbX9IuiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_fbX9KeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fbX9IuiaEd6gMtZRCjS81g" target="_fbX9I-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">toImplementation</attribute>
    </edge>
    <edge id="_fbX9KeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fbX9I-iaEd6gMtZRCjS81g" target="_fbX9IuiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_fbX9LOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fbX9I-iaEd6gMtZRCjS81g" target="_fbX9JOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">implIXIT</attribute>
    </edge>
    <edge id="_fbX9LOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_fbX9JOiaEd6gMtZRCjS81g" target="_fbX9I-iaEd6gMtZRCjS81g" upperValue="*"/>
  </graph>
</graphml>
