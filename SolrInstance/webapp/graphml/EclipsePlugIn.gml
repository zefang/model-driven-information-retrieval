<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_eKCREOiaEd6gMtZRCjS81g" projectName="EclipsePlugIn">
    <node className="Application" id="_eKCRE-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>version</attribute>
      <attribute>author</attribute>
    </node>
    <node className="ExtensionPoint" id="_eKCRFOiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>id</attribute>
    </node>
    <node className="Description" id="_eKCRFeiaEd6gMtZRCjS81g">
      <attribute>xmlSchema</attribute>
    </node>
    <node className="Extension" id="_eKCRFuiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>id</attribute>
    </node>
    <node className="PlugIn" id="_eKCRF-iaEd6gMtZRCjS81g">
      <attribute>id</attribute>
      <attribute>displayableName</attribute>
      <attribute>version</attribute>
      <attribute>supplier</attribute>
    </node>
    <node className="Librairy" id="_eKCRGOiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <node className="Class" id="_eKCRGeiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
    </node>
    <edge id="_eKC4IuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eKCRE-iaEd6gMtZRCjS81g" target="_eKCRFOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">extensionPoints</attribute>
    </edge>
    <edge id="_eKC4IuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eKCRFOiaEd6gMtZRCjS81g" target="_eKCRE-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eKC4LuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eKCRF-iaEd6gMtZRCjS81g" target="_eKCRFOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">extensionPoints</attribute>
    </edge>
    <edge id="_eKC4LuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eKCRFOiaEd6gMtZRCjS81g" target="_eKCRF-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eKC4N-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eKCRGOiaEd6gMtZRCjS81g" target="_eKCRGeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">classes</attribute>
    </edge>
    <edge id="_eKC4N-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eKCRGeiaEd6gMtZRCjS81g" target="_eKCRGOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eKC4JeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eKCRFOiaEd6gMtZRCjS81g" target="_eKCRFeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">descriptions</attribute>
    </edge>
    <edge id="_eKC4JeiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_eKCRFeiaEd6gMtZRCjS81g" target="_eKCRFOiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_eKC4KOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eKCRFuiaEd6gMtZRCjS81g" target="_eKCRFOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">isConfiguredInto</attribute>
    </edge>
    <edge id="_eKC4KOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eKCRFOiaEd6gMtZRCjS81g" target="_eKCRFuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eKC4K-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eKCRF-iaEd6gMtZRCjS81g" target="_eKCRFuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">configures</attribute>
    </edge>
    <edge id="_eKC4K-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eKCRFuiaEd6gMtZRCjS81g" target="_eKCRF-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eKC4MeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eKCRF-iaEd6gMtZRCjS81g" target="_eKCRF-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">requires</attribute>
    </edge>
    <edge id="_eKC4MeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eKCRF-iaEd6gMtZRCjS81g" target="_eKCRF-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eKC4NOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eKCRF-iaEd6gMtZRCjS81g" target="_eKCRGOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">uses</attribute>
    </edge>
    <edge id="_eKC4NOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eKCRGOiaEd6gMtZRCjS81g" target="_eKCRF-iaEd6gMtZRCjS81g" upperValue="1"/>
  </graph>
</graphml>
