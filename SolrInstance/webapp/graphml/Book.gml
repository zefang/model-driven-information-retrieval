<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_dkpFAOiaEd6gMtZRCjS81g" projectName="Book">
    <node className="Book" id="_dkpFA-iaEd6gMtZRCjS81g">
      <attribute>title</attribute>
    </node>
    <node className="Chapter" id="_dkpFBOiaEd6gMtZRCjS81g">
      <attribute>title</attribute>
      <attribute>nbPages</attribute>
      <attribute>author</attribute>
    </node>
    <edge id="_dkpFCeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dkpFA-iaEd6gMtZRCjS81g" target="_dkpFBOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">chapters</attribute>
    </edge>
    <edge id="_dkpFCeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dkpFBOiaEd6gMtZRCjS81g" target="_dkpFA-iaEd6gMtZRCjS81g" upperValue="1"/>
  </graph>
</graphml>
