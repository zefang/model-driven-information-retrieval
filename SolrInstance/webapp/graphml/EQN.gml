<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_eGhDAOiaEd6gMtZRCjS81g" projectName="EQN">
    <node className="RoutingChain" id="_eGhDA-iaEd6gMtZRCjS81g"/>
    <node className="QueuingNetwork" id="_eGhDBOiaEd6gMtZRCjS81g"/>
    <node className="ExecutionGraph" id="_eGhDBeiaEd6gMtZRCjS81g"/>
    <node className="Center" id="_eGhDBuiaEd6gMtZRCjS81g"/>
    <node className="Node" id="_eGhqEOiaEd6gMtZRCjS81g"/>
    <node className="Special" id="_eGhqEeiaEd6gMtZRCjS81g"/>
    <node className="ActiveCenter" id="_eGhqEuiaEd6gMtZRCjS81g"/>
    <node className="PassiveCenter" id="_eGhqE-iaEd6gMtZRCjS81g"/>
    <node className="Source" id="_eGhqFOiaEd6gMtZRCjS81g"/>
    <node className="Sink" id="_eGhqFeiaEd6gMtZRCjS81g"/>
    <node className="Fork" id="_eGhqFuiaEd6gMtZRCjS81g"/>
    <node className="Join" id="_eGhqF-iaEd6gMtZRCjS81g"/>
    <node className="Split" id="_eGhqGOiaEd6gMtZRCjS81g"/>
    <node className="Allocate" id="_eGhqGeiaEd6gMtZRCjS81g"/>
    <node className="Release" id="_eGhqGuiaEd6gMtZRCjS81g"/>
    <edge id="_eGhqG-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eGhDBOiaEd6gMtZRCjS81g" target="_eGhDBuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">center</attribute>
    </edge>
    <edge id="_eGhqG-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eGhDBuiaEd6gMtZRCjS81g" target="_eGhDBOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eGhqHuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eGhDBOiaEd6gMtZRCjS81g" target="_eGhDA-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">workLoad</attribute>
    </edge>
    <edge id="_eGhqHuiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eGhDA-iaEd6gMtZRCjS81g" target="_eGhDBOiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_eGhqJOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eGhDBeiaEd6gMtZRCjS81g" target="_eGhqEOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">node</attribute>
    </edge>
    <edge id="_eGhqJOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eGhqEOiaEd6gMtZRCjS81g" target="_eGhDBeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eGhqIeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eGhDBeiaEd6gMtZRCjS81g" target="_eGhqEOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">nodeNested</attribute>
    </edge>
    <edge id="_eGhqIeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eGhqEOiaEd6gMtZRCjS81g" target="_eGhDBeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eGhqJ-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eGhDBuiaEd6gMtZRCjS81g" target="_eGhqEOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">node</attribute>
    </edge>
    <edge id="_eGhqJ-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eGhqEOiaEd6gMtZRCjS81g" target="_eGhDBuiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_eGiRIOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eGhqEeiaEd6gMtZRCjS81g" target="_eGhDBuiaEd6gMtZRCjS81g"/>
    <edge id="_eGiRIOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eGhDBuiaEd6gMtZRCjS81g" target="_eGhqEeiaEd6gMtZRCjS81g"/>
    <edge id="_eGiRIeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eGhqEuiaEd6gMtZRCjS81g" target="_eGhDBuiaEd6gMtZRCjS81g"/>
    <edge id="_eGiRIeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eGhDBuiaEd6gMtZRCjS81g" target="_eGhqEuiaEd6gMtZRCjS81g"/>
    <edge id="_eGiRIuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eGhqE-iaEd6gMtZRCjS81g" target="_eGhDBuiaEd6gMtZRCjS81g"/>
    <edge id="_eGiRIuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eGhDBuiaEd6gMtZRCjS81g" target="_eGhqE-iaEd6gMtZRCjS81g"/>
    <edge id="_eGiRI-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eGhqFOiaEd6gMtZRCjS81g" target="_eGhqEeiaEd6gMtZRCjS81g"/>
    <edge id="_eGiRI-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eGhqEeiaEd6gMtZRCjS81g" target="_eGhqFOiaEd6gMtZRCjS81g"/>
    <edge id="_eGiRJOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eGhqFeiaEd6gMtZRCjS81g" target="_eGhqEeiaEd6gMtZRCjS81g"/>
    <edge id="_eGiRJOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eGhqEeiaEd6gMtZRCjS81g" target="_eGhqFeiaEd6gMtZRCjS81g"/>
    <edge id="_eGiRJeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eGhqFuiaEd6gMtZRCjS81g" target="_eGhqEeiaEd6gMtZRCjS81g"/>
    <edge id="_eGiRJeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eGhqEeiaEd6gMtZRCjS81g" target="_eGhqFuiaEd6gMtZRCjS81g"/>
    <edge id="_eGiRJuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eGhqF-iaEd6gMtZRCjS81g" target="_eGhqEeiaEd6gMtZRCjS81g"/>
    <edge id="_eGiRJuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eGhqEeiaEd6gMtZRCjS81g" target="_eGhqF-iaEd6gMtZRCjS81g"/>
    <edge id="_eGiRJ-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eGhqGOiaEd6gMtZRCjS81g" target="_eGhqEeiaEd6gMtZRCjS81g"/>
    <edge id="_eGiRJ-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eGhqEeiaEd6gMtZRCjS81g" target="_eGhqGOiaEd6gMtZRCjS81g"/>
    <edge id="_eGiRKOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eGhqGeiaEd6gMtZRCjS81g" target="_eGhqEeiaEd6gMtZRCjS81g"/>
    <edge id="_eGiRKOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eGhqEeiaEd6gMtZRCjS81g" target="_eGhqGeiaEd6gMtZRCjS81g"/>
    <edge id="_eGiRKeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eGhqGuiaEd6gMtZRCjS81g" target="_eGhqEeiaEd6gMtZRCjS81g"/>
    <edge id="_eGiRKeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eGhqEeiaEd6gMtZRCjS81g" target="_eGhqGuiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
