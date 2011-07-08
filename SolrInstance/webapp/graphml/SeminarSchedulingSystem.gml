<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_gPwAYOiaEd6gMtZRCjS81g" projectName="SeminarSchedulingSystem">
    <node className="SeminarSchedulingSystem" id="_gPwAY-iaEd6gMtZRCjS81g"/>
    <node className="Presenter" id="_gPwAZOiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Seminar" id="_gPwAZeiaEd6gMtZRCjS81g">
      <attribute>title</attribute>
    </node>
    <node className="Offering" id="_gPwAZuiaEd6gMtZRCjS81g">
      <attribute>is_cancelled</attribute>
    </node>
    <node className="Date" id="_gPwAZ-iaEd6gMtZRCjS81g">
      <attribute>year</attribute>
      <attribute>month</attribute>
      <attribute>day</attribute>
    </node>
    <node className="Attendee" id="_gPwAaOiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <edge id="_gPwAcOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gPwAY-iaEd6gMtZRCjS81g" target="_gPwAZOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">presenter</attribute>
    </edge>
    <edge id="_gPwAcOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gPwAZOiaEd6gMtZRCjS81g" target="_gPwAY-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gPwAc-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gPwAY-iaEd6gMtZRCjS81g" target="_gPwAZeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">seminar</attribute>
    </edge>
    <edge id="_gPwAc-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gPwAZeiaEd6gMtZRCjS81g" target="_gPwAY-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gPwAduiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gPwAZOiaEd6gMtZRCjS81g" target="_gPwAZeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">qualifiedFor</attribute>
    </edge>
    <edge id="_gPwAduiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gPwAZeiaEd6gMtZRCjS81g" target="_gPwAZOiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gPwAeeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gPwAZOiaEd6gMtZRCjS81g" target="_gPwAZuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">offering</attribute>
    </edge>
    <edge id="_gPwAeeiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gPwAZuiaEd6gMtZRCjS81g" target="_gPwAZOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gPwAfOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gPwAZeiaEd6gMtZRCjS81g" target="_gPwAZuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">offering</attribute>
    </edge>
    <edge id="_gPwAfOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gPwAZuiaEd6gMtZRCjS81g" target="_gPwAZeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gPwAf-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gPwAZuiaEd6gMtZRCjS81g" target="_gPwAZ-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">date</attribute>
    </edge>
    <edge id="_gPwAf-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gPwAZ-iaEd6gMtZRCjS81g" target="_gPwAZuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gPwAguiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gPwAZuiaEd6gMtZRCjS81g" target="_gPwAaOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">attendee</attribute>
    </edge>
    <edge id="_gPwAguiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gPwAaOiaEd6gMtZRCjS81g" target="_gPwAZuiaEd6gMtZRCjS81g" upperValue="*"/>
  </graph>
</graphml>
