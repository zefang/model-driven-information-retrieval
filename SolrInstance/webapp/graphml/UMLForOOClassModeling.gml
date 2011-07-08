<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_gncHoOiaEd6gMtZRCjS81g" projectName="UMLForOOClassModeling">
    <node className="MultiplicityType" id="_gncHo-iaEd6gMtZRCjS81g">
      <attribute>lower</attribute>
      <attribute>upper</attribute>
      <attribute>isOrdered</attribute>
      <attribute>isUnique</attribute>
    </node>
    <node className="ModelElement" id="_gncHpOiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Feature" id="_gncHpeiaEd6gMtZRCjS81g">
      <attribute>ownerScope</attribute>
      <attribute>visibility</attribute>
    </node>
    <node className="NameSpace" id="_gncHpuiaEd6gMtZRCjS81g"/>
    <node className="GeneralizableElement" id="_gncHp-iaEd6gMtZRCjS81g">
      <attribute>isRoot</attribute>
      <attribute>isLeaf</attribute>
      <attribute>isAbstract</attribute>
    </node>
    <node className="Classifier" id="_gncHqOiaEd6gMtZRCjS81g"/>
    <node className="Class" id="_gncHqeiaEd6gMtZRCjS81g">
      <attribute>isActive</attribute>
    </node>
    <node className="StructuralFeature" id="_gncHquiaEd6gMtZRCjS81g">
      <attribute>isChangeable</attribute>
      <attribute>targetScope</attribute>
    </node>
    <node className="Attribute" id="_gncHq-iaEd6gMtZRCjS81g">
      <attribute>initialValue</attribute>
    </node>
    <node className="BehavioralFeature" id="_gncHrOiaEd6gMtZRCjS81g">
      <attribute>isQuery</attribute>
    </node>
    <node className="Operation" id="_gncHreiaEd6gMtZRCjS81g">
      <attribute>isRoot</attribute>
      <attribute>isLeaf</attribute>
      <attribute>isAbstract</attribute>
      <attribute>specification</attribute>
    </node>
    <edge id="_gncuvOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gncHqOiaEd6gMtZRCjS81g" target="_gncHpeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">feature</attribute>
    </edge>
    <edge id="_gncuvOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gncHpeiaEd6gMtZRCjS81g" target="_gncHqOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gncuv-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gncHquiaEd6gMtZRCjS81g" target="_gncHo-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">multiplicity</attribute>
    </edge>
    <edge id="_gncuv-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gncHo-iaEd6gMtZRCjS81g" target="_gncHquiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gndVwOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gncHpeiaEd6gMtZRCjS81g" target="_gncHpOiaEd6gMtZRCjS81g"/>
    <edge id="_gndVwOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gncHpOiaEd6gMtZRCjS81g" target="_gncHpeiaEd6gMtZRCjS81g"/>
    <edge id="_gndVweiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gncHpuiaEd6gMtZRCjS81g" target="_gncHpOiaEd6gMtZRCjS81g"/>
    <edge id="_gndVweiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gncHpOiaEd6gMtZRCjS81g" target="_gncHpuiaEd6gMtZRCjS81g"/>
    <edge id="_gndVwuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gncHp-iaEd6gMtZRCjS81g" target="_gncHpOiaEd6gMtZRCjS81g"/>
    <edge id="_gndVwuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gncHpOiaEd6gMtZRCjS81g" target="_gncHp-iaEd6gMtZRCjS81g"/>
    <edge id="_gndVw-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gncHqOiaEd6gMtZRCjS81g" target="_gncHpuiaEd6gMtZRCjS81g"/>
    <edge id="_gndVw-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gncHpuiaEd6gMtZRCjS81g" target="_gncHqOiaEd6gMtZRCjS81g"/>
    <edge id="_gndVxOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gncHqOiaEd6gMtZRCjS81g" target="_gncHp-iaEd6gMtZRCjS81g"/>
    <edge id="_gndVxOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gncHp-iaEd6gMtZRCjS81g" target="_gncHqOiaEd6gMtZRCjS81g"/>
    <edge id="_gndVxeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gncHqeiaEd6gMtZRCjS81g" target="_gncHqOiaEd6gMtZRCjS81g"/>
    <edge id="_gndVxeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gncHqOiaEd6gMtZRCjS81g" target="_gncHqeiaEd6gMtZRCjS81g"/>
    <edge id="_gndVxuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gncHquiaEd6gMtZRCjS81g" target="_gncHpeiaEd6gMtZRCjS81g"/>
    <edge id="_gndVxuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gncHpeiaEd6gMtZRCjS81g" target="_gncHquiaEd6gMtZRCjS81g"/>
    <edge id="_gndVx-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gncHq-iaEd6gMtZRCjS81g" target="_gncHquiaEd6gMtZRCjS81g"/>
    <edge id="_gndVx-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gncHquiaEd6gMtZRCjS81g" target="_gncHq-iaEd6gMtZRCjS81g"/>
    <edge id="_gndVyOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gncHrOiaEd6gMtZRCjS81g" target="_gncHpeiaEd6gMtZRCjS81g"/>
    <edge id="_gndVyOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gncHpeiaEd6gMtZRCjS81g" target="_gncHrOiaEd6gMtZRCjS81g"/>
    <edge id="_gndVyeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gncHreiaEd6gMtZRCjS81g" target="_gncHrOiaEd6gMtZRCjS81g"/>
    <edge id="_gndVyeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gncHrOiaEd6gMtZRCjS81g" target="_gncHreiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
