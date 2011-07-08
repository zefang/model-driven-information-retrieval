<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_endz8OiaEd6gMtZRCjS81g" projectName="LQN">
    <node className="LQN" id="_endz8-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>comment</attribute>
      <attribute>author</attribute>
      <attribute>created_On</attribute>
      <attribute>modified_On</attribute>
    </node>
    <node className="Task" id="_endz9OiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>type</attribute>
      <attribute>priority</attribute>
      <attribute>mutliplicity</attribute>
      <attribute>replicas</attribute>
    </node>
    <node className="Processor" id="_endz9eiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>scheduling</attribute>
      <attribute>mutliplicity</attribute>
      <attribute>replicas</attribute>
      <attribute>spped</attribute>
    </node>
    <node className="Entry" id="_endz9uiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>num_Phase</attribute>
      <attribute>arrival_Rate</attribute>
      <attribute>contained_In</attribute>
      <attribute>replay_To</attribute>
    </node>
    <node className="Phase" id="_endz9-iaEd6gMtZRCjS81g">
      <attribute>number</attribute>
      <attribute>type</attribute>
      <attribute>think_Time</attribute>
      <attribute>execution_Demand</attribute>
      <attribute>COV</attribute>
    </node>
    <node className="Activity" id="_endz-OiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>arrival_Rate</attribute>
      <attribute>contained_In</attribute>
      <attribute>replay_To</attribute>
    </node>
    <node className="Link" id="_endz-eiaEd6gMtZRCjS81g">
      <attribute>type</attribute>
      <attribute>mean_Links</attribute>
      <attribute>fromActivity</attribute>
      <attribute>toActivity</attribute>
    </node>
    <node className="CallPhase" id="_endz-uiaEd6gMtZRCjS81g">
      <attribute>mean_Calls</attribute>
      <attribute>refers_To</attribute>
    </node>
    <node className="Call" id="_endz--iaEd6gMtZRCjS81g">
      <attribute>toEntry</attribute>
      <attribute>num_Phases</attribute>
      <attribute>type</attribute>
    </node>
    <node className="EntryCall" id="_endz_OiaEd6gMtZRCjS81g">
      <attribute>from_Entry</attribute>
    </node>
    <node className="ActivityCall" id="_endz_eiaEd6gMtZRCjS81g">
      <attribute>fromActivity</attribute>
    </node>
    <node className="Date" id="_endz_uiaEd6gMtZRCjS81g">
      <attribute>day</attribute>
      <attribute>month</attribute>
      <attribute>year</attribute>
    </node>
    <edge id="_enebFeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_endz8-iaEd6gMtZRCjS81g" target="_endz9OiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">task</attribute>
    </edge>
    <edge id="_enebFeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_endz9OiaEd6gMtZRCjS81g" target="_endz8-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_enebGOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_endz8-iaEd6gMtZRCjS81g" target="_endz9eiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">processor</attribute>
    </edge>
    <edge id="_enebGOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_endz9eiaEd6gMtZRCjS81g" target="_endz8-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_enebG-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_endz9OiaEd6gMtZRCjS81g" target="_endz9uiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">entry</attribute>
    </edge>
    <edge id="_enebG-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_endz9uiaEd6gMtZRCjS81g" target="_endz9OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_enebLeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_endz9uiaEd6gMtZRCjS81g" target="_endz-OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">activity</attribute>
    </edge>
    <edge id="_enebLeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_endz-OiaEd6gMtZRCjS81g" target="_endz9uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_enebHuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_endz9OiaEd6gMtZRCjS81g" target="_endz9eiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">processor</attribute>
    </edge>
    <edge id="_enebHuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_endz9eiaEd6gMtZRCjS81g" target="_endz9OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_enebIeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_endz9OiaEd6gMtZRCjS81g" target="_endz-OiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">activity</attribute>
    </edge>
    <edge id="_enebIeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_endz-OiaEd6gMtZRCjS81g" target="_endz9OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_enebJOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_endz9uiaEd6gMtZRCjS81g" target="_endz--iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">callreceives</attribute>
    </edge>
    <edge id="_enebJOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_endz--iaEd6gMtZRCjS81g" target="_endz9uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_enebJ-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_endz9uiaEd6gMtZRCjS81g" target="_endz--iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">callsends</attribute>
    </edge>
    <edge id="_enebJ-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_endz--iaEd6gMtZRCjS81g" target="_endz9uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_enebKuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_endz9uiaEd6gMtZRCjS81g" target="_endz9-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">phase</attribute>
    </edge>
    <edge id="_enebKuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_endz9-iaEd6gMtZRCjS81g" target="_endz9uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_enebMOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_endz9-iaEd6gMtZRCjS81g" target="_endz-OiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">activity</attribute>
    </edge>
    <edge id="_enebMOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_endz-OiaEd6gMtZRCjS81g" target="_endz9-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_enebM-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_endz-OiaEd6gMtZRCjS81g" target="_endz-eiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">linkPrecedes</attribute>
    </edge>
    <edge id="_enebM-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_endz-eiaEd6gMtZRCjS81g" target="_endz-OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_enebNuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_endz-OiaEd6gMtZRCjS81g" target="_endz-eiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">linkfollows</attribute>
    </edge>
    <edge id="_enebNuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_endz-eiaEd6gMtZRCjS81g" target="_endz-OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_enfCEOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_endz-OiaEd6gMtZRCjS81g" target="_endz--iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">call</attribute>
    </edge>
    <edge id="_enfCEOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_endz--iaEd6gMtZRCjS81g" target="_endz-OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_enfCE-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_endz-uiaEd6gMtZRCjS81g" target="_endz--iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">call</attribute>
    </edge>
    <edge id="_enfCE-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_endz--iaEd6gMtZRCjS81g" target="_endz-uiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_engQMOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_endz_OiaEd6gMtZRCjS81g" target="_endz--iaEd6gMtZRCjS81g"/>
    <edge id="_engQMOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_endz--iaEd6gMtZRCjS81g" target="_endz_OiaEd6gMtZRCjS81g"/>
    <edge id="_engQMeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_endz_eiaEd6gMtZRCjS81g" target="_endz--iaEd6gMtZRCjS81g"/>
    <edge id="_engQMeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_endz--iaEd6gMtZRCjS81g" target="_endz_eiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
