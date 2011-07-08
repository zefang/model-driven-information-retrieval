<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_es9_AOiaEd6gMtZRCjS81g" projectName="MetaH">
    <node className="METAHFile" id="_es9_A-iaEd6gMtZRCjS81g"/>
    <node className="METAHEntry" id="_es9_BOiaEd6gMtZRCjS81g"/>
    <node className="Package" id="_es9_BeiaEd6gMtZRCjS81g">
      <attribute>packName</attribute>
    </node>
    <node className="PackageImplementation" id="_es9_BuiaEd6gMtZRCjS81g">
      <attribute>implementationName</attribute>
      <attribute>implements</attribute>
    </node>
    <node className="Data" id="_es9_B-iaEd6gMtZRCjS81g">
      <attribute>dataName</attribute>
    </node>
    <node className="Attribute" id="_es9_COiaEd6gMtZRCjS81g">
      <attribute>attName</attribute>
      <attribute>attValue</attribute>
      <attribute>attValueType</attribute>
      <attribute>attType</attribute>
    </node>
    <node className="ProcessDeclaration" id="_es9_CeiaEd6gMtZRCjS81g">
      <attribute>procDecName</attribute>
    </node>
    <node className="ProcessImplementation" id="_es9_CuiaEd6gMtZRCjS81g">
      <attribute>procImpName</attribute>
      <attribute>declaration</attribute>
    </node>
    <node className="ProcessAttribute" id="_es9_C-iaEd6gMtZRCjS81g">
      <attribute>attName</attribute>
      <attribute>attValue</attribute>
      <attribute>attValueType</attribute>
    </node>
    <node className="Process" id="_es9_DOiaEd6gMtZRCjS81g">
      <attribute>procName</attribute>
      <attribute>periodic</attribute>
      <attribute>declaration</attribute>
      <attribute>implementation</attribute>
    </node>
    <node className="Port" id="_es9_DeiaEd6gMtZRCjS81g">
      <attribute>portName</attribute>
      <attribute>portCom</attribute>
      <attribute>portPackage</attribute>
      <attribute>portType</attribute>
    </node>
    <node className="Connection" id="_es9_DuiaEd6gMtZRCjS81g">
      <attribute>compSrc</attribute>
      <attribute>portSrc</attribute>
      <attribute>compDest</attribute>
      <attribute>portDest</attribute>
    </node>
    <node className="MacroDeclaration" id="_es9_D-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="MacroImplementation" id="_es9_EOiaEd6gMtZRCjS81g">
      <attribute>macroImpName</attribute>
      <attribute>declaration</attribute>
    </node>
    <edge id="_es-mJuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_es9_A-iaEd6gMtZRCjS81g" target="_es9_BOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">entries</attribute>
    </edge>
    <edge id="_es-mJuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_es9_BOiaEd6gMtZRCjS81g" target="_es9_A-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_es-mKeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_es9_BeiaEd6gMtZRCjS81g" target="_es9_B-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">data</attribute>
    </edge>
    <edge id="_es-mKeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_es9_B-iaEd6gMtZRCjS81g" target="_es9_BeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_es-mLOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_es9_BuiaEd6gMtZRCjS81g" target="_es9_COiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">attributes</attribute>
    </edge>
    <edge id="_es-mLOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_es9_COiaEd6gMtZRCjS81g" target="_es9_BuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_es-mL-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_es9_CeiaEd6gMtZRCjS81g" target="_es9_DeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">ports</attribute>
    </edge>
    <edge id="_es-mL-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_es9_DeiaEd6gMtZRCjS81g" target="_es9_CeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_es-mMuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_es9_CuiaEd6gMtZRCjS81g" target="_es9_C-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">processAttributes</attribute>
    </edge>
    <edge id="_es-mMuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_es9_C-iaEd6gMtZRCjS81g" target="_es9_CuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_es-mNeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_es9_D-iaEd6gMtZRCjS81g" target="_es9_DeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">ports</attribute>
    </edge>
    <edge id="_es-mNeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_es9_DeiaEd6gMtZRCjS81g" target="_es9_D-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_es-mOOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_es9_EOiaEd6gMtZRCjS81g" target="_es9_DOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">process</attribute>
    </edge>
    <edge id="_es-mOOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_es9_DOiaEd6gMtZRCjS81g" target="_es9_EOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_es-mO-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_es9_EOiaEd6gMtZRCjS81g" target="_es9_DuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">connections</attribute>
    </edge>
    <edge id="_es-mO-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_es9_DuiaEd6gMtZRCjS81g" target="_es9_EOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_es_NIOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_es9_BeiaEd6gMtZRCjS81g" target="_es9_BOiaEd6gMtZRCjS81g"/>
    <edge id="_es_NIOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_es9_BOiaEd6gMtZRCjS81g" target="_es9_BeiaEd6gMtZRCjS81g"/>
    <edge id="_es_NIeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_es9_BuiaEd6gMtZRCjS81g" target="_es9_BOiaEd6gMtZRCjS81g"/>
    <edge id="_es_NIeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_es9_BOiaEd6gMtZRCjS81g" target="_es9_BuiaEd6gMtZRCjS81g"/>
    <edge id="_es_NIuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_es9_CeiaEd6gMtZRCjS81g" target="_es9_BOiaEd6gMtZRCjS81g"/>
    <edge id="_es_NIuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_es9_BOiaEd6gMtZRCjS81g" target="_es9_CeiaEd6gMtZRCjS81g"/>
    <edge id="_es_NI-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_es9_CuiaEd6gMtZRCjS81g" target="_es9_BOiaEd6gMtZRCjS81g"/>
    <edge id="_es_NI-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_es9_BOiaEd6gMtZRCjS81g" target="_es9_CuiaEd6gMtZRCjS81g"/>
    <edge id="_es_0MOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_es9_DuiaEd6gMtZRCjS81g" target="_es9_BOiaEd6gMtZRCjS81g"/>
    <edge id="_es_0MOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_es9_BOiaEd6gMtZRCjS81g" target="_es9_DuiaEd6gMtZRCjS81g"/>
    <edge id="_es_0MeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_es9_D-iaEd6gMtZRCjS81g" target="_es9_BOiaEd6gMtZRCjS81g"/>
    <edge id="_es_0MeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_es9_BOiaEd6gMtZRCjS81g" target="_es9_D-iaEd6gMtZRCjS81g"/>
    <edge id="_es_0MuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_es9_EOiaEd6gMtZRCjS81g" target="_es9_BOiaEd6gMtZRCjS81g"/>
    <edge id="_es_0MuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_es9_BOiaEd6gMtZRCjS81g" target="_es9_EOiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
