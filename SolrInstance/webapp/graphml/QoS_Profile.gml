<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_f-WuYOiaEd6gMtZRCjS81g" projectName="QoSProfile">
    <node className="QoSComponent" id="_f-WuY-iaEd6gMtZRCjS81g"/>
    <node className="Operation" id="_f-WuZOiaEd6gMtZRCjS81g"/>
    <node className="QoSProfile" id="_f-WuZeiaEd6gMtZRCjS81g"/>
    <node className="CompoundProfile" id="_f-WuZuiaEd6gMtZRCjS81g"/>
    <node className="SimpleProfile" id="_f-WuZ-iaEd6gMtZRCjS81g"/>
    <node className="QoSStatement" id="_f-WuaOiaEd6gMtZRCjS81g"/>
    <node className="ProfileTransition" id="_f-WuaeiaEd6gMtZRCjS81g"/>
    <edge id="_f-WuauiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_f-WuY-iaEd6gMtZRCjS81g" target="_f-WuZOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">operations</attribute>
    </edge>
    <edge id="_f-WuauiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_f-WuZOiaEd6gMtZRCjS81g" target="_f-WuY-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_f-WucOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_f-WuZuiaEd6gMtZRCjS81g" target="_f-WuZ-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">simpleProfile</attribute>
    </edge>
    <edge id="_f-WucOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_f-WuZ-iaEd6gMtZRCjS81g" target="_f-WuZuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_f-XVgOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_f-WuaeiaEd6gMtZRCjS81g" target="_f-WuZuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">compoundProfile</attribute>
    </edge>
    <edge id="_f-XVgOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_f-WuZuiaEd6gMtZRCjS81g" target="_f-WuaeiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_f-WubeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_f-WuY-iaEd6gMtZRCjS81g" target="_f-WuZeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">profile</attribute>
    </edge>
    <edge id="_f-WubeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_f-WuZeiaEd6gMtZRCjS81g" target="_f-WuY-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_f-XVceiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_f-WuZ-iaEd6gMtZRCjS81g" target="_f-WuaOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">uses</attribute>
    </edge>
    <edge id="_f-XVceiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_f-WuaOiaEd6gMtZRCjS81g" target="_f-WuZ-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_f-XVdOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_f-WuZ-iaEd6gMtZRCjS81g" target="_f-WuaOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">provides</attribute>
    </edge>
    <edge id="_f-XVdOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_f-WuaOiaEd6gMtZRCjS81g" target="_f-WuZ-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_f-XVd-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_f-WuaeiaEd6gMtZRCjS81g" target="_f-WuZOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">operations</attribute>
    </edge>
    <edge id="_f-XVd-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_f-WuZOiaEd6gMtZRCjS81g" target="_f-WuaeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_f-XVeuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_f-WuaeiaEd6gMtZRCjS81g" target="_f-WuZ-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">from</attribute>
    </edge>
    <edge id="_f-XVeuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_f-WuZ-iaEd6gMtZRCjS81g" target="_f-WuaeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_f-XVfeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_f-WuaeiaEd6gMtZRCjS81g" target="_f-WuZ-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">to</attribute>
    </edge>
    <edge id="_f-XVfeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_f-WuZ-iaEd6gMtZRCjS81g" target="_f-WuaeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_f-XVhuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_f-WuZuiaEd6gMtZRCjS81g" target="_f-WuZeiaEd6gMtZRCjS81g"/>
    <edge id="_f-XVhuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_f-WuZeiaEd6gMtZRCjS81g" target="_f-WuZuiaEd6gMtZRCjS81g"/>
    <edge id="_f-X8gOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_f-WuZ-iaEd6gMtZRCjS81g" target="_f-WuZeiaEd6gMtZRCjS81g"/>
    <edge id="_f-X8gOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_f-WuZeiaEd6gMtZRCjS81g" target="_f-WuZ-iaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
