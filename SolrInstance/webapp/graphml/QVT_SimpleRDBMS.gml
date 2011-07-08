<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_f605QOiaEd6gMtZRCjS81g" projectName="SimpleRDBMS">
    <node className="RModelElement" id="_f605Q-iaEd6gMtZRCjS81g">
      <attribute>kind</attribute>
      <attribute>name</attribute>
    </node>
    <node className="Schema" id="_f605ROiaEd6gMtZRCjS81g"/>
    <node className="Table" id="_f605ReiaEd6gMtZRCjS81g"/>
    <node className="Column" id="_f605RuiaEd6gMtZRCjS81g">
      <attribute>type</attribute>
    </node>
    <node className="Key" id="_f605R-iaEd6gMtZRCjS81g"/>
    <node className="ForeignKey" id="_f605SOiaEd6gMtZRCjS81g"/>
    <edge id="_f605TOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_f605ROiaEd6gMtZRCjS81g" target="_f605ReiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">tables</attribute>
    </edge>
    <edge id="_f605TOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_f605ReiaEd6gMtZRCjS81g" target="_f605ROiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_f605T-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_f605ReiaEd6gMtZRCjS81g" target="_f605RuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">column</attribute>
    </edge>
    <edge id="_f605T-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_f605RuiaEd6gMtZRCjS81g" target="_f605ReiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_f605UuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_f605ReiaEd6gMtZRCjS81g" target="_f605R-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">key</attribute>
    </edge>
    <edge id="_f605UuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_f605R-iaEd6gMtZRCjS81g" target="_f605ReiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_f61gUOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_f605ReiaEd6gMtZRCjS81g" target="_f605SOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">foreignKey</attribute>
    </edge>
    <edge id="_f61gUOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_f605SOiaEd6gMtZRCjS81g" target="_f605ReiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_f61gU-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_f605RuiaEd6gMtZRCjS81g" target="_f605R-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">key</attribute>
    </edge>
    <edge id="_f61gU-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_f605R-iaEd6gMtZRCjS81g" target="_f605RuiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_f61gVuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_f605RuiaEd6gMtZRCjS81g" target="_f605SOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">foreignKey</attribute>
    </edge>
    <edge id="_f61gVuiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_f605SOiaEd6gMtZRCjS81g" target="_f605RuiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_f61gWeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_f605R-iaEd6gMtZRCjS81g" target="_f605SOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">refersToOpposite</attribute>
    </edge>
    <edge id="_f61gWeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_f605SOiaEd6gMtZRCjS81g" target="_f605R-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_f61gXeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_f605ROiaEd6gMtZRCjS81g" target="_f605Q-iaEd6gMtZRCjS81g"/>
    <edge id="_f61gXeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_f605Q-iaEd6gMtZRCjS81g" target="_f605ROiaEd6gMtZRCjS81g"/>
    <edge id="_f61gXuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_f605ReiaEd6gMtZRCjS81g" target="_f605Q-iaEd6gMtZRCjS81g"/>
    <edge id="_f61gXuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_f605Q-iaEd6gMtZRCjS81g" target="_f605ReiaEd6gMtZRCjS81g"/>
    <edge id="_f61gX-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_f605RuiaEd6gMtZRCjS81g" target="_f605Q-iaEd6gMtZRCjS81g"/>
    <edge id="_f61gX-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_f605Q-iaEd6gMtZRCjS81g" target="_f605RuiaEd6gMtZRCjS81g"/>
    <edge id="_f61gYOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_f605R-iaEd6gMtZRCjS81g" target="_f605Q-iaEd6gMtZRCjS81g"/>
    <edge id="_f61gYOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_f605Q-iaEd6gMtZRCjS81g" target="_f605R-iaEd6gMtZRCjS81g"/>
    <edge id="_f62HYOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_f605SOiaEd6gMtZRCjS81g" target="_f605Q-iaEd6gMtZRCjS81g"/>
    <edge id="_f62HYOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_f605Q-iaEd6gMtZRCjS81g" target="_f605SOiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
