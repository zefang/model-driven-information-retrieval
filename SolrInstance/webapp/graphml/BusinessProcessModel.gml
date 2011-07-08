<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_dn2KAOiaEd6gMtZRCjS81g" projectName="BusinessProcessModel">
    <node className="Namespace" id="_dn4mQOiaEd6gMtZRCjS81g"/>
    <node className="Task" id="_dn4mQeiaEd6gMtZRCjS81g"/>
    <node className="DataSet" id="_dn4mQuiaEd6gMtZRCjS81g"/>
    <node className="Parameter" id="_dn4mQ-iaEd6gMtZRCjS81g"/>
    <node className="DataElement" id="_dn4mROiaEd6gMtZRCjS81g"/>
    <node className="ModelElement" id="_dn4mReiaEd6gMtZRCjS81g"/>
    <node className="Flow" id="_dn4mRuiaEd6gMtZRCjS81g"/>
    <node className="DataFlow" id="_dn4mR-iaEd6gMtZRCjS81g"/>
    <node className="ControlFlow" id="_dn4mSOiaEd6gMtZRCjS81g"/>
    <node className="ControlPoint" id="_dn4mSeiaEd6gMtZRCjS81g"/>
    <node className="Input" id="_dn4mSuiaEd6gMtZRCjS81g"/>
    <node className="Output" id="_dn4mS-iaEd6gMtZRCjS81g"/>
    <node className="OutputSet" id="_dn4mTOiaEd6gMtZRCjS81g"/>
    <node className="InputSet" id="_dn4mTeiaEd6gMtZRCjS81g"/>
    <node className="Exception" id="_dn4mTuiaEd6gMtZRCjS81g"/>
    <node className="SimpleTask" id="_dn4mT-iaEd6gMtZRCjS81g"/>
    <node className="CoumpoundTask" id="_dn4mUOiaEd6gMtZRCjS81g"/>
    <node className="MutliTask" id="_dn4mUeiaEd6gMtZRCjS81g"/>
    <node className="InvokerTask" id="_dn4mUuiaEd6gMtZRCjS81g"/>
    <node className="TerminatorTask" id="_dn4mU-iaEd6gMtZRCjS81g"/>
    <node className="ApplicationTask" id="_dn4mVOiaEd6gMtZRCjS81g"/>
    <node className="Decision" id="_dn4mVeiaEd6gMtZRCjS81g"/>
    <node className="Clock" id="_dn4mVuiaEd6gMtZRCjS81g"/>
    <node className="SendCommunication" id="_dn4mV-iaEd6gMtZRCjS81g"/>
    <node className="ReceiveCommunication" id="_dn4mWOiaEd6gMtZRCjS81g"/>
    <node className="BusinessProcess" id="_dn4mWeiaEd6gMtZRCjS81g"/>
    <edge id="_dn4mWuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dn4mQeiaEd6gMtZRCjS81g" target="_dn4mQuiaEd6gMtZRCjS81g">
      <attribute lowerValue="3" upperValue="*">containsDataSet</attribute>
    </edge>
    <edge id="_dn4mWuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dn4mQuiaEd6gMtZRCjS81g" target="_dn4mQeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dn4mXeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dn4mQeiaEd6gMtZRCjS81g" target="_dn4mSeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">containsControlPoint</attribute>
    </edge>
    <edge id="_dn4mXeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dn4mSeiaEd6gMtZRCjS81g" target="_dn4mQeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dn5NV-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dn4mQuiaEd6gMtZRCjS81g" target="_dn4mROiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">contains</attribute>
    </edge>
    <edge id="_dn5NV-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dn4mROiaEd6gMtZRCjS81g" target="_dn4mQuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dn5NaeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dn4mTOiaEd6gMtZRCjS81g" target="_dn4mS-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">containsOutput</attribute>
    </edge>
    <edge id="_dn5NaeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dn4mS-iaEd6gMtZRCjS81g" target="_dn4mTOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dn5NbOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dn4mTeiaEd6gMtZRCjS81g" target="_dn4mSuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">containsInput</attribute>
    </edge>
    <edge id="_dn5NbOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dn4mSuiaEd6gMtZRCjS81g" target="_dn4mTeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dn5Nb-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dn4mUOiaEd6gMtZRCjS81g" target="_dn4mQeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">containsTask</attribute>
    </edge>
    <edge id="_dn5Nb-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dn4mQeiaEd6gMtZRCjS81g" target="_dn4mUOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dn5NcuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dn4mUOiaEd6gMtZRCjS81g" target="_dn4mRuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">containsFlow</attribute>
    </edge>
    <edge id="_dn5NcuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dn4mRuiaEd6gMtZRCjS81g" target="_dn4mUOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dn5NUeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dn4mQeiaEd6gMtZRCjS81g" target="_dn4mUuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">invoker</attribute>
    </edge>
    <edge id="_dn5NUeiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_dn4mUuiaEd6gMtZRCjS81g" target="_dn4mQeiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_dn5NVOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dn4mQeiaEd6gMtZRCjS81g" target="_dn4mU-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">terminator</attribute>
    </edge>
    <edge id="_dn5NVOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_dn4mU-iaEd6gMtZRCjS81g" target="_dn4mQeiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_dn5NWuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dn4mQuiaEd6gMtZRCjS81g" target="_dn4mSOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">source</attribute>
    </edge>
    <edge id="_dn5NWuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dn4mSOiaEd6gMtZRCjS81g" target="_dn4mQuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dn5NXeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dn4mQuiaEd6gMtZRCjS81g" target="_dn4mSeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">triggers</attribute>
    </edge>
    <edge id="_dn5NXeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dn4mSeiaEd6gMtZRCjS81g" target="_dn4mQuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dn5NYOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dn4mROiaEd6gMtZRCjS81g" target="_dn4mR-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">sink</attribute>
    </edge>
    <edge id="_dn5NYOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dn4mR-iaEd6gMtZRCjS81g" target="_dn4mROiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dn5NY-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dn4mROiaEd6gMtZRCjS81g" target="_dn4mR-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">source</attribute>
    </edge>
    <edge id="_dn5NY-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dn4mR-iaEd6gMtZRCjS81g" target="_dn4mROiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dn5NZuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dn4mSeiaEd6gMtZRCjS81g" target="_dn4mSOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">sink</attribute>
    </edge>
    <edge id="_dn5NZuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dn4mSOiaEd6gMtZRCjS81g" target="_dn4mSeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dn5NdeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dn4mUOiaEd6gMtZRCjS81g" target="_dn4mWeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">realizes</attribute>
    </edge>
    <edge id="_dn5NdeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dn4mWeiaEd6gMtZRCjS81g" target="_dn4mUOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dn50YOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dn4mQeiaEd6gMtZRCjS81g" target="_dn4mQOiaEd6gMtZRCjS81g"/>
    <edge id="_dn50YOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dn4mQOiaEd6gMtZRCjS81g" target="_dn4mQeiaEd6gMtZRCjS81g"/>
    <edge id="_dn50YeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dn4mQuiaEd6gMtZRCjS81g" target="_dn4mQOiaEd6gMtZRCjS81g"/>
    <edge id="_dn50YeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dn4mQOiaEd6gMtZRCjS81g" target="_dn4mQuiaEd6gMtZRCjS81g"/>
    <edge id="_dn50YuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dn4mROiaEd6gMtZRCjS81g" target="_dn4mQ-iaEd6gMtZRCjS81g"/>
    <edge id="_dn50YuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dn4mQ-iaEd6gMtZRCjS81g" target="_dn4mROiaEd6gMtZRCjS81g"/>
    <edge id="_dn50Y-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dn4mRuiaEd6gMtZRCjS81g" target="_dn4mReiaEd6gMtZRCjS81g"/>
    <edge id="_dn50Y-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dn4mReiaEd6gMtZRCjS81g" target="_dn4mRuiaEd6gMtZRCjS81g"/>
    <edge id="_dn6bcOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dn4mR-iaEd6gMtZRCjS81g" target="_dn4mRuiaEd6gMtZRCjS81g"/>
    <edge id="_dn6bcOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dn4mRuiaEd6gMtZRCjS81g" target="_dn4mR-iaEd6gMtZRCjS81g"/>
    <edge id="_dn6bceiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dn4mSOiaEd6gMtZRCjS81g" target="_dn4mRuiaEd6gMtZRCjS81g"/>
    <edge id="_dn6bceiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dn4mRuiaEd6gMtZRCjS81g" target="_dn4mSOiaEd6gMtZRCjS81g"/>
    <edge id="_dn6bcuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dn4mSeiaEd6gMtZRCjS81g" target="_dn4mReiaEd6gMtZRCjS81g"/>
    <edge id="_dn6bcuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dn4mReiaEd6gMtZRCjS81g" target="_dn4mSeiaEd6gMtZRCjS81g"/>
    <edge id="_dn6bc-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dn4mSuiaEd6gMtZRCjS81g" target="_dn4mROiaEd6gMtZRCjS81g"/>
    <edge id="_dn6bc-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dn4mROiaEd6gMtZRCjS81g" target="_dn4mSuiaEd6gMtZRCjS81g"/>
    <edge id="_dn6bdOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dn4mS-iaEd6gMtZRCjS81g" target="_dn4mROiaEd6gMtZRCjS81g"/>
    <edge id="_dn6bdOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dn4mROiaEd6gMtZRCjS81g" target="_dn4mS-iaEd6gMtZRCjS81g"/>
    <edge id="_dn6bdeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dn4mTOiaEd6gMtZRCjS81g" target="_dn4mQuiaEd6gMtZRCjS81g"/>
    <edge id="_dn6bdeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dn4mQuiaEd6gMtZRCjS81g" target="_dn4mTOiaEd6gMtZRCjS81g"/>
    <edge id="_dn6bduiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dn4mTeiaEd6gMtZRCjS81g" target="_dn4mQuiaEd6gMtZRCjS81g"/>
    <edge id="_dn6bduiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dn4mQuiaEd6gMtZRCjS81g" target="_dn4mTeiaEd6gMtZRCjS81g"/>
    <edge id="_dn6bd-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dn4mTuiaEd6gMtZRCjS81g" target="_dn4mS-iaEd6gMtZRCjS81g"/>
    <edge id="_dn6bd-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dn4mS-iaEd6gMtZRCjS81g" target="_dn4mTuiaEd6gMtZRCjS81g"/>
    <edge id="_dn6beOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dn4mT-iaEd6gMtZRCjS81g" target="_dn4mQeiaEd6gMtZRCjS81g"/>
    <edge id="_dn6beOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dn4mQeiaEd6gMtZRCjS81g" target="_dn4mT-iaEd6gMtZRCjS81g"/>
    <edge id="_dn6beeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dn4mUOiaEd6gMtZRCjS81g" target="_dn4mQeiaEd6gMtZRCjS81g"/>
    <edge id="_dn6beeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dn4mQeiaEd6gMtZRCjS81g" target="_dn4mUOiaEd6gMtZRCjS81g"/>
    <edge id="_dn6beuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dn4mUeiaEd6gMtZRCjS81g" target="_dn4mUOiaEd6gMtZRCjS81g"/>
    <edge id="_dn6beuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dn4mUOiaEd6gMtZRCjS81g" target="_dn4mUeiaEd6gMtZRCjS81g"/>
    <edge id="_dn6be-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dn4mUuiaEd6gMtZRCjS81g" target="_dn4mT-iaEd6gMtZRCjS81g"/>
    <edge id="_dn6be-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dn4mT-iaEd6gMtZRCjS81g" target="_dn4mUuiaEd6gMtZRCjS81g"/>
    <edge id="_dn6bfOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dn4mU-iaEd6gMtZRCjS81g" target="_dn4mT-iaEd6gMtZRCjS81g"/>
    <edge id="_dn6bfOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dn4mT-iaEd6gMtZRCjS81g" target="_dn4mU-iaEd6gMtZRCjS81g"/>
    <edge id="_dn6bfeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dn4mVOiaEd6gMtZRCjS81g" target="_dn4mT-iaEd6gMtZRCjS81g"/>
    <edge id="_dn6bfeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dn4mT-iaEd6gMtZRCjS81g" target="_dn4mVOiaEd6gMtZRCjS81g"/>
    <edge id="_dn6bfuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dn4mVeiaEd6gMtZRCjS81g" target="_dn4mVOiaEd6gMtZRCjS81g"/>
    <edge id="_dn6bfuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dn4mVOiaEd6gMtZRCjS81g" target="_dn4mVeiaEd6gMtZRCjS81g"/>
    <edge id="_dn7CgOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dn4mVuiaEd6gMtZRCjS81g" target="_dn4mVOiaEd6gMtZRCjS81g"/>
    <edge id="_dn7CgOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dn4mVOiaEd6gMtZRCjS81g" target="_dn4mVuiaEd6gMtZRCjS81g"/>
    <edge id="_dn7CgeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dn4mV-iaEd6gMtZRCjS81g" target="_dn4mVOiaEd6gMtZRCjS81g"/>
    <edge id="_dn7CgeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dn4mVOiaEd6gMtZRCjS81g" target="_dn4mV-iaEd6gMtZRCjS81g"/>
    <edge id="_dn7CguiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dn4mWOiaEd6gMtZRCjS81g" target="_dn4mVOiaEd6gMtZRCjS81g"/>
    <edge id="_dn7CguiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dn4mVOiaEd6gMtZRCjS81g" target="_dn4mWOiaEd6gMtZRCjS81g"/>
    <edge id="_dn7Cg-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dn4mWeiaEd6gMtZRCjS81g" target="_dn4mVOiaEd6gMtZRCjS81g"/>
    <edge id="_dn7Cg-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dn4mVOiaEd6gMtZRCjS81g" target="_dn4mWeiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
