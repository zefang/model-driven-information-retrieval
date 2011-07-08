<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_eOSe8OiaEd6gMtZRCjS81g" projectName="GUI">
    <node className="LocatedElement" id="_eOSe8-iaEd6gMtZRCjS81g">
      <attribute>location</attribute>
    </node>
    <node className="Named" id="_eOSe9OiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="GUI" id="_eOSe9eiaEd6gMtZRCjS81g"/>
    <node className="Tab" id="_eOSe9uiaEd6gMtZRCjS81g">
      <attribute>title</attribute>
    </node>
    <node className="Composant" id="_eOSe9-iaEd6gMtZRCjS81g"/>
    <node className="Group" id="_eOSe-OiaEd6gMtZRCjS81g">
      <attribute>title</attribute>
      <attribute>layout</attribute>
      <attribute>description</attribute>
    </node>
    <node className="Label" id="_eOSe-eiaEd6gMtZRCjS81g">
      <attribute>text</attribute>
    </node>
    <node className="TextArea" id="_eOSe-uiaEd6gMtZRCjS81g">
      <attribute>text</attribute>
      <attribute>nbRows</attribute>
    </node>
    <node className="Table" id="_eOSe--iaEd6gMtZRCjS81g"/>
    <node className="Column" id="_eOSe_OiaEd6gMtZRCjS81g">
      <attribute>title</attribute>
    </node>
    <node className="ComboBox" id="_eOSe_eiaEd6gMtZRCjS81g"/>
    <node className="Row" id="_eOSe_uiaEd6gMtZRCjS81g">
      <attribute>text</attribute>
    </node>
    <node className="Item" id="_eOSe_-iaEd6gMtZRCjS81g">
      <attribute>text</attribute>
    </node>
    <node className="Button" id="_eOSfAOiaEd6gMtZRCjS81g">
      <attribute>title</attribute>
    </node>
    <edge id="_eOTGBOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eOSe9eiaEd6gMtZRCjS81g" target="_eOSe9uiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">guiTabs</attribute>
    </edge>
    <edge id="_eOTGBOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eOSe9uiaEd6gMtZRCjS81g" target="_eOSe9eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eOTGCuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eOSe-OiaEd6gMtZRCjS81g" target="_eOSe9-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">composants</attribute>
    </edge>
    <edge id="_eOTGCuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eOSe9-iaEd6gMtZRCjS81g" target="_eOSe-OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eOTGDeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eOSe--iaEd6gMtZRCjS81g" target="_eOSe_OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">tabColumns</attribute>
    </edge>
    <edge id="_eOTGDeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eOSe_OiaEd6gMtZRCjS81g" target="_eOSe--iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eOTGEOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eOSe_eiaEd6gMtZRCjS81g" target="_eOSe_uiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">listRows</attribute>
    </edge>
    <edge id="_eOTGEOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eOSe_uiaEd6gMtZRCjS81g" target="_eOSe_eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eOTGE-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eOSe_uiaEd6gMtZRCjS81g" target="_eOSe_-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">listItems</attribute>
    </edge>
    <edge id="_eOTGE-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eOSe_-iaEd6gMtZRCjS81g" target="_eOSe_uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eOTGB-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eOSe9uiaEd6gMtZRCjS81g" target="_eOSe-OiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">group</attribute>
    </edge>
    <edge id="_eOTGB-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_eOSe-OiaEd6gMtZRCjS81g" target="_eOSe9uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eOTtEOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eOSe9OiaEd6gMtZRCjS81g" target="_eOSe8-iaEd6gMtZRCjS81g"/>
    <edge id="_eOTtEOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eOSe8-iaEd6gMtZRCjS81g" target="_eOSe9OiaEd6gMtZRCjS81g"/>
    <edge id="_eOTtEeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eOSe9eiaEd6gMtZRCjS81g" target="_eOSe9OiaEd6gMtZRCjS81g"/>
    <edge id="_eOTtEeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eOSe9OiaEd6gMtZRCjS81g" target="_eOSe9eiaEd6gMtZRCjS81g"/>
    <edge id="_eOTtEuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eOSe9uiaEd6gMtZRCjS81g" target="_eOSe9OiaEd6gMtZRCjS81g"/>
    <edge id="_eOTtEuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eOSe9OiaEd6gMtZRCjS81g" target="_eOSe9uiaEd6gMtZRCjS81g"/>
    <edge id="_eOTtE-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eOSe9-iaEd6gMtZRCjS81g" target="_eOSe9OiaEd6gMtZRCjS81g"/>
    <edge id="_eOTtE-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eOSe9OiaEd6gMtZRCjS81g" target="_eOSe9-iaEd6gMtZRCjS81g"/>
    <edge id="_eOTtFOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eOSe-OiaEd6gMtZRCjS81g" target="_eOSe9-iaEd6gMtZRCjS81g"/>
    <edge id="_eOTtFOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eOSe9-iaEd6gMtZRCjS81g" target="_eOSe-OiaEd6gMtZRCjS81g"/>
    <edge id="_eOTtFeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eOSe-eiaEd6gMtZRCjS81g" target="_eOSe9-iaEd6gMtZRCjS81g"/>
    <edge id="_eOTtFeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eOSe9-iaEd6gMtZRCjS81g" target="_eOSe-eiaEd6gMtZRCjS81g"/>
    <edge id="_eOTtFuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eOSe-uiaEd6gMtZRCjS81g" target="_eOSe9-iaEd6gMtZRCjS81g"/>
    <edge id="_eOTtFuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eOSe9-iaEd6gMtZRCjS81g" target="_eOSe-uiaEd6gMtZRCjS81g"/>
    <edge id="_eOTtF-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eOSe--iaEd6gMtZRCjS81g" target="_eOSe9-iaEd6gMtZRCjS81g"/>
    <edge id="_eOTtF-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eOSe9-iaEd6gMtZRCjS81g" target="_eOSe--iaEd6gMtZRCjS81g"/>
    <edge id="_eOTtGOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eOSe_OiaEd6gMtZRCjS81g" target="_eOSe8-iaEd6gMtZRCjS81g"/>
    <edge id="_eOTtGOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eOSe8-iaEd6gMtZRCjS81g" target="_eOSe_OiaEd6gMtZRCjS81g"/>
    <edge id="_eOTtGeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eOSe_eiaEd6gMtZRCjS81g" target="_eOSe9-iaEd6gMtZRCjS81g"/>
    <edge id="_eOTtGeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eOSe9-iaEd6gMtZRCjS81g" target="_eOSe_eiaEd6gMtZRCjS81g"/>
    <edge id="_eOTtGuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eOSe_uiaEd6gMtZRCjS81g" target="_eOSe9-iaEd6gMtZRCjS81g"/>
    <edge id="_eOTtGuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eOSe9-iaEd6gMtZRCjS81g" target="_eOSe_uiaEd6gMtZRCjS81g"/>
    <edge id="_eOTtG-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eOSe_-iaEd6gMtZRCjS81g" target="_eOSe9-iaEd6gMtZRCjS81g"/>
    <edge id="_eOTtG-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eOSe9-iaEd6gMtZRCjS81g" target="_eOSe_-iaEd6gMtZRCjS81g"/>
    <edge id="_eOUUIOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eOSfAOiaEd6gMtZRCjS81g" target="_eOSe9-iaEd6gMtZRCjS81g"/>
    <edge id="_eOUUIOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eOSe9-iaEd6gMtZRCjS81g" target="_eOSfAOiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
