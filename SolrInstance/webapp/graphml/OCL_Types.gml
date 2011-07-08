<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_fXKykOiaEd6gMtZRCjS81g" projectName="OCLTypes">
    <node className="Type" id="_fXKyk-iaEd6gMtZRCjS81g"/>
    <node className="BasicType" id="_fXKylOiaEd6gMtZRCjS81g"/>
    <node className="InstanceType" id="_fXKyleiaEd6gMtZRCjS81g"/>
    <node className="EnumType" id="_fXKyluiaEd6gMtZRCjS81g"/>
    <node className="OclAnyType" id="_fXKyl-iaEd6gMtZRCjS81g"/>
    <node className="OclTypeType" id="_fXKymOiaEd6gMtZRCjS81g"/>
    <node className="CollectionType" id="_fXKymeiaEd6gMtZRCjS81g"/>
    <node className="IntegerType" id="_fXKymuiaEd6gMtZRCjS81g"/>
    <node className="RealType" id="_fXKym-iaEd6gMtZRCjS81g"/>
    <node className="StringType" id="_fXKynOiaEd6gMtZRCjS81g"/>
    <node className="BooleanType" id="_fXKyneiaEd6gMtZRCjS81g"/>
    <node className="Classifier" id="_fXKynuiaEd6gMtZRCjS81g"/>
    <node className="EnumLiteral" id="_fXKyn-iaEd6gMtZRCjS81g"/>
    <node className="SetType" id="_fXKyoOiaEd6gMtZRCjS81g"/>
    <node className="SequenceType" id="_fXKyoeiaEd6gMtZRCjS81g"/>
    <node className="BagType" id="_fXKyouiaEd6gMtZRCjS81g"/>
    <edge id="_fXLZoOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fXKyk-iaEd6gMtZRCjS81g" target="_fXKymeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">collectionType</attribute>
    </edge>
    <edge id="_fXLZoOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fXKymeiaEd6gMtZRCjS81g" target="_fXKyk-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fXLZo-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fXKyleiaEd6gMtZRCjS81g" target="_fXKynuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">classifier</attribute>
    </edge>
    <edge id="_fXLZo-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fXKynuiaEd6gMtZRCjS81g" target="_fXKyleiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fXLZpuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fXKyluiaEd6gMtZRCjS81g" target="_fXKyn-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">enumLiteral</attribute>
    </edge>
    <edge id="_fXLZpuiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fXKyn-iaEd6gMtZRCjS81g" target="_fXKyluiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fXKyo-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fXKyk-iaEd6gMtZRCjS81g" target="_fXKyk-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">supertype</attribute>
    </edge>
    <edge id="_fXKyo-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_fXKyk-iaEd6gMtZRCjS81g" target="_fXKyk-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_fXLZrOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fXKylOiaEd6gMtZRCjS81g" target="_fXKyk-iaEd6gMtZRCjS81g"/>
    <edge id="_fXLZrOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fXKyk-iaEd6gMtZRCjS81g" target="_fXKylOiaEd6gMtZRCjS81g"/>
    <edge id="_fXLZreiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fXKyleiaEd6gMtZRCjS81g" target="_fXKyk-iaEd6gMtZRCjS81g"/>
    <edge id="_fXLZreiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fXKyk-iaEd6gMtZRCjS81g" target="_fXKyleiaEd6gMtZRCjS81g"/>
    <edge id="_fXLZruiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fXKyluiaEd6gMtZRCjS81g" target="_fXKyk-iaEd6gMtZRCjS81g"/>
    <edge id="_fXLZruiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fXKyk-iaEd6gMtZRCjS81g" target="_fXKyluiaEd6gMtZRCjS81g"/>
    <edge id="_fXLZr-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fXKyl-iaEd6gMtZRCjS81g" target="_fXKyk-iaEd6gMtZRCjS81g"/>
    <edge id="_fXLZr-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fXKyk-iaEd6gMtZRCjS81g" target="_fXKyl-iaEd6gMtZRCjS81g"/>
    <edge id="_fXMAsOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fXKymOiaEd6gMtZRCjS81g" target="_fXKyk-iaEd6gMtZRCjS81g"/>
    <edge id="_fXMAsOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fXKyk-iaEd6gMtZRCjS81g" target="_fXKymOiaEd6gMtZRCjS81g"/>
    <edge id="_fXMAseiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fXKymeiaEd6gMtZRCjS81g" target="_fXKyk-iaEd6gMtZRCjS81g"/>
    <edge id="_fXMAseiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fXKyk-iaEd6gMtZRCjS81g" target="_fXKymeiaEd6gMtZRCjS81g"/>
    <edge id="_fXMAsuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fXKymuiaEd6gMtZRCjS81g" target="_fXKylOiaEd6gMtZRCjS81g"/>
    <edge id="_fXMAsuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fXKylOiaEd6gMtZRCjS81g" target="_fXKymuiaEd6gMtZRCjS81g"/>
    <edge id="_fXMAs-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fXKym-iaEd6gMtZRCjS81g" target="_fXKylOiaEd6gMtZRCjS81g"/>
    <edge id="_fXMAs-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fXKylOiaEd6gMtZRCjS81g" target="_fXKym-iaEd6gMtZRCjS81g"/>
    <edge id="_fXMAtOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fXKynOiaEd6gMtZRCjS81g" target="_fXKylOiaEd6gMtZRCjS81g"/>
    <edge id="_fXMAtOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fXKylOiaEd6gMtZRCjS81g" target="_fXKynOiaEd6gMtZRCjS81g"/>
    <edge id="_fXMAteiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fXKyneiaEd6gMtZRCjS81g" target="_fXKylOiaEd6gMtZRCjS81g"/>
    <edge id="_fXMAteiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fXKylOiaEd6gMtZRCjS81g" target="_fXKyneiaEd6gMtZRCjS81g"/>
    <edge id="_fXMAtuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fXKyoOiaEd6gMtZRCjS81g" target="_fXKymeiaEd6gMtZRCjS81g"/>
    <edge id="_fXMAtuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fXKymeiaEd6gMtZRCjS81g" target="_fXKyoOiaEd6gMtZRCjS81g"/>
    <edge id="_fXMAt-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fXKyoeiaEd6gMtZRCjS81g" target="_fXKymeiaEd6gMtZRCjS81g"/>
    <edge id="_fXMAt-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fXKymeiaEd6gMtZRCjS81g" target="_fXKyoeiaEd6gMtZRCjS81g"/>
    <edge id="_fXMAuOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fXKyouiaEd6gMtZRCjS81g" target="_fXKymeiaEd6gMtZRCjS81g"/>
    <edge id="_fXMAuOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fXKymeiaEd6gMtZRCjS81g" target="_fXKyouiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
