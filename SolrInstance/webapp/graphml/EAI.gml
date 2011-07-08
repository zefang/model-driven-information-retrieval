<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_eFd6IOiaEd6gMtZRCjS81g" projectName="EAI">
    <node className="FCMSource" id="_eFd6I-iaEd6gMtZRCjS81g"/>
    <node className="EAISource" id="_eFd6JOiaEd6gMtZRCjS81g"/>
    <node className="FCMSink" id="_eFd6JeiaEd6gMtZRCjS81g"/>
    <node className="EAISink" id="_eFd6JuiaEd6gMtZRCjS81g"/>
    <node className="EAIResource" id="_eFd6J-iaEd6gMtZRCjS81g"/>
    <node className="EAIQueue" id="_eFd6KOiaEd6gMtZRCjS81g">
      <attribute>maxLength</attribute>
      <attribute>name</attribute>
    </node>
    <edge id="_eFehMuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eFd6JOiaEd6gMtZRCjS81g" target="_eFd6J-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">resources</attribute>
    </edge>
    <edge id="_eFehMuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eFd6J-iaEd6gMtZRCjS81g" target="_eFd6JOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eFehNeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eFd6JuiaEd6gMtZRCjS81g" target="_eFd6J-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">resources</attribute>
    </edge>
    <edge id="_eFehNeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eFd6J-iaEd6gMtZRCjS81g" target="_eFd6JuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eFehOuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eFd6JOiaEd6gMtZRCjS81g" target="_eFd6I-iaEd6gMtZRCjS81g"/>
    <edge id="_eFehOuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eFd6I-iaEd6gMtZRCjS81g" target="_eFd6JOiaEd6gMtZRCjS81g"/>
    <edge id="_eFehO-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eFd6JuiaEd6gMtZRCjS81g" target="_eFd6JeiaEd6gMtZRCjS81g"/>
    <edge id="_eFehO-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eFd6JeiaEd6gMtZRCjS81g" target="_eFd6JuiaEd6gMtZRCjS81g"/>
    <edge id="_eFehPOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eFd6KOiaEd6gMtZRCjS81g" target="_eFd6J-iaEd6gMtZRCjS81g"/>
    <edge id="_eFehPOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eFd6J-iaEd6gMtZRCjS81g" target="_eFd6KOiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
