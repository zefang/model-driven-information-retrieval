<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_fy2pAOiaEd6gMtZRCjS81g" projectName="Promenade">
    <node className="Strong" id="_fy2pA-iaEd6gMtZRCjS81g"/>
    <node className="Start" id="_fy2pBOiaEd6gMtZRCjS81g"/>
    <node className="End" id="_fy3QEOiaEd6gMtZRCjS81g"/>
    <node className="FeedBack" id="_fy3QEeiaEd6gMtZRCjS81g"/>
    <node className="Weak" id="_fy3QEuiaEd6gMtZRCjS81g"/>
    <node className="Grouping" id="_fy3QE-iaEd6gMtZRCjS81g"/>
    <node className="Precedence" id="_fy3QFOiaEd6gMtZRCjS81g"/>
    <node className="DynPrecedence" id="_fy3QFeiaEd6gMtZRCjS81g"/>
    <node className="DerPrecedence" id="_fy3QFuiaEd6gMtZRCjS81g"/>
    <node className="BasPrecedence" id="_fy3QF-iaEd6gMtZRCjS81g"/>
    <node className="MetaTaskOccurence" id="_fy3QGOiaEd6gMtZRCjS81g"/>
    <node className="ParBinding" id="_fy3QGeiaEd6gMtZRCjS81g">
      <attribute>inclusion</attribute>
    </node>
    <node className="ParameterPrec" id="_fy3QGuiaEd6gMtZRCjS81g"/>
    <node className="ModelElement" id="_fy3QG-iaEd6gMtZRCjS81g"/>
    <node className="DependancyUML" id="_fy3QHOiaEd6gMtZRCjS81g"/>
    <node className="MetaTask" id="_fy3QHeiaEd6gMtZRCjS81g"/>
    <node className="ParameterUML" id="_fy3QHuiaEd6gMtZRCjS81g"/>
    <node className="MetaDocument" id="_fy3QH-iaEd6gMtZRCjS81g"/>
    <edge id="_fy3QIeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fy3QFOiaEd6gMtZRCjS81g" target="_fy3QFuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">deprecs</attribute>
    </edge>
    <edge id="_fy3QIeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fy3QFuiaEd6gMtZRCjS81g" target="_fy3QFOiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_fy3QJOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fy3QFOiaEd6gMtZRCjS81g" target="_fy3QGeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">parbind</attribute>
    </edge>
    <edge id="_fy3QJOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fy3QGeiaEd6gMtZRCjS81g" target="_fy3QFOiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_fy3QJ-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fy3QFuiaEd6gMtZRCjS81g" target="_fy3QGOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">auxTasks</attribute>
    </edge>
    <edge id="_fy3QJ-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_fy3QGOiaEd6gMtZRCjS81g" target="_fy3QFuiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_fy3QKuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fy3QGOiaEd6gMtZRCjS81g" target="_fy3QHeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">taskCl</attribute>
    </edge>
    <edge id="_fy3QKuiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_fy3QHeiaEd6gMtZRCjS81g" target="_fy3QGOiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_fy3QLeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fy3QGeiaEd6gMtZRCjS81g" target="_fy3QGuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">targetPar</attribute>
    </edge>
    <edge id="_fy3QLeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fy3QGuiaEd6gMtZRCjS81g" target="_fy3QGeiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_fy3QMOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fy3QGeiaEd6gMtZRCjS81g" target="_fy3QGuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">sourcePar</attribute>
    </edge>
    <edge id="_fy3QMOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fy3QGuiaEd6gMtZRCjS81g" target="_fy3QGeiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_fy3QM-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fy3QGuiaEd6gMtZRCjS81g" target="_fy3QGuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">dstParams</attribute>
    </edge>
    <edge id="_fy3QM-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fy3QGuiaEd6gMtZRCjS81g" target="_fy3QGuiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_fy3QNuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fy3QG-iaEd6gMtZRCjS81g" target="_fy3QHOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">dependencyUMLsupp</attribute>
    </edge>
    <edge id="_fy3QNuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fy3QHOiaEd6gMtZRCjS81g" target="_fy3QG-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_fy3QOeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fy3QG-iaEd6gMtZRCjS81g" target="_fy3QHOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">dependencyUMLcli</attribute>
    </edge>
    <edge id="_fy3QOeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fy3QHOiaEd6gMtZRCjS81g" target="_fy3QG-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_fy3QPOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fy3QHeiaEd6gMtZRCjS81g" target="_fy3QHuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">params</attribute>
    </edge>
    <edge id="_fy3QPOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fy3QHuiaEd6gMtZRCjS81g" target="_fy3QHeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fy3QP-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fy3QHuiaEd6gMtZRCjS81g" target="_fy3QH-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">doc</attribute>
    </edge>
    <edge id="_fy3QP-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fy3QH-iaEd6gMtZRCjS81g" target="_fy3QHuiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_fy33I-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fy2pA-iaEd6gMtZRCjS81g" target="_fy3QFeiaEd6gMtZRCjS81g"/>
    <edge id="_fy33I-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fy3QFeiaEd6gMtZRCjS81g" target="_fy2pA-iaEd6gMtZRCjS81g"/>
    <edge id="_fy33JOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fy2pA-iaEd6gMtZRCjS81g" target="_fy3QF-iaEd6gMtZRCjS81g"/>
    <edge id="_fy33JOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fy3QF-iaEd6gMtZRCjS81g" target="_fy2pA-iaEd6gMtZRCjS81g"/>
    <edge id="_fy33JeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fy2pBOiaEd6gMtZRCjS81g" target="_fy3QFeiaEd6gMtZRCjS81g"/>
    <edge id="_fy33JeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fy3QFeiaEd6gMtZRCjS81g" target="_fy2pBOiaEd6gMtZRCjS81g"/>
    <edge id="_fy33JuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fy2pBOiaEd6gMtZRCjS81g" target="_fy3QF-iaEd6gMtZRCjS81g"/>
    <edge id="_fy33JuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fy3QF-iaEd6gMtZRCjS81g" target="_fy2pBOiaEd6gMtZRCjS81g"/>
    <edge id="_fy33J-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fy3QEOiaEd6gMtZRCjS81g" target="_fy3QFeiaEd6gMtZRCjS81g"/>
    <edge id="_fy33J-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fy3QFeiaEd6gMtZRCjS81g" target="_fy3QEOiaEd6gMtZRCjS81g"/>
    <edge id="_fy33KOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fy3QEOiaEd6gMtZRCjS81g" target="_fy3QF-iaEd6gMtZRCjS81g"/>
    <edge id="_fy33KOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fy3QF-iaEd6gMtZRCjS81g" target="_fy3QEOiaEd6gMtZRCjS81g"/>
    <edge id="_fy33KeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fy3QEeiaEd6gMtZRCjS81g" target="_fy3QFeiaEd6gMtZRCjS81g"/>
    <edge id="_fy33KeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fy3QFeiaEd6gMtZRCjS81g" target="_fy3QEeiaEd6gMtZRCjS81g"/>
    <edge id="_fy33KuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fy3QEeiaEd6gMtZRCjS81g" target="_fy3QF-iaEd6gMtZRCjS81g"/>
    <edge id="_fy33KuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fy3QF-iaEd6gMtZRCjS81g" target="_fy3QEeiaEd6gMtZRCjS81g"/>
    <edge id="_fy33K-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fy3QEuiaEd6gMtZRCjS81g" target="_fy3QFeiaEd6gMtZRCjS81g"/>
    <edge id="_fy33K-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fy3QFeiaEd6gMtZRCjS81g" target="_fy3QEuiaEd6gMtZRCjS81g"/>
    <edge id="_fy33LOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fy3QEuiaEd6gMtZRCjS81g" target="_fy3QFuiaEd6gMtZRCjS81g"/>
    <edge id="_fy33LOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fy3QFuiaEd6gMtZRCjS81g" target="_fy3QEuiaEd6gMtZRCjS81g"/>
    <edge id="_fy33LeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fy3QE-iaEd6gMtZRCjS81g" target="_fy3QFeiaEd6gMtZRCjS81g"/>
    <edge id="_fy33LeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fy3QFeiaEd6gMtZRCjS81g" target="_fy3QE-iaEd6gMtZRCjS81g"/>
    <edge id="_fy33LuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fy3QE-iaEd6gMtZRCjS81g" target="_fy3QFuiaEd6gMtZRCjS81g"/>
    <edge id="_fy33LuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fy3QFuiaEd6gMtZRCjS81g" target="_fy3QE-iaEd6gMtZRCjS81g"/>
    <edge id="_fy4eMOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fy3QFeiaEd6gMtZRCjS81g" target="_fy3QFOiaEd6gMtZRCjS81g"/>
    <edge id="_fy4eMOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fy3QFOiaEd6gMtZRCjS81g" target="_fy3QFeiaEd6gMtZRCjS81g"/>
    <edge id="_fy4eMeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fy3QFuiaEd6gMtZRCjS81g" target="_fy3QFOiaEd6gMtZRCjS81g"/>
    <edge id="_fy4eMeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fy3QFOiaEd6gMtZRCjS81g" target="_fy3QFuiaEd6gMtZRCjS81g"/>
    <edge id="_fy4eMuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fy3QF-iaEd6gMtZRCjS81g" target="_fy3QFOiaEd6gMtZRCjS81g"/>
    <edge id="_fy4eMuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fy3QFOiaEd6gMtZRCjS81g" target="_fy3QF-iaEd6gMtZRCjS81g"/>
    <edge id="_fy4eM-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fy3QGOiaEd6gMtZRCjS81g" target="_fy3QG-iaEd6gMtZRCjS81g"/>
    <edge id="_fy4eM-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fy3QG-iaEd6gMtZRCjS81g" target="_fy3QGOiaEd6gMtZRCjS81g"/>
    <edge id="_fy4eNOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fy3QGuiaEd6gMtZRCjS81g" target="_fy3QHuiaEd6gMtZRCjS81g"/>
    <edge id="_fy4eNOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fy3QHuiaEd6gMtZRCjS81g" target="_fy3QGuiaEd6gMtZRCjS81g"/>
    <edge id="_fy4eNeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fy3QHeiaEd6gMtZRCjS81g" target="_fy3QG-iaEd6gMtZRCjS81g"/>
    <edge id="_fy4eNeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fy3QG-iaEd6gMtZRCjS81g" target="_fy3QHeiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
