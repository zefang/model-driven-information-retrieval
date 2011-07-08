<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_gRVUwOiaEd6gMtZRCjS81g" projectName="SimpleAirlineDomain">
    <node className="Airport" id="_gRVUw-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Flight" id="_gRVUxOiaEd6gMtZRCjS81g">
      <attribute>maxnrPassengers</attribute>
    </node>
    <node className="Airline" id="_gRVUxeiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>nationality</attribute>
    </node>
    <node className="Passenger" id="_gRVUxuiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>age</attribute>
      <attribute>gender</attribute>
      <attribute>needsAssistance</attribute>
    </node>
    <node className="Time" id="_gRVUx-iaEd6gMtZRCjS81g">
      <attribute>year</attribute>
      <attribute>month</attribute>
      <attribute>day</attribute>
      <attribute>hour</attribute>
      <attribute>minute</attribute>
      <attribute>second</attribute>
    </node>
    <edge id="_gRVU1uiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gRVUw-iaEd6gMtZRCjS81g" target="_gRVUxOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">departingFlight</attribute>
    </edge>
    <edge id="_gRVU1uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gRVUxOiaEd6gMtZRCjS81g" target="_gRVUw-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gRV70OiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gRVUw-iaEd6gMtZRCjS81g" target="_gRVUxOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">arrivingFlight</attribute>
    </edge>
    <edge id="_gRV70OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gRVUxOiaEd6gMtZRCjS81g" target="_gRVUw-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gRV70-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gRVUxOiaEd6gMtZRCjS81g" target="_gRVUx-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">departTime</attribute>
    </edge>
    <edge id="_gRV70-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gRVUx-iaEd6gMtZRCjS81g" target="_gRVUxOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gRV71uiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gRVUxOiaEd6gMtZRCjS81g" target="_gRVUx-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">duration</attribute>
    </edge>
    <edge id="_gRV71uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gRVUx-iaEd6gMtZRCjS81g" target="_gRVUxOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gRV72eiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gRVUxOiaEd6gMtZRCjS81g" target="_gRVUxuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">passenger</attribute>
    </edge>
    <edge id="_gRV72eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gRVUxuiaEd6gMtZRCjS81g" target="_gRVUxOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gRV73OiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gRVUxOiaEd6gMtZRCjS81g" target="_gRVUxeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">airline</attribute>
    </edge>
    <edge id="_gRV73OiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gRVUxeiaEd6gMtZRCjS81g" target="_gRVUxOiaEd6gMtZRCjS81g" upperValue="*"/>
  </graph>
</graphml>
