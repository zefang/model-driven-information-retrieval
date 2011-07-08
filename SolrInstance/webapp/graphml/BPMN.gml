<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_diODIOiaEd6gMtZRCjS81g" projectName="bpmn">
    <node className="Activity" id="_diOqMOiaEd6gMtZRCjS81g">
      <attribute>orderedMessages</attribute>
      <attribute>activityType</attribute>
      <attribute>looping</attribute>
    </node>
    <node className="Artifact" id="_diOqMeiaEd6gMtZRCjS81g"/>
    <node className="ArtifactsContainer" id="_diOqMuiaEd6gMtZRCjS81g"/>
    <node className="Association" id="_diOqM-iaEd6gMtZRCjS81g">
      <attribute>direction</attribute>
    </node>
    <node className="BpmnDiagram" id="_diOqNOiaEd6gMtZRCjS81g">
      <attribute>author</attribute>
      <attribute>title</attribute>
    </node>
    <node className="DataObject" id="_diOqNeiaEd6gMtZRCjS81g"/>
    <node className="Graph" id="_diOqNuiaEd6gMtZRCjS81g"/>
    <node className="Group" id="_diOqN-iaEd6gMtZRCjS81g"/>
    <node className="Identifiable" id="_diOqOOiaEd6gMtZRCjS81g">
      <attribute>iD</attribute>
    </node>
    <node className="IdentifiableNode" id="_diOqOeiaEd6gMtZRCjS81g"/>
    <node className="Lane" id="_diOqOuiaEd6gMtZRCjS81g"/>
    <node className="MessagingEdge" id="_diOqO-iaEd6gMtZRCjS81g"/>
    <node className="NamedBpmnObject" id="_diOqPOiaEd6gMtZRCjS81g">
      <attribute>documentation</attribute>
      <attribute>name</attribute>
      <attribute>ncname</attribute>
    </node>
    <node className="Pool" id="_diOqPeiaEd6gMtZRCjS81g"/>
    <node className="SequenceEdge" id="_diOqPuiaEd6gMtZRCjS81g">
      <attribute>isDefault</attribute>
    </node>
    <node className="SubProcess" id="_diOqP-iaEd6gMtZRCjS81g">
      <attribute>isTransaction</attribute>
    </node>
    <node className="TextAnnotation" id="_diOqQOiaEd6gMtZRCjS81g"/>
    <node className="Vertex" id="_diOqQeiaEd6gMtZRCjS81g"/>
    <edge id="_diOqWuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_diOqMeiaEd6gMtZRCjS81g" target="_diOqM-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">associations</attribute>
    </edge>
    <edge id="_diOqWuiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_diOqM-iaEd6gMtZRCjS81g" target="_diOqMeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_diOqXeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_diOqMuiaEd6gMtZRCjS81g" target="_diOqMeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">artifacts</attribute>
    </edge>
    <edge id="_diOqXeiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_diOqMeiaEd6gMtZRCjS81g" target="_diOqMuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_diOqY-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_diOqNOiaEd6gMtZRCjS81g" target="_diOqPeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">pools</attribute>
    </edge>
    <edge id="_diOqY-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_diOqPeiaEd6gMtZRCjS81g" target="_diOqNOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_diOqZuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_diOqNOiaEd6gMtZRCjS81g" target="_diOqO-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">messages</attribute>
    </edge>
    <edge id="_diOqZuiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_diOqO-iaEd6gMtZRCjS81g" target="_diOqNOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_diPRQeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_diOqNuiaEd6gMtZRCjS81g" target="_diOqQeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">vertices</attribute>
    </edge>
    <edge id="_diPRQeiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_diOqQeiaEd6gMtZRCjS81g" target="_diOqNuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_diPRROiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_diOqNuiaEd6gMtZRCjS81g" target="_diOqPuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">sequenceEdges</attribute>
    </edge>
    <edge id="_diPRROiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_diOqPuiaEd6gMtZRCjS81g" target="_diOqNuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_diPRR-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_diOqPeiaEd6gMtZRCjS81g" target="_diOqOuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">lanes</attribute>
    </edge>
    <edge id="_diPRR-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_diOqOuiaEd6gMtZRCjS81g" target="_diOqPeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_diPRUOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_diOqP-iaEd6gMtZRCjS81g" target="_diOqMOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">eventHandlers</attribute>
    </edge>
    <edge id="_diPRUOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_diOqMOiaEd6gMtZRCjS81g" target="_diOqP-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_diOqTuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_diOqMOiaEd6gMtZRCjS81g" target="_diOqO-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">incomingMessages</attribute>
    </edge>
    <edge id="_diOqTuiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_diOqO-iaEd6gMtZRCjS81g" target="_diOqMOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_diOqUeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_diOqMOiaEd6gMtZRCjS81g" target="_diOqO-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">outgoingMessages</attribute>
    </edge>
    <edge id="_diOqUeiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_diOqO-iaEd6gMtZRCjS81g" target="_diOqMOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_diOqVOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_diOqMOiaEd6gMtZRCjS81g" target="_diOqN-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">groups</attribute>
    </edge>
    <edge id="_diOqVOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_diOqN-iaEd6gMtZRCjS81g" target="_diOqMOiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_diOqV-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_diOqMOiaEd6gMtZRCjS81g" target="_diOqOuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">lane</attribute>
    </edge>
    <edge id="_diOqV-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_diOqOuiaEd6gMtZRCjS81g" target="_diOqMOiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_diOqYOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_diOqM-iaEd6gMtZRCjS81g" target="_diOqOeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">target</attribute>
    </edge>
    <edge id="_diOqYOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_diOqOeiaEd6gMtZRCjS81g" target="_diOqM-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_diPRSuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_diOqPuiaEd6gMtZRCjS81g" target="_diOqQeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">source</attribute>
    </edge>
    <edge id="_diPRSuiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_diOqQeiaEd6gMtZRCjS81g" target="_diOqPuiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_diPRTeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_diOqPuiaEd6gMtZRCjS81g" target="_diOqQeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">target</attribute>
    </edge>
    <edge id="_diPRTeiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_diOqQeiaEd6gMtZRCjS81g" target="_diOqPuiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_diRGcOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_diOqMOiaEd6gMtZRCjS81g" target="_diOqQeiaEd6gMtZRCjS81g"/>
    <edge id="_diRGcOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_diOqQeiaEd6gMtZRCjS81g" target="_diOqMOiaEd6gMtZRCjS81g"/>
    <edge id="_diRGceiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_diOqMOiaEd6gMtZRCjS81g" target="_diOqPOiaEd6gMtZRCjS81g"/>
    <edge id="_diRGceiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_diOqPOiaEd6gMtZRCjS81g" target="_diOqMOiaEd6gMtZRCjS81g"/>
    <edge id="_diRGcuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_diOqMeiaEd6gMtZRCjS81g" target="_diOqOOiaEd6gMtZRCjS81g"/>
    <edge id="_diRGcuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_diOqOOiaEd6gMtZRCjS81g" target="_diOqMeiaEd6gMtZRCjS81g"/>
    <edge id="_diRGc-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_diOqMeiaEd6gMtZRCjS81g" target="_diOqPOiaEd6gMtZRCjS81g"/>
    <edge id="_diRGc-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_diOqPOiaEd6gMtZRCjS81g" target="_diOqMeiaEd6gMtZRCjS81g"/>
    <edge id="_diRGdOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_diOqMuiaEd6gMtZRCjS81g" target="_diOqPOiaEd6gMtZRCjS81g"/>
    <edge id="_diRGdOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_diOqPOiaEd6gMtZRCjS81g" target="_diOqMuiaEd6gMtZRCjS81g"/>
    <edge id="_diRGdeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_diOqNOiaEd6gMtZRCjS81g" target="_diOqOOiaEd6gMtZRCjS81g"/>
    <edge id="_diRGdeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_diOqOOiaEd6gMtZRCjS81g" target="_diOqNOiaEd6gMtZRCjS81g"/>
    <edge id="_diRGduiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_diOqNOiaEd6gMtZRCjS81g" target="_diOqMuiaEd6gMtZRCjS81g"/>
    <edge id="_diRGduiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_diOqMuiaEd6gMtZRCjS81g" target="_diOqNOiaEd6gMtZRCjS81g"/>
    <edge id="_diRGd-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_diOqNeiaEd6gMtZRCjS81g" target="_diOqMeiaEd6gMtZRCjS81g"/>
    <edge id="_diRGd-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_diOqMeiaEd6gMtZRCjS81g" target="_diOqNeiaEd6gMtZRCjS81g"/>
    <edge id="_diRGeOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_diOqNuiaEd6gMtZRCjS81g" target="_diOqOeiaEd6gMtZRCjS81g"/>
    <edge id="_diRGeOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_diOqOeiaEd6gMtZRCjS81g" target="_diOqNuiaEd6gMtZRCjS81g"/>
    <edge id="_diRGeeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_diOqNuiaEd6gMtZRCjS81g" target="_diOqMuiaEd6gMtZRCjS81g"/>
    <edge id="_diRGeeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_diOqMuiaEd6gMtZRCjS81g" target="_diOqNuiaEd6gMtZRCjS81g"/>
    <edge id="_diRGeuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_diOqN-iaEd6gMtZRCjS81g" target="_diOqMeiaEd6gMtZRCjS81g"/>
    <edge id="_diRGeuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_diOqMeiaEd6gMtZRCjS81g" target="_diOqN-iaEd6gMtZRCjS81g"/>
    <edge id="_diRGe-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_diOqOeiaEd6gMtZRCjS81g" target="_diOqOOiaEd6gMtZRCjS81g"/>
    <edge id="_diRGe-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_diOqOOiaEd6gMtZRCjS81g" target="_diOqOeiaEd6gMtZRCjS81g"/>
    <edge id="_diRtgOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_diOqOuiaEd6gMtZRCjS81g" target="_diOqOOiaEd6gMtZRCjS81g"/>
    <edge id="_diRtgOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_diOqOOiaEd6gMtZRCjS81g" target="_diOqOuiaEd6gMtZRCjS81g"/>
    <edge id="_diRtgeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_diOqOuiaEd6gMtZRCjS81g" target="_diOqPOiaEd6gMtZRCjS81g"/>
    <edge id="_diRtgeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_diOqPOiaEd6gMtZRCjS81g" target="_diOqOuiaEd6gMtZRCjS81g"/>
    <edge id="_diRtguiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_diOqO-iaEd6gMtZRCjS81g" target="_diOqOOiaEd6gMtZRCjS81g"/>
    <edge id="_diRtguiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_diOqOOiaEd6gMtZRCjS81g" target="_diOqO-iaEd6gMtZRCjS81g"/>
    <edge id="_diRtg-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_diOqO-iaEd6gMtZRCjS81g" target="_diOqPOiaEd6gMtZRCjS81g"/>
    <edge id="_diRtg-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_diOqPOiaEd6gMtZRCjS81g" target="_diOqO-iaEd6gMtZRCjS81g"/>
    <edge id="_diRthOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_diOqPeiaEd6gMtZRCjS81g" target="_diOqNuiaEd6gMtZRCjS81g"/>
    <edge id="_diRthOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_diOqNuiaEd6gMtZRCjS81g" target="_diOqPeiaEd6gMtZRCjS81g"/>
    <edge id="_diRtheiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_diOqPeiaEd6gMtZRCjS81g" target="_diOqPOiaEd6gMtZRCjS81g"/>
    <edge id="_diRtheiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_diOqPOiaEd6gMtZRCjS81g" target="_diOqPeiaEd6gMtZRCjS81g"/>
    <edge id="_diRthuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_diOqPuiaEd6gMtZRCjS81g" target="_diOqOOiaEd6gMtZRCjS81g"/>
    <edge id="_diRthuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_diOqOOiaEd6gMtZRCjS81g" target="_diOqPuiaEd6gMtZRCjS81g"/>
    <edge id="_diRth-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_diOqPuiaEd6gMtZRCjS81g" target="_diOqPOiaEd6gMtZRCjS81g"/>
    <edge id="_diRth-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_diOqPOiaEd6gMtZRCjS81g" target="_diOqPuiaEd6gMtZRCjS81g"/>
    <edge id="_diRtiOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_diOqP-iaEd6gMtZRCjS81g" target="_diOqMOiaEd6gMtZRCjS81g"/>
    <edge id="_diRtiOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_diOqMOiaEd6gMtZRCjS81g" target="_diOqP-iaEd6gMtZRCjS81g"/>
    <edge id="_diRtieiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_diOqP-iaEd6gMtZRCjS81g" target="_diOqNuiaEd6gMtZRCjS81g"/>
    <edge id="_diRtieiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_diOqNuiaEd6gMtZRCjS81g" target="_diOqP-iaEd6gMtZRCjS81g"/>
    <edge id="_diRtiuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_diOqQOiaEd6gMtZRCjS81g" target="_diOqMeiaEd6gMtZRCjS81g"/>
    <edge id="_diRtiuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_diOqMeiaEd6gMtZRCjS81g" target="_diOqQOiaEd6gMtZRCjS81g"/>
    <edge id="_diRti-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_diOqQeiaEd6gMtZRCjS81g" target="_diOqOeiaEd6gMtZRCjS81g"/>
    <edge id="_diRti-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_diOqOeiaEd6gMtZRCjS81g" target="_diOqQeiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
