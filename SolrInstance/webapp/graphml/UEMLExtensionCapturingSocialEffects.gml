<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_ga0n8OiaEd6gMtZRCjS81g" projectName="UEML">
    <node className="UEMLObject" id="_ga0n8uiaEd6gMtZRCjS81g"/>
    <node className="UEMLModel" id="_ga0n8-iaEd6gMtZRCjS81g"/>
    <node className="Geometry" id="_ga1PAOiaEd6gMtZRCjS81g"/>
    <node className="Port" id="_ga12EOiaEd6gMtZRCjS81g"/>
    <node className="Flow" id="_ga12EeiaEd6gMtZRCjS81g"/>
    <node className="Activity" id="_ga12EuiaEd6gMtZRCjS81g"/>
    <node className="Object" id="_ga12E-iaEd6gMtZRCjS81g"/>
    <node className="InformationObject" id="_ga12FOiaEd6gMtZRCjS81g"/>
    <node className="Resource" id="_ga12FeiaEd6gMtZRCjS81g"/>
    <node className="MaterialResource" id="_ga12FuiaEd6gMtZRCjS81g"/>
    <node className="HumanResource" id="_ga12F-iaEd6gMtZRCjS81g"/>
    <node className="ResourceFlow" id="_ga12GOiaEd6gMtZRCjS81g"/>
    <node className="IOFlow" id="_ga12GeiaEd6gMtZRCjS81g"/>
    <node className="ControlFlow" id="_ga12GuiaEd6gMtZRCjS81g"/>
    <node className="TriggerFlow" id="_ga12G-iaEd6gMtZRCjS81g"/>
    <node className="ConstraintFlow" id="_ga12HOiaEd6gMtZRCjS81g"/>
    <node className="ResourceRole" id="_ga12HeiaEd6gMtZRCjS81g"/>
    <node className="RoleType" id="_ga12HuiaEd6gMtZRCjS81g"/>
    <node className="Anchor" id="_ga12H-iaEd6gMtZRCjS81g"/>
    <node className="OutputPort" id="_ga12IOiaEd6gMtZRCjS81g"/>
    <node className="InputPort" id="_ga12IeiaEd6gMtZRCjS81g"/>
    <node className="ConnectionOperator" id="_ga12IuiaEd6gMtZRCjS81g"/>
    <node className="AssociationConnector" id="_ga12I-iaEd6gMtZRCjS81g"/>
    <node className="Process" id="_ga12JOiaEd6gMtZRCjS81g"/>
    <node className="Service" id="_ga12JeiaEd6gMtZRCjS81g"/>
    <node className="Agent" id="_ga12JuiaEd6gMtZRCjS81g"/>
    <node className="Contract" id="_ga12J-iaEd6gMtZRCjS81g"/>
    <node className="Task" id="_ga12KOiaEd6gMtZRCjS81g"/>
    <node className="Commitment" id="_ga12KeiaEd6gMtZRCjS81g"/>
    <edge id="_ga12LeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_ga0n8-iaEd6gMtZRCjS81g" target="_ga0n8uiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">contains</attribute>
    </edge>
    <edge id="_ga12LeiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_ga0n8uiaEd6gMtZRCjS81g" target="_ga0n8-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_ga2dJ-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_ga12JOiaEd6gMtZRCjS81g" target="_ga12EuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">child</attribute>
    </edge>
    <edge id="_ga2dJ-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_ga12EuiaEd6gMtZRCjS81g" target="_ga12JOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_ga2dOeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_ga12J-iaEd6gMtZRCjS81g" target="_ga12KeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">collection_of</attribute>
    </edge>
    <edge id="_ga2dOeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_ga12KeiaEd6gMtZRCjS81g" target="_ga12J-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_ga12KuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_ga0n8uiaEd6gMtZRCjS81g" target="_ga1PAOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">has</attribute>
    </edge>
    <edge id="_ga12KuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_ga1PAOiaEd6gMtZRCjS81g" target="_ga0n8uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_ga12MOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_ga12EeiaEd6gMtZRCjS81g" target="_ga12I-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">associationConnector</attribute>
    </edge>
    <edge id="_ga12MOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_ga12I-iaEd6gMtZRCjS81g" target="_ga12EeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_ga12M-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_ga12EuiaEd6gMtZRCjS81g" target="_ga12HeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">resourceRole</attribute>
    </edge>
    <edge id="_ga12M-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_ga12HeiaEd6gMtZRCjS81g" target="_ga12EuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_ga12NuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_ga12EuiaEd6gMtZRCjS81g" target="_ga12IOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">hasOutput</attribute>
    </edge>
    <edge id="_ga12NuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_ga12IOiaEd6gMtZRCjS81g" target="_ga12EuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_ga12OeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_ga12E-iaEd6gMtZRCjS81g" target="_ga12GeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">ioFlow</attribute>
    </edge>
    <edge id="_ga12OeiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_ga12GeiaEd6gMtZRCjS81g" target="_ga12E-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_ga12POiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_ga12FOiaEd6gMtZRCjS81g" target="_ga12GuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">controlFlow</attribute>
    </edge>
    <edge id="_ga12POiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_ga12GuiaEd6gMtZRCjS81g" target="_ga12FOiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_ga12P-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_ga12FeiaEd6gMtZRCjS81g" target="_ga12GOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">carries</attribute>
    </edge>
    <edge id="_ga12P-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_ga12GOiaEd6gMtZRCjS81g" target="_ga12FeiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_ga12QuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_ga12FeiaEd6gMtZRCjS81g" target="_ga12HeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">plays</attribute>
    </edge>
    <edge id="_ga12QuiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_ga12HeiaEd6gMtZRCjS81g" target="_ga12FeiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_ga12ReiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_ga12HeiaEd6gMtZRCjS81g" target="_ga12HuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">roleQualifier</attribute>
    </edge>
    <edge id="_ga12ReiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_ga12HuiaEd6gMtZRCjS81g" target="_ga12HeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_ga2dIeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_ga12H-iaEd6gMtZRCjS81g" target="_ga12I-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">target</attribute>
    </edge>
    <edge id="_ga2dIeiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_ga12I-iaEd6gMtZRCjS81g" target="_ga12H-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_ga2dJOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_ga12H-iaEd6gMtZRCjS81g" target="_ga12I-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">origin</attribute>
    </edge>
    <edge id="_ga2dJOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_ga12I-iaEd6gMtZRCjS81g" target="_ga12H-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_ga2dKuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_ga12JOiaEd6gMtZRCjS81g" target="_ga12J-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">fulfills</attribute>
    </edge>
    <edge id="_ga2dKuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_ga12J-iaEd6gMtZRCjS81g" target="_ga12JOiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_ga2dLeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_ga12JOiaEd6gMtZRCjS81g" target="_ga12JeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">realises</attribute>
    </edge>
    <edge id="_ga2dLeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_ga12JeiaEd6gMtZRCjS81g" target="_ga12JOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_ga2dMOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_ga12JuiaEd6gMtZRCjS81g" target="_ga12KeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">obliger</attribute>
    </edge>
    <edge id="_ga2dMOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_ga12KeiaEd6gMtZRCjS81g" target="_ga12JuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_ga2dM-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_ga12JuiaEd6gMtZRCjS81g" target="_ga12KeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">claimer</attribute>
    </edge>
    <edge id="_ga2dM-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_ga12KeiaEd6gMtZRCjS81g" target="_ga12JuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_ga2dNuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_ga12JuiaEd6gMtZRCjS81g" target="_ga12J-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">has_parties</attribute>
    </edge>
    <edge id="_ga2dNuiaEd6gMtZRCjS81g-opposite" lowerValue="2" relType="ASSOCIATION" source="_ga12J-iaEd6gMtZRCjS81g" target="_ga12JuiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_ga2dPOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_ga12KOiaEd6gMtZRCjS81g" target="_ga12KeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">fulfills</attribute>
    </edge>
    <edge id="_ga2dPOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_ga12KeiaEd6gMtZRCjS81g" target="_ga12KOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_ga3EMOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_ga0n8-iaEd6gMtZRCjS81g" target="_ga0n8uiaEd6gMtZRCjS81g"/>
    <edge id="_ga3EMOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_ga0n8uiaEd6gMtZRCjS81g" target="_ga0n8-iaEd6gMtZRCjS81g"/>
    <edge id="_ga3EMeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_ga12EOiaEd6gMtZRCjS81g" target="_ga0n8uiaEd6gMtZRCjS81g"/>
    <edge id="_ga3EMeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_ga0n8uiaEd6gMtZRCjS81g" target="_ga12EOiaEd6gMtZRCjS81g"/>
    <edge id="_ga3EMuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_ga12EeiaEd6gMtZRCjS81g" target="_ga0n8uiaEd6gMtZRCjS81g"/>
    <edge id="_ga3EMuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_ga0n8uiaEd6gMtZRCjS81g" target="_ga12EeiaEd6gMtZRCjS81g"/>
    <edge id="_ga3EM-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_ga12EuiaEd6gMtZRCjS81g" target="_ga0n8uiaEd6gMtZRCjS81g"/>
    <edge id="_ga3EM-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_ga0n8uiaEd6gMtZRCjS81g" target="_ga12EuiaEd6gMtZRCjS81g"/>
    <edge id="_ga3ENOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_ga12E-iaEd6gMtZRCjS81g" target="_ga0n8uiaEd6gMtZRCjS81g"/>
    <edge id="_ga3ENOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_ga0n8uiaEd6gMtZRCjS81g" target="_ga12E-iaEd6gMtZRCjS81g"/>
    <edge id="_ga3ENeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_ga12FOiaEd6gMtZRCjS81g" target="_ga12E-iaEd6gMtZRCjS81g"/>
    <edge id="_ga3ENeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_ga12E-iaEd6gMtZRCjS81g" target="_ga12FOiaEd6gMtZRCjS81g"/>
    <edge id="_ga3ENuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_ga12FeiaEd6gMtZRCjS81g" target="_ga12E-iaEd6gMtZRCjS81g"/>
    <edge id="_ga3ENuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_ga12E-iaEd6gMtZRCjS81g" target="_ga12FeiaEd6gMtZRCjS81g"/>
    <edge id="_ga3EN-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_ga12FuiaEd6gMtZRCjS81g" target="_ga12FeiaEd6gMtZRCjS81g"/>
    <edge id="_ga3EN-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_ga12FeiaEd6gMtZRCjS81g" target="_ga12FuiaEd6gMtZRCjS81g"/>
    <edge id="_ga3EOOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_ga12F-iaEd6gMtZRCjS81g" target="_ga12FeiaEd6gMtZRCjS81g"/>
    <edge id="_ga3EOOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_ga12FeiaEd6gMtZRCjS81g" target="_ga12F-iaEd6gMtZRCjS81g"/>
    <edge id="_ga6HgOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_ga12GOiaEd6gMtZRCjS81g" target="_ga12EeiaEd6gMtZRCjS81g"/>
    <edge id="_ga6HgOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_ga12EeiaEd6gMtZRCjS81g" target="_ga12GOiaEd6gMtZRCjS81g"/>
    <edge id="_ga6HgeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_ga12GeiaEd6gMtZRCjS81g" target="_ga12EeiaEd6gMtZRCjS81g"/>
    <edge id="_ga6HgeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_ga12EeiaEd6gMtZRCjS81g" target="_ga12GeiaEd6gMtZRCjS81g"/>
    <edge id="_ga6HguiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_ga12GuiaEd6gMtZRCjS81g" target="_ga12EeiaEd6gMtZRCjS81g"/>
    <edge id="_ga6HguiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_ga12EeiaEd6gMtZRCjS81g" target="_ga12GuiaEd6gMtZRCjS81g"/>
    <edge id="_ga6Hg-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_ga12G-iaEd6gMtZRCjS81g" target="_ga12GuiaEd6gMtZRCjS81g"/>
    <edge id="_ga6Hg-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_ga12GuiaEd6gMtZRCjS81g" target="_ga12G-iaEd6gMtZRCjS81g"/>
    <edge id="_ga6HhOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_ga12HOiaEd6gMtZRCjS81g" target="_ga12GuiaEd6gMtZRCjS81g"/>
    <edge id="_ga6HhOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_ga12GuiaEd6gMtZRCjS81g" target="_ga12HOiaEd6gMtZRCjS81g"/>
    <edge id="_ga6HheiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_ga12HeiaEd6gMtZRCjS81g" target="_ga12EOiaEd6gMtZRCjS81g"/>
    <edge id="_ga6HheiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_ga12EOiaEd6gMtZRCjS81g" target="_ga12HeiaEd6gMtZRCjS81g"/>
    <edge id="_ga6HhuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_ga12H-iaEd6gMtZRCjS81g" target="_ga12EOiaEd6gMtZRCjS81g"/>
    <edge id="_ga6HhuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_ga12EOiaEd6gMtZRCjS81g" target="_ga12H-iaEd6gMtZRCjS81g"/>
    <edge id="_ga6Hh-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_ga12IOiaEd6gMtZRCjS81g" target="_ga12H-iaEd6gMtZRCjS81g"/>
    <edge id="_ga6Hh-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_ga12H-iaEd6gMtZRCjS81g" target="_ga12IOiaEd6gMtZRCjS81g"/>
    <edge id="_ga6HiOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_ga12IeiaEd6gMtZRCjS81g" target="_ga12H-iaEd6gMtZRCjS81g"/>
    <edge id="_ga6HiOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_ga12H-iaEd6gMtZRCjS81g" target="_ga12IeiaEd6gMtZRCjS81g"/>
    <edge id="_ga6HieiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_ga12IuiaEd6gMtZRCjS81g" target="_ga12H-iaEd6gMtZRCjS81g"/>
    <edge id="_ga6HieiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_ga12H-iaEd6gMtZRCjS81g" target="_ga12IuiaEd6gMtZRCjS81g"/>
    <edge id="_ga6ukOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_ga12JOiaEd6gMtZRCjS81g" target="_ga12EuiaEd6gMtZRCjS81g"/>
    <edge id="_ga6ukOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_ga12EuiaEd6gMtZRCjS81g" target="_ga12JOiaEd6gMtZRCjS81g"/>
    <edge id="_ga6ukeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_ga12JeiaEd6gMtZRCjS81g" target="_ga12FeiaEd6gMtZRCjS81g"/>
    <edge id="_ga6ukeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_ga12FeiaEd6gMtZRCjS81g" target="_ga12JeiaEd6gMtZRCjS81g"/>
    <edge id="_ga6ukuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_ga12JuiaEd6gMtZRCjS81g" target="_ga12FeiaEd6gMtZRCjS81g"/>
    <edge id="_ga6ukuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_ga12FeiaEd6gMtZRCjS81g" target="_ga12JuiaEd6gMtZRCjS81g"/>
    <edge id="_ga6uk-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_ga12KOiaEd6gMtZRCjS81g" target="_ga12EuiaEd6gMtZRCjS81g"/>
    <edge id="_ga6uk-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_ga12EuiaEd6gMtZRCjS81g" target="_ga12KOiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
