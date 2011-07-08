<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_d1Gi4OiaEd6gMtZRCjS81g" projectName="ClassicModels">
    <node className="AddressInfo" id="_d1Gi4-iaEd6gMtZRCjS81g">
      <attribute>phone</attribute>
      <attribute>addressLine1</attribute>
      <attribute>addressLine2</attribute>
      <attribute>city</attribute>
      <attribute>state</attribute>
      <attribute>postalCode</attribute>
      <attribute>country</attribute>
    </node>
    <node className="Date" id="_d1Gi5OiaEd6gMtZRCjS81g">
      <attribute>year</attribute>
      <attribute>month</attribute>
      <attribute>day</attribute>
    </node>
    <node className="ClassicModels" id="_d1HJ8OiaEd6gMtZRCjS81g"/>
    <node className="ProductLine" id="_d1HJ8eiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>textDescription</attribute>
      <attribute>htmlDescription</attribute>
    </node>
    <node className="Product" id="_d1HJ8uiaEd6gMtZRCjS81g">
      <attribute>code</attribute>
      <attribute>name</attribute>
      <attribute>scale</attribute>
      <attribute>vendor</attribute>
      <attribute>description</attribute>
      <attribute>quantityInStock</attribute>
      <attribute>buyPrice</attribute>
      <attribute>MSRP</attribute>
    </node>
    <node className="Office" id="_d1HJ8-iaEd6gMtZRCjS81g">
      <attribute>code</attribute>
      <attribute>territory</attribute>
    </node>
    <node className="Employee" id="_d1HJ9OiaEd6gMtZRCjS81g">
      <attribute>number</attribute>
      <attribute>lastName</attribute>
      <attribute>firstName</attribute>
      <attribute>extension</attribute>
      <attribute>email</attribute>
      <attribute>jobTitle</attribute>
    </node>
    <node className="Customer" id="_d1HJ9eiaEd6gMtZRCjS81g">
      <attribute>number</attribute>
      <attribute>name</attribute>
      <attribute>contactLastName</attribute>
      <attribute>contactFirstName</attribute>
      <attribute>creditLimit</attribute>
    </node>
    <node className="Payment" id="_d1HJ9uiaEd6gMtZRCjS81g">
      <attribute>checkNumber</attribute>
      <attribute>amount</attribute>
    </node>
    <node className="Order" id="_d1HJ9-iaEd6gMtZRCjS81g">
      <attribute>number</attribute>
      <attribute>status</attribute>
      <attribute>comments</attribute>
    </node>
    <node className="OrderDetail" id="_d1HJ-OiaEd6gMtZRCjS81g">
      <attribute>quantityOrdered</attribute>
      <attribute>priceEach</attribute>
    </node>
    <edge id="_d1HKIuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_d1HJ8OiaEd6gMtZRCjS81g" target="_d1HJ8-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">offices</attribute>
    </edge>
    <edge id="_d1HKIuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_d1HJ8-iaEd6gMtZRCjS81g" target="_d1HJ8OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d1HKJeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_d1HJ8OiaEd6gMtZRCjS81g" target="_d1HJ8eiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">productLines</attribute>
    </edge>
    <edge id="_d1HKJeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_d1HJ8eiaEd6gMtZRCjS81g" target="_d1HJ8OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d1HKKOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_d1HJ8OiaEd6gMtZRCjS81g" target="_d1HJ9eiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">customers</attribute>
    </edge>
    <edge id="_d1HKKOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_d1HJ9eiaEd6gMtZRCjS81g" target="_d1HJ8OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d1HKK-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_d1HJ8eiaEd6gMtZRCjS81g" target="_d1HJ8uiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">products</attribute>
    </edge>
    <edge id="_d1HKK-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_d1HJ8uiaEd6gMtZRCjS81g" target="_d1HJ8eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d1HxAuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_d1HJ8-iaEd6gMtZRCjS81g" target="_d1HJ9OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">employees</attribute>
    </edge>
    <edge id="_d1HxAuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_d1HJ9OiaEd6gMtZRCjS81g" target="_d1HJ8-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d1HxC-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_d1HJ9eiaEd6gMtZRCjS81g" target="_d1HJ9-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">orders</attribute>
    </edge>
    <edge id="_d1HxC-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_d1HJ9-iaEd6gMtZRCjS81g" target="_d1HJ9eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d1HxDuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_d1HJ9eiaEd6gMtZRCjS81g" target="_d1HJ9uiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">payments</attribute>
    </edge>
    <edge id="_d1HxDuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_d1HJ9uiaEd6gMtZRCjS81g" target="_d1HJ9eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d1HxEeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_d1HJ9uiaEd6gMtZRCjS81g" target="_d1Gi5OiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">date</attribute>
    </edge>
    <edge id="_d1HxEeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_d1Gi5OiaEd6gMtZRCjS81g" target="_d1HJ9uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d1HxFOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_d1HJ9-iaEd6gMtZRCjS81g" target="_d1HJ-OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">orderDetails</attribute>
    </edge>
    <edge id="_d1HxFOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_d1HJ-OiaEd6gMtZRCjS81g" target="_d1HJ9-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d1HxF-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_d1HJ9-iaEd6gMtZRCjS81g" target="_d1Gi5OiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">date</attribute>
    </edge>
    <edge id="_d1HxF-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_d1Gi5OiaEd6gMtZRCjS81g" target="_d1HJ9-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d1HxGuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_d1HJ9-iaEd6gMtZRCjS81g" target="_d1Gi5OiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">requiredDate</attribute>
    </edge>
    <edge id="_d1HxGuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_d1Gi5OiaEd6gMtZRCjS81g" target="_d1HJ9-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d1HxHeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_d1HJ9-iaEd6gMtZRCjS81g" target="_d1Gi5OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">shippedDate</attribute>
    </edge>
    <edge id="_d1HxHeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_d1Gi5OiaEd6gMtZRCjS81g" target="_d1HJ9-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d1HxBeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_d1HJ9OiaEd6gMtZRCjS81g" target="_d1HJ9eiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">employeeCustomers</attribute>
    </edge>
    <edge id="_d1HxBeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_d1HJ9eiaEd6gMtZRCjS81g" target="_d1HJ9OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d1HxCOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_d1HJ9OiaEd6gMtZRCjS81g" target="_d1HJ9OiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">reportsTo</attribute>
    </edge>
    <edge id="_d1HxCOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_d1HJ9OiaEd6gMtZRCjS81g" target="_d1HJ9OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d1HxIOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_d1HJ-OiaEd6gMtZRCjS81g" target="_d1HJ8uiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">product</attribute>
    </edge>
    <edge id="_d1HxIOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_d1HJ8uiaEd6gMtZRCjS81g" target="_d1HJ-OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_d1IYEOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_d1HJ8-iaEd6gMtZRCjS81g" target="_d1Gi4-iaEd6gMtZRCjS81g"/>
    <edge id="_d1IYEOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_d1Gi4-iaEd6gMtZRCjS81g" target="_d1HJ8-iaEd6gMtZRCjS81g"/>
    <edge id="_d1IYEeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_d1HJ9eiaEd6gMtZRCjS81g" target="_d1Gi4-iaEd6gMtZRCjS81g"/>
    <edge id="_d1IYEeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_d1Gi4-iaEd6gMtZRCjS81g" target="_d1HJ9eiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
