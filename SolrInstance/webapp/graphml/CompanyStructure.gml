<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_d3ehcOiaEd6gMtZRCjS81g" projectName="CompanyStructure">
    <node className="Company" id="_d3ehc-iaEd6gMtZRCjS81g"/>
    <node className="CorporateHQ" id="_d3ehdOiaEd6gMtZRCjS81g"/>
    <node className="Store" id="_d3ehdeiaEd6gMtZRCjS81g"/>
    <node className="CorporateHQBackOffice" id="_d3ehduiaEd6gMtZRCjS81g"/>
    <node className="StoreBackOffice" id="_d3ehd-iaEd6gMtZRCjS81g"/>
    <node className="Employee" id="_d3eheOiaEd6gMtZRCjS81g"/>
    <node className="CashRegister" id="_d3eheeiaEd6gMtZRCjS81g"/>
    <edge id="_d3eheuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_d3ehc-iaEd6gMtZRCjS81g" target="_d3ehdOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">corporateHQ</attribute>
    </edge>
    <edge id="_d3eheuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_d3ehdOiaEd6gMtZRCjS81g" target="_d3ehc-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d3ehfeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_d3ehc-iaEd6gMtZRCjS81g" target="_d3ehdeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">Store</attribute>
    </edge>
    <edge id="_d3ehfeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_d3ehdeiaEd6gMtZRCjS81g" target="_d3ehc-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d3fIhOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_d3ehdOiaEd6gMtZRCjS81g" target="_d3ehduiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">corporateHQBackOffice</attribute>
    </edge>
    <edge id="_d3fIhOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_d3ehduiaEd6gMtZRCjS81g" target="_d3ehdOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d3fIh-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_d3ehdeiaEd6gMtZRCjS81g" target="_d3ehd-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">storeBackOffice</attribute>
    </edge>
    <edge id="_d3fIh-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_d3ehd-iaEd6gMtZRCjS81g" target="_d3ehdeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d3fIiuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_d3ehdeiaEd6gMtZRCjS81g" target="_d3eheOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">employee</attribute>
    </edge>
    <edge id="_d3fIiuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_d3eheOiaEd6gMtZRCjS81g" target="_d3ehdeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d3fIjeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_d3ehdeiaEd6gMtZRCjS81g" target="_d3eheeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">cashRegister</attribute>
    </edge>
    <edge id="_d3fIjeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_d3eheeiaEd6gMtZRCjS81g" target="_d3ehdeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d3fIgeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_d3ehdOiaEd6gMtZRCjS81g" target="_d3ehdeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">manages</attribute>
    </edge>
    <edge id="_d3fIgeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_d3ehdeiaEd6gMtZRCjS81g" target="_d3ehdOiaEd6gMtZRCjS81g" upperValue="1"/>
  </graph>
</graphml>
