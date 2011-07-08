<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_eLPK8OiaEd6gMtZRCjS81g" projectName="Family">
    <node className="Family" id="_eLPK8uiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Person" id="_eLPK8-iaEd6gMtZRCjS81g">
      <attribute>firstName</attribute>
      <attribute>emailAddresses</attribute>
    </node>
    <edge id="_eLPyAOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eLPK8uiaEd6gMtZRCjS81g" target="_eLPK8-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">members</attribute>
    </edge>
    <edge id="_eLPyAOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eLPK8-iaEd6gMtZRCjS81g" target="_eLPK8uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eLPyA-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eLPK8-iaEd6gMtZRCjS81g" target="_eLPK8-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">closestFriend</attribute>
    </edge>
    <edge id="_eLPyA-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eLPK8-iaEd6gMtZRCjS81g" target="_eLPK8-iaEd6gMtZRCjS81g" upperValue="1"/>
  </graph>
</graphml>
