<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_dmpQIOiaEd6gMtZRCjS81g" projectName="Bugzilla">
    <node className="BugzillaRoot" id="_dmpQI-iaEd6gMtZRCjS81g">
      <attribute>version</attribute>
      <attribute>urlbase</attribute>
      <attribute>maintainer</attribute>
      <attribute>exporter</attribute>
    </node>
    <node className="Bug" id="_dmpQJOiaEd6gMtZRCjS81g">
      <attribute>error</attribute>
      <attribute>bug_id</attribute>
      <attribute>exporter</attribute>
      <attribute>urlbase</attribute>
      <attribute>bug_status</attribute>
      <attribute>resolution</attribute>
      <attribute>product</attribute>
      <attribute>priority</attribute>
      <attribute>version</attribute>
      <attribute>rep_platform</attribute>
      <attribute>assigned_to</attribute>
      <attribute>delta_ts</attribute>
      <attribute>component</attribute>
      <attribute>reporter</attribute>
      <attribute>target_milestone</attribute>
      <attribute>bug_severity</attribute>
      <attribute>creation_ts</attribute>
      <attribute>qa_contact</attribute>
      <attribute>status_whiteboard</attribute>
      <attribute>op_sys</attribute>
      <attribute>bug_file_loc</attribute>
      <attribute>short_desc</attribute>
    </node>
    <node className="StringElt" id="_dmpQJeiaEd6gMtZRCjS81g">
      <attribute>value</attribute>
    </node>
    <node className="Keywords" id="_dmpQJuiaEd6gMtZRCjS81g"/>
    <node className="Dependson" id="_dmpQJ-iaEd6gMtZRCjS81g"/>
    <node className="Blocks" id="_dmpQKOiaEd6gMtZRCjS81g"/>
    <node className="Cc" id="_dmpQKeiaEd6gMtZRCjS81g"/>
    <node className="LongDesc" id="_dmpQKuiaEd6gMtZRCjS81g">
      <attribute>isPrivate</attribute>
      <attribute>who</attribute>
      <attribute>bug_when</attribute>
      <attribute>thetext</attribute>
    </node>
    <node className="Attachment" id="_dmpQK-iaEd6gMtZRCjS81g">
      <attribute>isObsolete</attribute>
      <attribute>isPatch</attribute>
      <attribute>isPrivate</attribute>
      <attribute>id</attribute>
      <attribute>date</attribute>
      <attribute>desc</attribute>
      <attribute>type</attribute>
      <attribute>data</attribute>
    </node>
    <edge id="_dmpQU-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dmpQI-iaEd6gMtZRCjS81g" target="_dmpQJOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">bugs</attribute>
    </edge>
    <edge id="_dmpQU-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dmpQJOiaEd6gMtZRCjS81g" target="_dmpQI-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dmpQVuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dmpQJOiaEd6gMtZRCjS81g" target="_dmpQJuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">keywords</attribute>
    </edge>
    <edge id="_dmpQVuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dmpQJuiaEd6gMtZRCjS81g" target="_dmpQJOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dmp3MeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dmpQJOiaEd6gMtZRCjS81g" target="_dmpQJ-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">dependson</attribute>
    </edge>
    <edge id="_dmp3MeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dmpQJ-iaEd6gMtZRCjS81g" target="_dmpQJOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dmp3NOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dmpQJOiaEd6gMtZRCjS81g" target="_dmpQKOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">blocks</attribute>
    </edge>
    <edge id="_dmp3NOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dmpQKOiaEd6gMtZRCjS81g" target="_dmpQJOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dmp3N-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dmpQJOiaEd6gMtZRCjS81g" target="_dmpQKeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">cc</attribute>
    </edge>
    <edge id="_dmp3N-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dmpQKeiaEd6gMtZRCjS81g" target="_dmpQJOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dmp3OuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dmpQJOiaEd6gMtZRCjS81g" target="_dmpQKuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">long_desc</attribute>
    </edge>
    <edge id="_dmp3OuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dmpQKuiaEd6gMtZRCjS81g" target="_dmpQJOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dmp3PeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dmpQJOiaEd6gMtZRCjS81g" target="_dmpQK-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">attachment</attribute>
    </edge>
    <edge id="_dmp3PeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dmpQK-iaEd6gMtZRCjS81g" target="_dmpQJOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dmrFUOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dmpQJuiaEd6gMtZRCjS81g" target="_dmpQJeiaEd6gMtZRCjS81g"/>
    <edge id="_dmrFUOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dmpQJeiaEd6gMtZRCjS81g" target="_dmpQJuiaEd6gMtZRCjS81g"/>
    <edge id="_dmrFUeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dmpQJ-iaEd6gMtZRCjS81g" target="_dmpQJeiaEd6gMtZRCjS81g"/>
    <edge id="_dmrFUeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dmpQJeiaEd6gMtZRCjS81g" target="_dmpQJ-iaEd6gMtZRCjS81g"/>
    <edge id="_dmrFUuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dmpQKOiaEd6gMtZRCjS81g" target="_dmpQJeiaEd6gMtZRCjS81g"/>
    <edge id="_dmrFUuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dmpQJeiaEd6gMtZRCjS81g" target="_dmpQKOiaEd6gMtZRCjS81g"/>
    <edge id="_dmrFU-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dmpQKeiaEd6gMtZRCjS81g" target="_dmpQJeiaEd6gMtZRCjS81g"/>
    <edge id="_dmrFU-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dmpQJeiaEd6gMtZRCjS81g" target="_dmpQKeiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
