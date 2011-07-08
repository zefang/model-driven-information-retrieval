<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_dTWgsOiaEd6gMtZRCjS81g" projectName="ADELFE">
    <node className="Classifier" id="_dTWgsuiaEd6gMtZRCjS81g"/>
    <node className="Environnement" id="_dTWgs-iaEd6gMtZRCjS81g"/>
    <node className="Element" id="_dTWgtOiaEd6gMtZRCjS81g"/>
    <node className="CooperativeAgent" id="_dTWgteiaEd6gMtZRCjS81g"/>
    <node className="Representation" id="_dTWgtuiaEd6gMtZRCjS81g"/>
    <node className="Skill" id="_dTWgt-iaEd6gMtZRCjS81g"/>
    <node className="Aptitude" id="_dTWguOiaEd6gMtZRCjS81g"/>
    <node className="Characteristic" id="_dTWgueiaEd6gMtZRCjS81g"/>
    <node className="Communication" id="_dTWguuiaEd6gMtZRCjS81g"/>
    <node className="AIP" id="_dTWgu-iaEd6gMtZRCjS81g"/>
    <node className="CooperationRules" id="_dTWgvOiaEd6gMtZRCjS81g"/>
    <node className="NCS" id="_dTWgveiaEd6gMtZRCjS81g"/>
    <node className="Incomprehension" id="_dTWgvuiaEd6gMtZRCjS81g"/>
    <node className="Ambiguity" id="_dTWgv-iaEd6gMtZRCjS81g"/>
    <node className="Incompetence" id="_dTWgwOiaEd6gMtZRCjS81g"/>
    <node className="Unproductiveness" id="_dTWgweiaEd6gMtZRCjS81g"/>
    <node className="Concurrency" id="_dTWgwuiaEd6gMtZRCjS81g"/>
    <node className="Conflict" id="_dTWgw-iaEd6gMtZRCjS81g"/>
    <node className="Uselessness" id="_dTWgxOiaEd6gMtZRCjS81g"/>
    <edge id="_dTWgxeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dTWgs-iaEd6gMtZRCjS81g" target="_dTWgtOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">element</attribute>
    </edge>
    <edge id="_dTWgxeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dTWgtOiaEd6gMtZRCjS81g" target="_dTWgs-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dTXHweiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dTWgteiaEd6gMtZRCjS81g" target="_dTWgtuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">representation</attribute>
    </edge>
    <edge id="_dTXHweiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dTWgtuiaEd6gMtZRCjS81g" target="_dTWgteiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dTXHxOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dTWgteiaEd6gMtZRCjS81g" target="_dTWgt-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">skill</attribute>
    </edge>
    <edge id="_dTXHxOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dTWgt-iaEd6gMtZRCjS81g" target="_dTWgteiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dTXHx-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dTWgteiaEd6gMtZRCjS81g" target="_dTWguOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">aptitude</attribute>
    </edge>
    <edge id="_dTXHx-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dTWguOiaEd6gMtZRCjS81g" target="_dTWgteiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dTXHyuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dTWgteiaEd6gMtZRCjS81g" target="_dTWgueiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">characteristic</attribute>
    </edge>
    <edge id="_dTXHyuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dTWgueiaEd6gMtZRCjS81g" target="_dTWgteiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dTXHzeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dTWgteiaEd6gMtZRCjS81g" target="_dTWguuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">communication</attribute>
    </edge>
    <edge id="_dTXHzeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dTWguuiaEd6gMtZRCjS81g" target="_dTWgteiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dTWgyOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dTWgtOiaEd6gMtZRCjS81g" target="_dTWgteiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">action</attribute>
    </edge>
    <edge id="_dTWgyOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dTWgteiaEd6gMtZRCjS81g" target="_dTWgtOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dTWgy-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dTWgtOiaEd6gMtZRCjS81g" target="_dTWgteiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">perception</attribute>
    </edge>
    <edge id="_dTWgy-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dTWgteiaEd6gMtZRCjS81g" target="_dTWgtOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dTXH0OiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dTWgteiaEd6gMtZRCjS81g" target="_dTWgvOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">observes</attribute>
    </edge>
    <edge id="_dTXH0OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dTWgvOiaEd6gMtZRCjS81g" target="_dTWgteiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dTXH0-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dTWgtuiaEd6gMtZRCjS81g" target="_dTWgtOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">element</attribute>
    </edge>
    <edge id="_dTXH0-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dTWgtOiaEd6gMtZRCjS81g" target="_dTWgtuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dTXH1uiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dTWguuiaEd6gMtZRCjS81g" target="_dTWgu-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">aip</attribute>
    </edge>
    <edge id="_dTXH1uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dTWgu-iaEd6gMtZRCjS81g" target="_dTWguuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dTXH2eiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_dTWgvOiaEd6gMtZRCjS81g" target="_dTWgveiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">detects</attribute>
    </edge>
    <edge id="_dTXH2eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_dTWgveiaEd6gMtZRCjS81g" target="_dTWgvOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dTXu0OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dTWgs-iaEd6gMtZRCjS81g" target="_dTWgsuiaEd6gMtZRCjS81g"/>
    <edge id="_dTXu0OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dTWgsuiaEd6gMtZRCjS81g" target="_dTWgs-iaEd6gMtZRCjS81g"/>
    <edge id="_dTXu0eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dTWgtOiaEd6gMtZRCjS81g" target="_dTWgsuiaEd6gMtZRCjS81g"/>
    <edge id="_dTXu0eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dTWgsuiaEd6gMtZRCjS81g" target="_dTWgtOiaEd6gMtZRCjS81g"/>
    <edge id="_dTYV4OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dTWgvuiaEd6gMtZRCjS81g" target="_dTWgveiaEd6gMtZRCjS81g"/>
    <edge id="_dTYV4OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dTWgveiaEd6gMtZRCjS81g" target="_dTWgvuiaEd6gMtZRCjS81g"/>
    <edge id="_dTYV4eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dTWgv-iaEd6gMtZRCjS81g" target="_dTWgveiaEd6gMtZRCjS81g"/>
    <edge id="_dTYV4eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dTWgveiaEd6gMtZRCjS81g" target="_dTWgv-iaEd6gMtZRCjS81g"/>
    <edge id="_dTYV4uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dTWgwOiaEd6gMtZRCjS81g" target="_dTWgveiaEd6gMtZRCjS81g"/>
    <edge id="_dTYV4uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dTWgveiaEd6gMtZRCjS81g" target="_dTWgwOiaEd6gMtZRCjS81g"/>
    <edge id="_dTYV4-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dTWgweiaEd6gMtZRCjS81g" target="_dTWgveiaEd6gMtZRCjS81g"/>
    <edge id="_dTYV4-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dTWgveiaEd6gMtZRCjS81g" target="_dTWgweiaEd6gMtZRCjS81g"/>
    <edge id="_dTYV5OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dTWgwuiaEd6gMtZRCjS81g" target="_dTWgveiaEd6gMtZRCjS81g"/>
    <edge id="_dTYV5OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dTWgveiaEd6gMtZRCjS81g" target="_dTWgwuiaEd6gMtZRCjS81g"/>
    <edge id="_dTYV5eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dTWgw-iaEd6gMtZRCjS81g" target="_dTWgveiaEd6gMtZRCjS81g"/>
    <edge id="_dTYV5eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dTWgveiaEd6gMtZRCjS81g" target="_dTWgw-iaEd6gMtZRCjS81g"/>
    <edge id="_dTYV5uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dTWgxOiaEd6gMtZRCjS81g" target="_dTWgveiaEd6gMtZRCjS81g"/>
    <edge id="_dTYV5uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dTWgveiaEd6gMtZRCjS81g" target="_dTWgxOiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
