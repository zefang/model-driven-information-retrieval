<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_eKrKQOiaEd6gMtZRCjS81g" projectName="ExtendedUMLCorePackage">
    <node className="ModelElement" id="_eKrKQ-iaEd6gMtZRCjS81g"/>
    <node className="Name" id="_eKrKROiaEd6gMtZRCjS81g"/>
    <node className="AssociationEnd" id="_eKrKReiaEd6gMtZRCjS81g">
      <attribute>isNavigable</attribute>
      <attribute>isOrdered</attribute>
    </node>
    <node className="AggregationKind" id="_eKrKRuiaEd6gMtZRCjS81g"/>
    <node className="Multiplicity" id="_eKrKR-iaEd6gMtZRCjS81g"/>
    <node className="ChangeableKind" id="_eKrKSOiaEd6gMtZRCjS81g"/>
    <node className="ScopeKind" id="_eKrKSeiaEd6gMtZRCjS81g"/>
    <node className="RfIntegretyKind" id="_eKrKSuiaEd6gMtZRCjS81g"/>
    <node className="RlIntegretyKind" id="_eKrKS-iaEd6gMtZRCjS81g"/>
    <node className="Namespace" id="_eKrKTOiaEd6gMtZRCjS81g"/>
    <node className="GeneralizableElement" id="_eKrKTeiaEd6gMtZRCjS81g"/>
    <node className="Classifier" id="_eKrKTuiaEd6gMtZRCjS81g"/>
    <node className="Class" id="_eKrKT-iaEd6gMtZRCjS81g">
      <attribute>isActive</attribute>
    </node>
    <node className="Key" id="_eKrxUOiaEd6gMtZRCjS81g"/>
    <node className="Feature" id="_eKrxUeiaEd6gMtZRCjS81g"/>
    <node className="StructureFeature" id="_eKrxUuiaEd6gMtZRCjS81g"/>
    <node className="Constraint" id="_eKrxU-iaEd6gMtZRCjS81g"/>
    <node className="Attribute" id="_eKrxVOiaEd6gMtZRCjS81g">
      <attribute>isKey</attribute>
      <attribute>isUnique</attribute>
    </node>
    <node className="Expression" id="_eKrxVeiaEd6gMtZRCjS81g"/>
    <edge id="_eKrxc-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eKrKT-iaEd6gMtZRCjS81g" target="_eKrxUOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">key</attribute>
    </edge>
    <edge id="_eKrxc-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eKrxUOiaEd6gMtZRCjS81g" target="_eKrKT-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eKrxW-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eKrKQ-iaEd6gMtZRCjS81g" target="_eKrKROiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">name</attribute>
    </edge>
    <edge id="_eKrxW-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eKrKROiaEd6gMtZRCjS81g" target="_eKrKQ-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eKrxXuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eKrKReiaEd6gMtZRCjS81g" target="_eKrKRuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">aggregation</attribute>
    </edge>
    <edge id="_eKrxXuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eKrKRuiaEd6gMtZRCjS81g" target="_eKrKReiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eKrxYeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eKrKReiaEd6gMtZRCjS81g" target="_eKrKR-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">multiplicity</attribute>
    </edge>
    <edge id="_eKrxYeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eKrKR-iaEd6gMtZRCjS81g" target="_eKrKReiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eKrxZOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eKrKReiaEd6gMtZRCjS81g" target="_eKrKSOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">changeable</attribute>
    </edge>
    <edge id="_eKrxZOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eKrKSOiaEd6gMtZRCjS81g" target="_eKrKReiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eKrxZ-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eKrKReiaEd6gMtZRCjS81g" target="_eKrKSeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">TargetScope</attribute>
    </edge>
    <edge id="_eKrxZ-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eKrKSeiaEd6gMtZRCjS81g" target="_eKrKReiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eKrxauiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eKrKReiaEd6gMtZRCjS81g" target="_eKrKS-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">rfIntegrety</attribute>
    </edge>
    <edge id="_eKrxauiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eKrKS-iaEd6gMtZRCjS81g" target="_eKrKReiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eKrxbeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eKrKReiaEd6gMtZRCjS81g" target="_eKrKS-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">rlIntegrety</attribute>
    </edge>
    <edge id="_eKrxbeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eKrKS-iaEd6gMtZRCjS81g" target="_eKrKReiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eKrxcOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eKrKT-iaEd6gMtZRCjS81g" target="_eKrKR-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">mutliplicity</attribute>
    </edge>
    <edge id="_eKrxcOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eKrKR-iaEd6gMtZRCjS81g" target="_eKrKT-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eKrxduiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eKrxVOiaEd6gMtZRCjS81g" target="_eKrxVeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">initialValue</attribute>
    </edge>
    <edge id="_eKrxduiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eKrxVeiaEd6gMtZRCjS81g" target="_eKrxVOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eKsYYuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eKrKReiaEd6gMtZRCjS81g" target="_eKrKQ-iaEd6gMtZRCjS81g"/>
    <edge id="_eKsYYuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eKrKQ-iaEd6gMtZRCjS81g" target="_eKrKReiaEd6gMtZRCjS81g"/>
    <edge id="_eKsYY-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eKrKTOiaEd6gMtZRCjS81g" target="_eKrKQ-iaEd6gMtZRCjS81g"/>
    <edge id="_eKsYY-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eKrKQ-iaEd6gMtZRCjS81g" target="_eKrKTOiaEd6gMtZRCjS81g"/>
    <edge id="_eKsYZOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eKrKTeiaEd6gMtZRCjS81g" target="_eKrKTOiaEd6gMtZRCjS81g"/>
    <edge id="_eKsYZOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eKrKTOiaEd6gMtZRCjS81g" target="_eKrKTeiaEd6gMtZRCjS81g"/>
    <edge id="_eKs_cOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eKrKTuiaEd6gMtZRCjS81g" target="_eKrKTeiaEd6gMtZRCjS81g"/>
    <edge id="_eKs_cOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eKrKTeiaEd6gMtZRCjS81g" target="_eKrKTuiaEd6gMtZRCjS81g"/>
    <edge id="_eKs_ceiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eKrKT-iaEd6gMtZRCjS81g" target="_eKrKTuiaEd6gMtZRCjS81g"/>
    <edge id="_eKs_ceiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eKrKTuiaEd6gMtZRCjS81g" target="_eKrKT-iaEd6gMtZRCjS81g"/>
    <edge id="_eKs_cuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eKrxUOiaEd6gMtZRCjS81g" target="_eKrKQ-iaEd6gMtZRCjS81g"/>
    <edge id="_eKs_cuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eKrKQ-iaEd6gMtZRCjS81g" target="_eKrxUOiaEd6gMtZRCjS81g"/>
    <edge id="_eKs_c-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eKrxUeiaEd6gMtZRCjS81g" target="_eKrKQ-iaEd6gMtZRCjS81g"/>
    <edge id="_eKs_c-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eKrKQ-iaEd6gMtZRCjS81g" target="_eKrxUeiaEd6gMtZRCjS81g"/>
    <edge id="_eKs_dOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eKrxUuiaEd6gMtZRCjS81g" target="_eKrxUeiaEd6gMtZRCjS81g"/>
    <edge id="_eKs_dOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eKrxUeiaEd6gMtZRCjS81g" target="_eKrxUuiaEd6gMtZRCjS81g"/>
    <edge id="_eKs_deiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eKrxU-iaEd6gMtZRCjS81g" target="_eKrxUeiaEd6gMtZRCjS81g"/>
    <edge id="_eKs_deiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eKrxUeiaEd6gMtZRCjS81g" target="_eKrxU-iaEd6gMtZRCjS81g"/>
    <edge id="_eKs_duiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eKrxVOiaEd6gMtZRCjS81g" target="_eKrxUuiaEd6gMtZRCjS81g"/>
    <edge id="_eKs_duiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eKrxUuiaEd6gMtZRCjS81g" target="_eKrxVOiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
