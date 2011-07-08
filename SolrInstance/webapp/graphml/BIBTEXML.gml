<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_dedkgOiaEd6gMtZRCjS81g" projectName="BIBTEXML">
    <node className="BibtexFile" id="_deeLkuiaEd6gMtZRCjS81g"/>
    <node className="Author" id="_deeLk-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Entry" id="_deeLlOiaEd6gMtZRCjS81g">
      <attribute>id</attribute>
      <attribute>abstract</attribute>
    </node>
    <node className="AuthoredEntry" id="_deeLleiaEd6gMtZRCjS81g"/>
    <node className="BookTitledEntry" id="_deeLluiaEd6gMtZRCjS81g">
      <attribute>booktitle</attribute>
    </node>
    <node className="InstitutionEntry" id="_deeLl-iaEd6gMtZRCjS81g">
      <attribute>institution</attribute>
    </node>
    <node className="EditoredEntry" id="_deeLmOiaEd6gMtZRCjS81g">
      <attribute>editor</attribute>
    </node>
    <node className="DatedEntry" id="_deeLmeiaEd6gMtZRCjS81g">
      <attribute>year</attribute>
      <attribute>month</attribute>
    </node>
    <node className="JournalEntry" id="_deeLmuiaEd6gMtZRCjS81g">
      <attribute>journal</attribute>
    </node>
    <node className="TitledEntry" id="_deeLm-iaEd6gMtZRCjS81g">
      <attribute>title</attribute>
    </node>
    <node className="NotedEntry" id="_deeLnOiaEd6gMtZRCjS81g">
      <attribute>note</attribute>
    </node>
    <node className="PublisheredEntry" id="_deeLneiaEd6gMtZRCjS81g">
      <attribute>publisher</attribute>
    </node>
    <node className="SchoolEntry" id="_deeLnuiaEd6gMtZRCjS81g">
      <attribute>school</attribute>
    </node>
    <node className="Article" id="_deeLn-iaEd6gMtZRCjS81g">
      <attribute>volume</attribute>
      <attribute>number</attribute>
      <attribute>pages</attribute>
      <attribute>note</attribute>
    </node>
    <node className="Book" id="_deeLoOiaEd6gMtZRCjS81g">
      <attribute>volume</attribute>
      <attribute>number</attribute>
      <attribute>series</attribute>
      <attribute>address</attribute>
      <attribute>edition</attribute>
      <attribute>note</attribute>
    </node>
    <node className="Booklet" id="_deeLoeiaEd6gMtZRCjS81g">
      <attribute>howpublished</attribute>
      <attribute>address</attribute>
      <attribute>note</attribute>
    </node>
    <node className="InBook" id="_deeLouiaEd6gMtZRCjS81g">
      <attribute>chapter</attribute>
      <attribute>type</attribute>
    </node>
    <node className="InCollection" id="_deeLo-iaEd6gMtZRCjS81g">
      <attribute>chapter</attribute>
      <attribute>type</attribute>
    </node>
    <node className="Manual" id="_deeLpOiaEd6gMtZRCjS81g">
      <attribute>organization</attribute>
      <attribute>address</attribute>
      <attribute>edition</attribute>
      <attribute>note</attribute>
    </node>
    <node className="TechReport" id="_deeLpeiaEd6gMtZRCjS81g">
      <attribute>type</attribute>
      <attribute>number</attribute>
      <attribute>address</attribute>
      <attribute>note</attribute>
    </node>
    <node className="ThesisEntry" id="_deeLpuiaEd6gMtZRCjS81g">
      <attribute>type</attribute>
      <attribute>address</attribute>
      <attribute>note</attribute>
    </node>
    <node className="PhdThesis" id="_deeLp-iaEd6gMtZRCjS81g"/>
    <node className="MastersThesis" id="_deeLqOiaEd6gMtZRCjS81g"/>
    <node className="Proceedings" id="_deeLqeiaEd6gMtZRCjS81g">
      <attribute>editor</attribute>
      <attribute>volume</attribute>
      <attribute>number</attribute>
      <attribute>series</attribute>
      <attribute>address</attribute>
      <attribute>organization</attribute>
      <attribute>publisher</attribute>
      <attribute>note</attribute>
    </node>
    <node className="InProceedings" id="_deeLquiaEd6gMtZRCjS81g">
      <attribute>pages</attribute>
    </node>
    <node className="Conference" id="_deeLq-iaEd6gMtZRCjS81g"/>
    <node className="Unpublished" id="_deeLrOiaEd6gMtZRCjS81g"/>
    <node className="Misc" id="_deeLreiaEd6gMtZRCjS81g">
      <attribute>title</attribute>
      <attribute>howpublished</attribute>
      <attribute>month</attribute>
      <attribute>year</attribute>
      <attribute>note</attribute>
    </node>
    <edge id="_deeyq-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_deeLkuiaEd6gMtZRCjS81g" target="_deeLlOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">entries</attribute>
    </edge>
    <edge id="_deeyq-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_deeLlOiaEd6gMtZRCjS81g" target="_deeLkuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_deeyruiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_deeLleiaEd6gMtZRCjS81g" target="_deeLk-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">authors</attribute>
    </edge>
    <edge id="_deeyruiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_deeLk-iaEd6gMtZRCjS81g" target="_deeLleiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_deeyseiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_deeLoeiaEd6gMtZRCjS81g" target="_deeLk-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">authors</attribute>
    </edge>
    <edge id="_deeyseiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_deeLk-iaEd6gMtZRCjS81g" target="_deeLoeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_deeytOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_deeLreiaEd6gMtZRCjS81g" target="_deeLk-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">authors</attribute>
    </edge>
    <edge id="_deeytOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_deeLk-iaEd6gMtZRCjS81g" target="_deeLreiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_defZsOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_deeLleiaEd6gMtZRCjS81g" target="_deeLlOiaEd6gMtZRCjS81g"/>
    <edge id="_defZsOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_deeLlOiaEd6gMtZRCjS81g" target="_deeLleiaEd6gMtZRCjS81g"/>
    <edge id="_defZseiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_deeLluiaEd6gMtZRCjS81g" target="_deeLlOiaEd6gMtZRCjS81g"/>
    <edge id="_defZseiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_deeLlOiaEd6gMtZRCjS81g" target="_deeLluiaEd6gMtZRCjS81g"/>
    <edge id="_defZsuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_deeLl-iaEd6gMtZRCjS81g" target="_deeLlOiaEd6gMtZRCjS81g"/>
    <edge id="_defZsuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_deeLlOiaEd6gMtZRCjS81g" target="_deeLl-iaEd6gMtZRCjS81g"/>
    <edge id="_defZs-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_deeLmOiaEd6gMtZRCjS81g" target="_deeLlOiaEd6gMtZRCjS81g"/>
    <edge id="_defZs-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_deeLlOiaEd6gMtZRCjS81g" target="_deeLmOiaEd6gMtZRCjS81g"/>
    <edge id="_defZtOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_deeLmeiaEd6gMtZRCjS81g" target="_deeLlOiaEd6gMtZRCjS81g"/>
    <edge id="_defZtOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_deeLlOiaEd6gMtZRCjS81g" target="_deeLmeiaEd6gMtZRCjS81g"/>
    <edge id="_defZteiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_deeLmuiaEd6gMtZRCjS81g" target="_deeLlOiaEd6gMtZRCjS81g"/>
    <edge id="_defZteiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_deeLlOiaEd6gMtZRCjS81g" target="_deeLmuiaEd6gMtZRCjS81g"/>
    <edge id="_defZtuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_deeLm-iaEd6gMtZRCjS81g" target="_deeLlOiaEd6gMtZRCjS81g"/>
    <edge id="_defZtuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_deeLlOiaEd6gMtZRCjS81g" target="_deeLm-iaEd6gMtZRCjS81g"/>
    <edge id="_degAwOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_deeLnOiaEd6gMtZRCjS81g" target="_deeLlOiaEd6gMtZRCjS81g"/>
    <edge id="_degAwOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_deeLlOiaEd6gMtZRCjS81g" target="_deeLnOiaEd6gMtZRCjS81g"/>
    <edge id="_degAweiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_deeLneiaEd6gMtZRCjS81g" target="_deeLlOiaEd6gMtZRCjS81g"/>
    <edge id="_degAweiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_deeLlOiaEd6gMtZRCjS81g" target="_deeLneiaEd6gMtZRCjS81g"/>
    <edge id="_degAwuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_deeLnuiaEd6gMtZRCjS81g" target="_deeLlOiaEd6gMtZRCjS81g"/>
    <edge id="_degAwuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_deeLlOiaEd6gMtZRCjS81g" target="_deeLnuiaEd6gMtZRCjS81g"/>
    <edge id="_degAw-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_deeLn-iaEd6gMtZRCjS81g" target="_deeLleiaEd6gMtZRCjS81g"/>
    <edge id="_degAw-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_deeLleiaEd6gMtZRCjS81g" target="_deeLn-iaEd6gMtZRCjS81g"/>
    <edge id="_degAxOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_deeLn-iaEd6gMtZRCjS81g" target="_deeLmeiaEd6gMtZRCjS81g"/>
    <edge id="_degAxOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_deeLmeiaEd6gMtZRCjS81g" target="_deeLn-iaEd6gMtZRCjS81g"/>
    <edge id="_degAxeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_deeLn-iaEd6gMtZRCjS81g" target="_deeLm-iaEd6gMtZRCjS81g"/>
    <edge id="_degAxeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_deeLm-iaEd6gMtZRCjS81g" target="_deeLn-iaEd6gMtZRCjS81g"/>
    <edge id="_degAxuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_deeLn-iaEd6gMtZRCjS81g" target="_deeLmuiaEd6gMtZRCjS81g"/>
    <edge id="_degAxuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_deeLmuiaEd6gMtZRCjS81g" target="_deeLn-iaEd6gMtZRCjS81g"/>
    <edge id="_degAx-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_deeLoOiaEd6gMtZRCjS81g" target="_deeLleiaEd6gMtZRCjS81g"/>
    <edge id="_degAx-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_deeLleiaEd6gMtZRCjS81g" target="_deeLoOiaEd6gMtZRCjS81g"/>
    <edge id="_degAyOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_deeLoOiaEd6gMtZRCjS81g" target="_deeLmOiaEd6gMtZRCjS81g"/>
    <edge id="_degAyOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_deeLmOiaEd6gMtZRCjS81g" target="_deeLoOiaEd6gMtZRCjS81g"/>
    <edge id="_degAyeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_deeLoOiaEd6gMtZRCjS81g" target="_deeLneiaEd6gMtZRCjS81g"/>
    <edge id="_degAyeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_deeLneiaEd6gMtZRCjS81g" target="_deeLoOiaEd6gMtZRCjS81g"/>
    <edge id="_degAyuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_deeLoOiaEd6gMtZRCjS81g" target="_deeLmeiaEd6gMtZRCjS81g"/>
    <edge id="_degAyuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_deeLmeiaEd6gMtZRCjS81g" target="_deeLoOiaEd6gMtZRCjS81g"/>
    <edge id="_degAy-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_deeLoOiaEd6gMtZRCjS81g" target="_deeLm-iaEd6gMtZRCjS81g"/>
    <edge id="_degAy-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_deeLm-iaEd6gMtZRCjS81g" target="_deeLoOiaEd6gMtZRCjS81g"/>
    <edge id="_degAzOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_deeLoeiaEd6gMtZRCjS81g" target="_deeLmeiaEd6gMtZRCjS81g"/>
    <edge id="_degAzOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_deeLmeiaEd6gMtZRCjS81g" target="_deeLoeiaEd6gMtZRCjS81g"/>
    <edge id="_degAzeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_deeLoeiaEd6gMtZRCjS81g" target="_deeLm-iaEd6gMtZRCjS81g"/>
    <edge id="_degAzeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_deeLm-iaEd6gMtZRCjS81g" target="_deeLoeiaEd6gMtZRCjS81g"/>
    <edge id="_degn0OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_deeLouiaEd6gMtZRCjS81g" target="_deeLoOiaEd6gMtZRCjS81g"/>
    <edge id="_degn0OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_deeLoOiaEd6gMtZRCjS81g" target="_deeLouiaEd6gMtZRCjS81g"/>
    <edge id="_degn0eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_deeLo-iaEd6gMtZRCjS81g" target="_deeLoOiaEd6gMtZRCjS81g"/>
    <edge id="_degn0eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_deeLoOiaEd6gMtZRCjS81g" target="_deeLo-iaEd6gMtZRCjS81g"/>
    <edge id="_degn0uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_deeLo-iaEd6gMtZRCjS81g" target="_deeLluiaEd6gMtZRCjS81g"/>
    <edge id="_degn0uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_deeLluiaEd6gMtZRCjS81g" target="_deeLo-iaEd6gMtZRCjS81g"/>
    <edge id="_degn0-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_deeLpOiaEd6gMtZRCjS81g" target="_deeLm-iaEd6gMtZRCjS81g"/>
    <edge id="_degn0-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_deeLm-iaEd6gMtZRCjS81g" target="_deeLpOiaEd6gMtZRCjS81g"/>
    <edge id="_degn1OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_deeLpOiaEd6gMtZRCjS81g" target="_deeLleiaEd6gMtZRCjS81g"/>
    <edge id="_degn1OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_deeLleiaEd6gMtZRCjS81g" target="_deeLpOiaEd6gMtZRCjS81g"/>
    <edge id="_degn1eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_deeLpOiaEd6gMtZRCjS81g" target="_deeLmeiaEd6gMtZRCjS81g"/>
    <edge id="_degn1eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_deeLmeiaEd6gMtZRCjS81g" target="_deeLpOiaEd6gMtZRCjS81g"/>
    <edge id="_degn1uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_deeLpeiaEd6gMtZRCjS81g" target="_deeLleiaEd6gMtZRCjS81g"/>
    <edge id="_degn1uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_deeLleiaEd6gMtZRCjS81g" target="_deeLpeiaEd6gMtZRCjS81g"/>
    <edge id="_degn1-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_deeLpeiaEd6gMtZRCjS81g" target="_deeLl-iaEd6gMtZRCjS81g"/>
    <edge id="_degn1-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_deeLl-iaEd6gMtZRCjS81g" target="_deeLpeiaEd6gMtZRCjS81g"/>
    <edge id="_degn2OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_deeLpeiaEd6gMtZRCjS81g" target="_deeLmeiaEd6gMtZRCjS81g"/>
    <edge id="_degn2OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_deeLmeiaEd6gMtZRCjS81g" target="_deeLpeiaEd6gMtZRCjS81g"/>
    <edge id="_degn2eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_deeLpeiaEd6gMtZRCjS81g" target="_deeLm-iaEd6gMtZRCjS81g"/>
    <edge id="_degn2eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_deeLm-iaEd6gMtZRCjS81g" target="_deeLpeiaEd6gMtZRCjS81g"/>
    <edge id="_degn2uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_deeLpuiaEd6gMtZRCjS81g" target="_deeLleiaEd6gMtZRCjS81g"/>
    <edge id="_degn2uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_deeLleiaEd6gMtZRCjS81g" target="_deeLpuiaEd6gMtZRCjS81g"/>
    <edge id="_degn2-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_deeLpuiaEd6gMtZRCjS81g" target="_deeLmeiaEd6gMtZRCjS81g"/>
    <edge id="_degn2-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_deeLmeiaEd6gMtZRCjS81g" target="_deeLpuiaEd6gMtZRCjS81g"/>
    <edge id="_degn3OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_deeLpuiaEd6gMtZRCjS81g" target="_deeLm-iaEd6gMtZRCjS81g"/>
    <edge id="_degn3OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_deeLm-iaEd6gMtZRCjS81g" target="_deeLpuiaEd6gMtZRCjS81g"/>
    <edge id="_degn3eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_deeLpuiaEd6gMtZRCjS81g" target="_deeLnuiaEd6gMtZRCjS81g"/>
    <edge id="_degn3eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_deeLnuiaEd6gMtZRCjS81g" target="_deeLpuiaEd6gMtZRCjS81g"/>
    <edge id="_degn3uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_deeLp-iaEd6gMtZRCjS81g" target="_deeLpuiaEd6gMtZRCjS81g"/>
    <edge id="_degn3uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_deeLpuiaEd6gMtZRCjS81g" target="_deeLp-iaEd6gMtZRCjS81g"/>
    <edge id="_degn3-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_deeLqOiaEd6gMtZRCjS81g" target="_deeLpuiaEd6gMtZRCjS81g"/>
    <edge id="_degn3-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_deeLpuiaEd6gMtZRCjS81g" target="_deeLqOiaEd6gMtZRCjS81g"/>
    <edge id="_degn4OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_deeLqeiaEd6gMtZRCjS81g" target="_deeLmeiaEd6gMtZRCjS81g"/>
    <edge id="_degn4OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_deeLmeiaEd6gMtZRCjS81g" target="_deeLqeiaEd6gMtZRCjS81g"/>
    <edge id="_degn4eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_deeLqeiaEd6gMtZRCjS81g" target="_deeLm-iaEd6gMtZRCjS81g"/>
    <edge id="_degn4eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_deeLm-iaEd6gMtZRCjS81g" target="_deeLqeiaEd6gMtZRCjS81g"/>
    <edge id="_dehO4OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_deeLquiaEd6gMtZRCjS81g" target="_deeLleiaEd6gMtZRCjS81g"/>
    <edge id="_dehO4OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_deeLleiaEd6gMtZRCjS81g" target="_deeLquiaEd6gMtZRCjS81g"/>
    <edge id="_dehO4eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_deeLquiaEd6gMtZRCjS81g" target="_deeLluiaEd6gMtZRCjS81g"/>
    <edge id="_dehO4eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_deeLluiaEd6gMtZRCjS81g" target="_deeLquiaEd6gMtZRCjS81g"/>
    <edge id="_dehO4uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_deeLquiaEd6gMtZRCjS81g" target="_deeLqeiaEd6gMtZRCjS81g"/>
    <edge id="_dehO4uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_deeLqeiaEd6gMtZRCjS81g" target="_deeLquiaEd6gMtZRCjS81g"/>
    <edge id="_dehO4-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_deeLq-iaEd6gMtZRCjS81g" target="_deeLquiaEd6gMtZRCjS81g"/>
    <edge id="_dehO4-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_deeLquiaEd6gMtZRCjS81g" target="_deeLq-iaEd6gMtZRCjS81g"/>
    <edge id="_dehO5OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_deeLrOiaEd6gMtZRCjS81g" target="_deeLleiaEd6gMtZRCjS81g"/>
    <edge id="_dehO5OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_deeLleiaEd6gMtZRCjS81g" target="_deeLrOiaEd6gMtZRCjS81g"/>
    <edge id="_dehO5eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_deeLrOiaEd6gMtZRCjS81g" target="_deeLm-iaEd6gMtZRCjS81g"/>
    <edge id="_dehO5eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_deeLm-iaEd6gMtZRCjS81g" target="_deeLrOiaEd6gMtZRCjS81g"/>
    <edge id="_dehO5uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_deeLrOiaEd6gMtZRCjS81g" target="_deeLnOiaEd6gMtZRCjS81g"/>
    <edge id="_dehO5uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_deeLnOiaEd6gMtZRCjS81g" target="_deeLrOiaEd6gMtZRCjS81g"/>
    <edge id="_dehO5-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_deeLrOiaEd6gMtZRCjS81g" target="_deeLmeiaEd6gMtZRCjS81g"/>
    <edge id="_dehO5-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_deeLmeiaEd6gMtZRCjS81g" target="_deeLrOiaEd6gMtZRCjS81g"/>
    <edge id="_dehO6OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_deeLreiaEd6gMtZRCjS81g" target="_deeLlOiaEd6gMtZRCjS81g"/>
    <edge id="_dehO6OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_deeLlOiaEd6gMtZRCjS81g" target="_deeLreiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
