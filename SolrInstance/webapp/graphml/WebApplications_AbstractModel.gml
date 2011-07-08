<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_guGJQOiaEd6gMtZRCjS81g" projectName="WebApplication">
    <node className="ClientPage" id="_guGJReiaEd6gMtZRCjS81g"/>
    <node className="ClientPageModule" id="_guGJRuiaEd6gMtZRCjS81g"/>
    <node className="LogicInterface" id="_guGJR-iaEd6gMtZRCjS81g"/>
    <node className="DesignElement" id="_guGJSOiaEd6gMtZRCjS81g"/>
    <node className="HyperLink" id="_guGJSeiaEd6gMtZRCjS81g"/>
    <node className="ServerPage" id="_guGJSuiaEd6gMtZRCjS81g"/>
    <node className="BusinessLogic" id="_guGJS-iaEd6gMtZRCjS81g"/>
    <node className="DesignTemplate" id="_guGJTOiaEd6gMtZRCjS81g"/>
    <edge id="_guGJUOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_guGJRuiaEd6gMtZRCjS81g" target="_guGJReiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">consistsOf</attribute>
    </edge>
    <edge id="_guGJUOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_guGJReiaEd6gMtZRCjS81g" target="_guGJRuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_guGJTeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_guGJReiaEd6gMtZRCjS81g" target="_guGJSeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">hyperlink</attribute>
    </edge>
    <edge id="_guGJTeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_guGJSeiaEd6gMtZRCjS81g" target="_guGJReiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_guGJU-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_guGJSeiaEd6gMtZRCjS81g" target="_guGJSuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">server</attribute>
    </edge>
    <edge id="_guGJU-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_guGJSuiaEd6gMtZRCjS81g" target="_guGJSeiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_guGJVuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_guGJSuiaEd6gMtZRCjS81g" target="_guGJS-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">useBusinessLogic</attribute>
    </edge>
    <edge id="_guGJVuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_guGJS-iaEd6gMtZRCjS81g" target="_guGJSuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_guGJWeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_guGJSuiaEd6gMtZRCjS81g" target="_guGJTOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">useDesignTemplate</attribute>
    </edge>
    <edge id="_guGJWeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_guGJTOiaEd6gMtZRCjS81g" target="_guGJSuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_guGJXOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_guGJSuiaEd6gMtZRCjS81g" target="_guGJReiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">generates</attribute>
    </edge>
    <edge id="_guGJXOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_guGJReiaEd6gMtZRCjS81g" target="_guGJSuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_guGwUOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_guGJR-iaEd6gMtZRCjS81g" target="_guGJRuiaEd6gMtZRCjS81g"/>
    <edge id="_guGwUOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_guGJRuiaEd6gMtZRCjS81g" target="_guGJR-iaEd6gMtZRCjS81g"/>
    <edge id="_guGwUeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_guGJSOiaEd6gMtZRCjS81g" target="_guGJRuiaEd6gMtZRCjS81g"/>
    <edge id="_guGwUeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_guGJRuiaEd6gMtZRCjS81g" target="_guGJSOiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
