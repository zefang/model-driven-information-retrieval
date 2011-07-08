<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_dr3HUOiaEd6gMtZRCjS81g" projectName="COBOL">
    <node className="COBOLElement" id="_dr3HU-iaEd6gMtZRCjS81g">
      <attribute>level</attribute>
      <attribute>refined</attribute>
      <attribute>name</attribute>
    </node>
    <node className="COBOLClassifier" id="_dr3HVOiaEd6gMtZRCjS81g">
      <attribute>typeded</attribute>
      <attribute>name</attribute>
    </node>
    <node className="COBOLSimpleType" id="_dr3HVeiaEd6gMtZRCjS81g">
      <attribute>usageValue</attribute>
      <attribute>pictureString</attribute>
      <attribute>usage</attribute>
    </node>
    <node className="COBOLComposedType" id="_dr3HVuiaEd6gMtZRCjS81g"/>
    <node className="COBOLElementInitialValue" id="_dr3HV-iaEd6gMtZRCjS81g">
      <attribute>initVal</attribute>
      <attribute>valueKind</attribute>
    </node>
    <node className="COBOL88Element" id="_dr3HWOiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="COBOL88ElementValue" id="_dr3HWeiaEd6gMtZRCjS81g">
      <attribute>lowerLimit</attribute>
      <attribute>upperLimit</attribute>
      <attribute>range</attribute>
    </node>
    <node className="COBOLRedefiningElement" id="_dr3HWuiaEd6gMtZRCjS81g"/>
    <node className="COBOL66Element" id="_dr3uYOiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="COBOLSourceText" id="_dr3uYeiaEd6gMtZRCjS81g">
      <attribute>source</attribute>
      <attribute>fileName</attribute>
    </node>
    <node className="COBOLFixedLengthArray" id="_dr3uYuiaEd6gMtZRCjS81g">
      <attribute>maxUpper</attribute>
    </node>
    <node className="COBOLVariableLengthArray" id="_dr3uY-iaEd6gMtZRCjS81g">
      <attribute>minUpper</attribute>
    </node>
    <edge id="_dr3ufeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dr3HU-iaEd6gMtZRCjS81g" target="_dr3HWOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">contains</attribute>
    </edge>
    <edge id="_dr3ufeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dr3HWOiaEd6gMtZRCjS81g" target="_dr3HU-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dr3ug-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dr3HU-iaEd6gMtZRCjS81g" target="_dr3uYuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">array</attribute>
    </edge>
    <edge id="_dr3ug-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dr3uYuiaEd6gMtZRCjS81g" target="_dr3HU-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dr3uhuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dr3HVuiaEd6gMtZRCjS81g" target="_dr3HU-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">elements</attribute>
    </edge>
    <edge id="_dr3uhuiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dr3HU-iaEd6gMtZRCjS81g" target="_dr3HVuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dr3uieiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dr3HWOiaEd6gMtZRCjS81g" target="_dr3HWeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">has</attribute>
    </edge>
    <edge id="_dr3uieiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dr3HWeiaEd6gMtZRCjS81g" target="_dr3HWOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dr3ud-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dr3HU-iaEd6gMtZRCjS81g" target="_dr3HVOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">sharedType</attribute>
    </edge>
    <edge id="_dr3ud-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_dr3HVOiaEd6gMtZRCjS81g" target="_dr3HU-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_dr3ueuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dr3HU-iaEd6gMtZRCjS81g" target="_dr3HV-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">initial</attribute>
    </edge>
    <edge id="_dr3ueuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dr3HV-iaEd6gMtZRCjS81g" target="_dr3HU-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dr3ugOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dr3HU-iaEd6gMtZRCjS81g" target="_dr3uYeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">source</attribute>
    </edge>
    <edge id="_dr3ugOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dr3uYeiaEd6gMtZRCjS81g" target="_dr3HU-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dr3ujOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dr3HWuiaEd6gMtZRCjS81g" target="_dr3HU-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">redefines</attribute>
    </edge>
    <edge id="_dr3ujOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dr3HU-iaEd6gMtZRCjS81g" target="_dr3HWuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dr3uj-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dr3uYOiaEd6gMtZRCjS81g" target="_dr3HU-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">end</attribute>
    </edge>
    <edge id="_dr3uj-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dr3HU-iaEd6gMtZRCjS81g" target="_dr3uYOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dr3ukuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dr3uYOiaEd6gMtZRCjS81g" target="_dr3HU-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">start</attribute>
    </edge>
    <edge id="_dr3ukuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dr3HU-iaEd6gMtZRCjS81g" target="_dr3uYOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dr3uleiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dr3uY-iaEd6gMtZRCjS81g" target="_dr3HU-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">dependingOn</attribute>
    </edge>
    <edge id="_dr3uleiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dr3HU-iaEd6gMtZRCjS81g" target="_dr3uY-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dr48gOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dr3HVeiaEd6gMtZRCjS81g" target="_dr3HVOiaEd6gMtZRCjS81g"/>
    <edge id="_dr48gOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dr3HVOiaEd6gMtZRCjS81g" target="_dr3HVeiaEd6gMtZRCjS81g"/>
    <edge id="_dr48geiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dr3HVuiaEd6gMtZRCjS81g" target="_dr3HVOiaEd6gMtZRCjS81g"/>
    <edge id="_dr48geiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dr3HVOiaEd6gMtZRCjS81g" target="_dr3HVuiaEd6gMtZRCjS81g"/>
    <edge id="_dr48guiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dr3HWuiaEd6gMtZRCjS81g" target="_dr3HU-iaEd6gMtZRCjS81g"/>
    <edge id="_dr48guiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dr3HU-iaEd6gMtZRCjS81g" target="_dr3HWuiaEd6gMtZRCjS81g"/>
    <edge id="_dr48g-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dr3uY-iaEd6gMtZRCjS81g" target="_dr3uYuiaEd6gMtZRCjS81g"/>
    <edge id="_dr48g-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dr3uYuiaEd6gMtZRCjS81g" target="_dr3uY-iaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
