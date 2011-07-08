<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_dt8yAOiaEd6gMtZRCjS81g" projectName="CPP">
    <node className="CDerived" id="_dt8yA-iaEd6gMtZRCjS81g"/>
    <node className="CStructured" id="_dt8yBOiaEd6gMtZRCjS81g"/>
    <node className="CBehavorialFeature" id="_dt8yBeiaEd6gMtZRCjS81g"/>
    <node className="CFunction" id="_dt8yBuiaEd6gMtZRCjS81g">
      <attribute>isVsrArg</attribute>
    </node>
    <node className="CStructureContents" id="_dt8yB-iaEd6gMtZRCjS81g"/>
    <node className="CField" id="_dt8yCOiaEd6gMtZRCjS81g"/>
    <node className="CDerivableType" id="_dt8yCeiaEd6gMtZRCjS81g"/>
    <node className="CPPReference" id="_dt8yCuiaEd6gMtZRCjS81g"/>
    <node className="CPPExtern" id="_dt8yC-iaEd6gMtZRCjS81g">
      <attribute>linkage</attribute>
    </node>
    <node className="CPPConst" id="_dt8yDOiaEd6gMtZRCjS81g"/>
    <node className="CPPTemplate" id="_dt9ZEOiaEd6gMtZRCjS81g"/>
    <node className="CPPClass" id="_dt9ZEeiaEd6gMtZRCjS81g">
      <attribute>isAbstract</attribute>
      <attribute>isVolatile</attribute>
      <attribute>visibility</attribute>
    </node>
    <node className="CPPGeneralization" id="_dt9ZEuiaEd6gMtZRCjS81g">
      <attribute>visibility</attribute>
      <attribute>isVirtual</attribute>
    </node>
    <node className="CPPOperation" id="_dt9ZE-iaEd6gMtZRCjS81g">
      <attribute>isStatic</attribute>
      <attribute>isExtern</attribute>
      <attribute>isInline</attribute>
      <attribute>isVirtual</attribute>
      <attribute>isPure</attribute>
      <attribute>visibility</attribute>
      <attribute>isCtor</attribute>
      <attribute>isDtor</attribute>
    </node>
    <node className="CPPOperator" id="_dt9ZFOiaEd6gMtZRCjS81g">
      <attribute>isInline</attribute>
      <attribute>visibility</attribute>
    </node>
    <node className="CPPMember" id="_dt9ZFeiaEd6gMtZRCjS81g">
      <attribute>isStatic</attribute>
      <attribute>isVolatile</attribute>
      <attribute>isRegister</attribute>
      <attribute>visibility</attribute>
    </node>
    <edge id="_dt9ZK-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dt9ZEOiaEd6gMtZRCjS81g" target="_dt9ZEeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">classes</attribute>
    </edge>
    <edge id="_dt9ZK-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_dt9ZEeiaEd6gMtZRCjS81g" target="_dt9ZEOiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_dt9ZLuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dt9ZEeiaEd6gMtZRCjS81g" target="_dt9ZEuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">generalizations</attribute>
    </edge>
    <edge id="_dt9ZLuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dt9ZEuiaEd6gMtZRCjS81g" target="_dt9ZEeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dt9ZMeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dt9ZEuiaEd6gMtZRCjS81g" target="_dt9ZEeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">supertype</attribute>
    </edge>
    <edge id="_dt9ZMeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dt9ZEeiaEd6gMtZRCjS81g" target="_dt9ZEuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dt9ZNOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dt9ZE-iaEd6gMtZRCjS81g" target="_dt9ZEeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">throws</attribute>
    </edge>
    <edge id="_dt9ZNOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dt9ZEeiaEd6gMtZRCjS81g" target="_dt9ZE-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dt-AIOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dt8yBuiaEd6gMtZRCjS81g" target="_dt8yBeiaEd6gMtZRCjS81g"/>
    <edge id="_dt-AIOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dt8yBeiaEd6gMtZRCjS81g" target="_dt8yBuiaEd6gMtZRCjS81g"/>
    <edge id="_dt-AIeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dt8yCuiaEd6gMtZRCjS81g" target="_dt8yA-iaEd6gMtZRCjS81g"/>
    <edge id="_dt-AIeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dt8yA-iaEd6gMtZRCjS81g" target="_dt8yCuiaEd6gMtZRCjS81g"/>
    <edge id="_dt-AIuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dt8yC-iaEd6gMtZRCjS81g" target="_dt8yA-iaEd6gMtZRCjS81g"/>
    <edge id="_dt-AIuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dt8yA-iaEd6gMtZRCjS81g" target="_dt8yC-iaEd6gMtZRCjS81g"/>
    <edge id="_dt-AI-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dt8yDOiaEd6gMtZRCjS81g" target="_dt8yA-iaEd6gMtZRCjS81g"/>
    <edge id="_dt-AI-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dt8yA-iaEd6gMtZRCjS81g" target="_dt8yDOiaEd6gMtZRCjS81g"/>
    <edge id="_dt-AJOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dt9ZEOiaEd6gMtZRCjS81g" target="_dt8yA-iaEd6gMtZRCjS81g"/>
    <edge id="_dt-AJOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dt8yA-iaEd6gMtZRCjS81g" target="_dt9ZEOiaEd6gMtZRCjS81g"/>
    <edge id="_dt-AJeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dt9ZEeiaEd6gMtZRCjS81g" target="_dt8yBOiaEd6gMtZRCjS81g"/>
    <edge id="_dt-AJeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dt8yBOiaEd6gMtZRCjS81g" target="_dt9ZEeiaEd6gMtZRCjS81g"/>
    <edge id="_dt-nMOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dt9ZE-iaEd6gMtZRCjS81g" target="_dt8yBuiaEd6gMtZRCjS81g"/>
    <edge id="_dt-nMOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dt8yBuiaEd6gMtZRCjS81g" target="_dt9ZE-iaEd6gMtZRCjS81g"/>
    <edge id="_dt-nMeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dt9ZE-iaEd6gMtZRCjS81g" target="_dt8yB-iaEd6gMtZRCjS81g"/>
    <edge id="_dt-nMeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dt8yB-iaEd6gMtZRCjS81g" target="_dt9ZE-iaEd6gMtZRCjS81g"/>
    <edge id="_dt-nMuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dt9ZFOiaEd6gMtZRCjS81g" target="_dt8yB-iaEd6gMtZRCjS81g"/>
    <edge id="_dt-nMuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dt8yB-iaEd6gMtZRCjS81g" target="_dt9ZFOiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
