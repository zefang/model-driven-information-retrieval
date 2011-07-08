<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_gBFSQOiaEd6gMtZRCjS81g" projectName="RDFS">
    <node className="Resource" id="_gBFSQ-iaEd6gMtZRCjS81g"/>
    <node className="Graph" id="_gBFSROiaEd6gMtZRCjS81g"/>
    <node className="List" id="_gBFSReiaEd6gMtZRCjS81g"/>
    <node className="Container" id="_gBFSRuiaEd6gMtZRCjS81g"/>
    <node className="Alt" id="_gBFSR-iaEd6gMtZRCjS81g"/>
    <node className="Bag" id="_gBFSSOiaEd6gMtZRCjS81g"/>
    <node className="Seq" id="_gBFSSeiaEd6gMtZRCjS81g"/>
    <node className="Property" id="_gBF5UOiaEd6gMtZRCjS81g"/>
    <node className="ContainerMembershipProperty" id="_gBF5UeiaEd6gMtZRCjS81g"/>
    <node className="Statement" id="_gBF5UuiaEd6gMtZRCjS81g">
      <attribute>isReifiedOnly</attribute>
      <attribute>isReified</attribute>
    </node>
    <node className="URIReferenceNode" id="_gBF5U-iaEd6gMtZRCjS81g"/>
    <node className="BlankNode" id="_gBF5VOiaEd6gMtZRCjS81g">
      <attribute>nodeId</attribute>
    </node>
    <node className="Class" id="_gBF5VeiaEd6gMtZRCjS81g"/>
    <node className="Datatype" id="_gBF5VuiaEd6gMtZRCjS81g"/>
    <node className="Literal" id="_gBF5V-iaEd6gMtZRCjS81g">
      <attribute>lexicalForm</attribute>
    </node>
    <node className="PlainLiteral" id="_gBF5WOiaEd6gMtZRCjS81g">
      <attribute>language</attribute>
    </node>
    <node className="TypedLiteral" id="_gBF5WeiaEd6gMtZRCjS81g"/>
    <node className="RDFXMLLiteral" id="_gBF5WuiaEd6gMtZRCjS81g"/>
    <node className="URIReference" id="_gBF5W-iaEd6gMtZRCjS81g"/>
    <node className="UniformResourceIdentifier" id="_gBF5XOiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <edge id="_gBF5Y-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gBFSQ-iaEd6gMtZRCjS81g" target="_gBF5W-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">uriRef</attribute>
    </edge>
    <edge id="_gBF5Y-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gBF5W-iaEd6gMtZRCjS81g" target="_gBFSQ-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gBF5bOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gBFSQ-iaEd6gMtZRCjS81g" target="_gBF5WOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">label</attribute>
    </edge>
    <edge id="_gBF5bOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gBF5WOiaEd6gMtZRCjS81g" target="_gBFSQ-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gBF5e-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gBFSROiaEd6gMtZRCjS81g" target="_gBF5W-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">graphName</attribute>
    </edge>
    <edge id="_gBF5e-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gBF5W-iaEd6gMtZRCjS81g" target="_gBFSROiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gBF5fuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_gBFSROiaEd6gMtZRCjS81g" target="_gBFSQ-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">resources</attribute>
    </edge>
    <edge id="_gBF5fuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_gBFSQ-iaEd6gMtZRCjS81g" target="_gBFSROiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gBF5ZuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gBFSQ-iaEd6gMtZRCjS81g" target="_gBF5UuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">subjectStatement</attribute>
    </edge>
    <edge id="_gBF5ZuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gBF5UuiaEd6gMtZRCjS81g" target="_gBFSQ-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gBF5aeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gBFSQ-iaEd6gMtZRCjS81g" target="_gBF5UuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">objectStatement</attribute>
    </edge>
    <edge id="_gBF5aeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gBF5UuiaEd6gMtZRCjS81g" target="_gBFSQ-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gBF5b-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gBFSQ-iaEd6gMtZRCjS81g" target="_gBF5VeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">type</attribute>
    </edge>
    <edge id="_gBF5b-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gBF5VeiaEd6gMtZRCjS81g" target="_gBFSQ-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gBF5cuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gBFSQ-iaEd6gMtZRCjS81g" target="_gBFSQ-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">seeAlso</attribute>
    </edge>
    <edge id="_gBF5cuiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gBFSQ-iaEd6gMtZRCjS81g" target="_gBFSQ-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gBF5deiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gBFSQ-iaEd6gMtZRCjS81g" target="_gBFSQ-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">member</attribute>
    </edge>
    <edge id="_gBF5deiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gBFSQ-iaEd6gMtZRCjS81g" target="_gBFSQ-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gBF5eOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gBFSQ-iaEd6gMtZRCjS81g" target="_gBFSReiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">list</attribute>
    </edge>
    <edge id="_gBF5eOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gBFSReiaEd6gMtZRCjS81g" target="_gBFSQ-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gBF5geiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gBFSReiaEd6gMtZRCjS81g" target="_gBFSReiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">rest</attribute>
    </edge>
    <edge id="_gBF5geiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gBFSReiaEd6gMtZRCjS81g" target="_gBFSReiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gBF5hOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gBF5UOiaEd6gMtZRCjS81g" target="_gBF5UuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">predicateStatement</attribute>
    </edge>
    <edge id="_gBF5hOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gBF5UuiaEd6gMtZRCjS81g" target="_gBF5UOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gBGgYeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gBF5UOiaEd6gMtZRCjS81g" target="_gBF5UOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">subPropertyOf</attribute>
    </edge>
    <edge id="_gBGgYeiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gBF5UOiaEd6gMtZRCjS81g" target="_gBF5UOiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gBGgZOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gBF5UOiaEd6gMtZRCjS81g" target="_gBF5VeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">domain</attribute>
    </edge>
    <edge id="_gBGgZOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gBF5VeiaEd6gMtZRCjS81g" target="_gBF5UOiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gBGgZ-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gBF5UOiaEd6gMtZRCjS81g" target="_gBF5VeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">range</attribute>
    </edge>
    <edge id="_gBGgZ-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gBF5VeiaEd6gMtZRCjS81g" target="_gBF5UOiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gBGgauiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gBF5UuiaEd6gMtZRCjS81g" target="_gBF5W-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">nameForReification</attribute>
    </edge>
    <edge id="_gBGgauiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gBF5W-iaEd6gMtZRCjS81g" target="_gBF5UuiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gBGgbeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gBF5VeiaEd6gMtZRCjS81g" target="_gBF5VeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">subClassOf</attribute>
    </edge>
    <edge id="_gBGgbeiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gBF5VeiaEd6gMtZRCjS81g" target="_gBF5VeiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gBGgcOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gBF5WeiaEd6gMtZRCjS81g" target="_gBF5W-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">datatypeURI</attribute>
    </edge>
    <edge id="_gBGgcOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gBF5W-iaEd6gMtZRCjS81g" target="_gBF5WeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gBGgc-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gBF5W-iaEd6gMtZRCjS81g" target="_gBF5XOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">uri</attribute>
    </edge>
    <edge id="_gBGgc-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gBF5XOiaEd6gMtZRCjS81g" target="_gBF5W-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gBHHcOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gBFSROiaEd6gMtZRCjS81g" target="_gBFSQ-iaEd6gMtZRCjS81g"/>
    <edge id="_gBHHcOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gBFSQ-iaEd6gMtZRCjS81g" target="_gBFSROiaEd6gMtZRCjS81g"/>
    <edge id="_gBHHceiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gBFSReiaEd6gMtZRCjS81g" target="_gBFSQ-iaEd6gMtZRCjS81g"/>
    <edge id="_gBHHceiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gBFSQ-iaEd6gMtZRCjS81g" target="_gBFSReiaEd6gMtZRCjS81g"/>
    <edge id="_gBHHcuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gBFSRuiaEd6gMtZRCjS81g" target="_gBFSQ-iaEd6gMtZRCjS81g"/>
    <edge id="_gBHHcuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gBFSQ-iaEd6gMtZRCjS81g" target="_gBFSRuiaEd6gMtZRCjS81g"/>
    <edge id="_gBHHc-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gBFSR-iaEd6gMtZRCjS81g" target="_gBFSRuiaEd6gMtZRCjS81g"/>
    <edge id="_gBHHc-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gBFSRuiaEd6gMtZRCjS81g" target="_gBFSR-iaEd6gMtZRCjS81g"/>
    <edge id="_gBHHdOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gBFSSOiaEd6gMtZRCjS81g" target="_gBFSRuiaEd6gMtZRCjS81g"/>
    <edge id="_gBHHdOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gBFSRuiaEd6gMtZRCjS81g" target="_gBFSSOiaEd6gMtZRCjS81g"/>
    <edge id="_gBHHdeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gBFSSeiaEd6gMtZRCjS81g" target="_gBFSRuiaEd6gMtZRCjS81g"/>
    <edge id="_gBHHdeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gBFSRuiaEd6gMtZRCjS81g" target="_gBFSSeiaEd6gMtZRCjS81g"/>
    <edge id="_gBHHduiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gBF5UOiaEd6gMtZRCjS81g" target="_gBFSQ-iaEd6gMtZRCjS81g"/>
    <edge id="_gBHHduiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gBFSQ-iaEd6gMtZRCjS81g" target="_gBF5UOiaEd6gMtZRCjS81g"/>
    <edge id="_gBHHd-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gBF5UuiaEd6gMtZRCjS81g" target="_gBFSQ-iaEd6gMtZRCjS81g"/>
    <edge id="_gBHHd-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gBFSQ-iaEd6gMtZRCjS81g" target="_gBF5UuiaEd6gMtZRCjS81g"/>
    <edge id="_gBHHeOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gBF5U-iaEd6gMtZRCjS81g" target="_gBFSQ-iaEd6gMtZRCjS81g"/>
    <edge id="_gBHHeOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gBFSQ-iaEd6gMtZRCjS81g" target="_gBF5U-iaEd6gMtZRCjS81g"/>
    <edge id="_gBHHeeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gBF5VOiaEd6gMtZRCjS81g" target="_gBFSQ-iaEd6gMtZRCjS81g"/>
    <edge id="_gBHHeeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gBFSQ-iaEd6gMtZRCjS81g" target="_gBF5VOiaEd6gMtZRCjS81g"/>
    <edge id="_gBHugOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gBF5VeiaEd6gMtZRCjS81g" target="_gBFSQ-iaEd6gMtZRCjS81g"/>
    <edge id="_gBHugOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gBFSQ-iaEd6gMtZRCjS81g" target="_gBF5VeiaEd6gMtZRCjS81g"/>
    <edge id="_gBHugeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gBF5VuiaEd6gMtZRCjS81g" target="_gBF5VeiaEd6gMtZRCjS81g"/>
    <edge id="_gBHugeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gBF5VeiaEd6gMtZRCjS81g" target="_gBF5VuiaEd6gMtZRCjS81g"/>
    <edge id="_gBHuguiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gBF5V-iaEd6gMtZRCjS81g" target="_gBFSQ-iaEd6gMtZRCjS81g"/>
    <edge id="_gBHuguiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gBFSQ-iaEd6gMtZRCjS81g" target="_gBF5V-iaEd6gMtZRCjS81g"/>
    <edge id="_gBHug-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gBF5WOiaEd6gMtZRCjS81g" target="_gBF5V-iaEd6gMtZRCjS81g"/>
    <edge id="_gBHug-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gBF5V-iaEd6gMtZRCjS81g" target="_gBF5WOiaEd6gMtZRCjS81g"/>
    <edge id="_gBHuhOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gBF5WeiaEd6gMtZRCjS81g" target="_gBF5V-iaEd6gMtZRCjS81g"/>
    <edge id="_gBHuhOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gBF5V-iaEd6gMtZRCjS81g" target="_gBF5WeiaEd6gMtZRCjS81g"/>
    <edge id="_gBHuheiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gBF5WuiaEd6gMtZRCjS81g" target="_gBF5WeiaEd6gMtZRCjS81g"/>
    <edge id="_gBHuheiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gBF5WeiaEd6gMtZRCjS81g" target="_gBF5WuiaEd6gMtZRCjS81g"/>
    <edge id="_gBHuhuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gBF5XOiaEd6gMtZRCjS81g" target="_gBF5W-iaEd6gMtZRCjS81g"/>
    <edge id="_gBHuhuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gBF5W-iaEd6gMtZRCjS81g" target="_gBF5XOiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
