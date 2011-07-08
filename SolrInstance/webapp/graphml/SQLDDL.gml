<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_gLa6AOiaEd6gMtZRCjS81g" projectName="SQLDDL">
    <node className="LocatedElement" id="_gLa6A-iaEd6gMtZRCjS81g">
      <attribute>location</attribute>
      <attribute>commentsBefore</attribute>
      <attribute>commentsAfter</attribute>
    </node>
    <node className="NamedElement" id="_gLa6BOiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Database" id="_gLa6BeiaEd6gMtZRCjS81g"/>
    <node className="Table" id="_gLa6BuiaEd6gMtZRCjS81g"/>
    <node className="TableElement" id="_gLa6B-iaEd6gMtZRCjS81g"/>
    <node className="Column" id="_gLa6COiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>canBeNull</attribute>
    </node>
    <node className="Key" id="_gLa6CeiaEd6gMtZRCjS81g">
      <attribute>isUnique</attribute>
      <attribute>name</attribute>
    </node>
    <node className="SimpleKey" id="_gLa6CuiaEd6gMtZRCjS81g"/>
    <node className="PrimaryKey" id="_gLa6C-iaEd6gMtZRCjS81g"/>
    <node className="ForeignKey" id="_gLa6DOiaEd6gMtZRCjS81g"/>
    <node className="Type" id="_gLa6DeiaEd6gMtZRCjS81g">
      <attribute>length</attribute>
      <attribute>isUnsigned</attribute>
    </node>
    <node className="Parameter" id="_gLa6DuiaEd6gMtZRCjS81g"/>
    <node className="Value" id="_gLa6D-iaEd6gMtZRCjS81g"/>
    <node className="IntegerVal" id="_gLa6EOiaEd6gMtZRCjS81g">
      <attribute>value</attribute>
    </node>
    <node className="NullVal" id="_gLa6EeiaEd6gMtZRCjS81g"/>
    <node className="StringVal" id="_gLa6EuiaEd6gMtZRCjS81g">
      <attribute>value</attribute>
    </node>
    <edge id="_gLa6H-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gLa6BeiaEd6gMtZRCjS81g" target="_gLa6BuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">tables</attribute>
    </edge>
    <edge id="_gLa6H-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gLa6BuiaEd6gMtZRCjS81g" target="_gLa6BeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gLa6JeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gLa6BuiaEd6gMtZRCjS81g" target="_gLa6B-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">elements</attribute>
    </edge>
    <edge id="_gLa6JeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gLa6B-iaEd6gMtZRCjS81g" target="_gLa6BuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gLa6KOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gLa6BuiaEd6gMtZRCjS81g" target="_gLa6DuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">parameters</attribute>
    </edge>
    <edge id="_gLa6KOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gLa6DuiaEd6gMtZRCjS81g" target="_gLa6BuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gLbhFOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gLa6COiaEd6gMtZRCjS81g" target="_gLa6DeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">type</attribute>
    </edge>
    <edge id="_gLbhFOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gLa6DeiaEd6gMtZRCjS81g" target="_gLa6COiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gLbhF-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gLa6COiaEd6gMtZRCjS81g" target="_gLa6D-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">default</attribute>
    </edge>
    <edge id="_gLbhF-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gLa6D-iaEd6gMtZRCjS81g" target="_gLa6COiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gLbhHeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gLa6DuiaEd6gMtZRCjS81g" target="_gLa6D-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">value</attribute>
    </edge>
    <edge id="_gLbhHeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gLa6D-iaEd6gMtZRCjS81g" target="_gLa6DuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gLa6IuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gLa6BuiaEd6gMtZRCjS81g" target="_gLa6DOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">referencedBy</attribute>
    </edge>
    <edge id="_gLa6IuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gLa6DOiaEd6gMtZRCjS81g" target="_gLa6BuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gLbhEeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gLa6COiaEd6gMtZRCjS81g" target="_gLa6DOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">referencedBy</attribute>
    </edge>
    <edge id="_gLbhEeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gLa6DOiaEd6gMtZRCjS81g" target="_gLa6COiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gLbhGuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gLa6COiaEd6gMtZRCjS81g" target="_gLa6CeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">keys</attribute>
    </edge>
    <edge id="_gLbhGuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gLa6CeiaEd6gMtZRCjS81g" target="_gLa6COiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gLbhI-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gLa6BOiaEd6gMtZRCjS81g" target="_gLa6A-iaEd6gMtZRCjS81g"/>
    <edge id="_gLbhI-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gLa6A-iaEd6gMtZRCjS81g" target="_gLa6BOiaEd6gMtZRCjS81g"/>
    <edge id="_gLcIIOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gLa6BeiaEd6gMtZRCjS81g" target="_gLa6BOiaEd6gMtZRCjS81g"/>
    <edge id="_gLcIIOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gLa6BOiaEd6gMtZRCjS81g" target="_gLa6BeiaEd6gMtZRCjS81g"/>
    <edge id="_gLcIIeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gLa6BuiaEd6gMtZRCjS81g" target="_gLa6BOiaEd6gMtZRCjS81g"/>
    <edge id="_gLcIIeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gLa6BOiaEd6gMtZRCjS81g" target="_gLa6BuiaEd6gMtZRCjS81g"/>
    <edge id="_gLcIIuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gLa6B-iaEd6gMtZRCjS81g" target="_gLa6A-iaEd6gMtZRCjS81g"/>
    <edge id="_gLcIIuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gLa6A-iaEd6gMtZRCjS81g" target="_gLa6B-iaEd6gMtZRCjS81g"/>
    <edge id="_gLcII-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gLa6COiaEd6gMtZRCjS81g" target="_gLa6B-iaEd6gMtZRCjS81g"/>
    <edge id="_gLcII-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gLa6B-iaEd6gMtZRCjS81g" target="_gLa6COiaEd6gMtZRCjS81g"/>
    <edge id="_gLcIJOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gLa6CeiaEd6gMtZRCjS81g" target="_gLa6B-iaEd6gMtZRCjS81g"/>
    <edge id="_gLcIJOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gLa6B-iaEd6gMtZRCjS81g" target="_gLa6CeiaEd6gMtZRCjS81g"/>
    <edge id="_gLcIJeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gLa6CuiaEd6gMtZRCjS81g" target="_gLa6CeiaEd6gMtZRCjS81g"/>
    <edge id="_gLcIJeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gLa6CeiaEd6gMtZRCjS81g" target="_gLa6CuiaEd6gMtZRCjS81g"/>
    <edge id="_gLcIJuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gLa6C-iaEd6gMtZRCjS81g" target="_gLa6CeiaEd6gMtZRCjS81g"/>
    <edge id="_gLcIJuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gLa6CeiaEd6gMtZRCjS81g" target="_gLa6C-iaEd6gMtZRCjS81g"/>
    <edge id="_gLcIJ-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gLa6DOiaEd6gMtZRCjS81g" target="_gLa6CeiaEd6gMtZRCjS81g"/>
    <edge id="_gLcIJ-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gLa6CeiaEd6gMtZRCjS81g" target="_gLa6DOiaEd6gMtZRCjS81g"/>
    <edge id="_gLcIKOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gLa6DeiaEd6gMtZRCjS81g" target="_gLa6BOiaEd6gMtZRCjS81g"/>
    <edge id="_gLcIKOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gLa6BOiaEd6gMtZRCjS81g" target="_gLa6DeiaEd6gMtZRCjS81g"/>
    <edge id="_gLcIKeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gLa6DuiaEd6gMtZRCjS81g" target="_gLa6BOiaEd6gMtZRCjS81g"/>
    <edge id="_gLcIKeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gLa6BOiaEd6gMtZRCjS81g" target="_gLa6DuiaEd6gMtZRCjS81g"/>
    <edge id="_gLcIKuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gLa6D-iaEd6gMtZRCjS81g" target="_gLa6A-iaEd6gMtZRCjS81g"/>
    <edge id="_gLcIKuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gLa6A-iaEd6gMtZRCjS81g" target="_gLa6D-iaEd6gMtZRCjS81g"/>
    <edge id="_gLcIK-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gLa6EOiaEd6gMtZRCjS81g" target="_gLa6D-iaEd6gMtZRCjS81g"/>
    <edge id="_gLcIK-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gLa6D-iaEd6gMtZRCjS81g" target="_gLa6EOiaEd6gMtZRCjS81g"/>
    <edge id="_gLcILOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gLa6EeiaEd6gMtZRCjS81g" target="_gLa6D-iaEd6gMtZRCjS81g"/>
    <edge id="_gLcILOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gLa6D-iaEd6gMtZRCjS81g" target="_gLa6EeiaEd6gMtZRCjS81g"/>
    <edge id="_gLcILeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gLa6EuiaEd6gMtZRCjS81g" target="_gLa6D-iaEd6gMtZRCjS81g"/>
    <edge id="_gLcILeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gLa6D-iaEd6gMtZRCjS81g" target="_gLa6EuiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
