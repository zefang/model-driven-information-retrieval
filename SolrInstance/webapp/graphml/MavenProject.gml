<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_fNkxsOiaEd6gMtZRCjS81g" projectName="MavenProject">
    <node className="Project" id="_fNkxs-iaEd6gMtZRCjS81g">
      <attribute>id</attribute>
      <attribute>groupId</attribute>
      <attribute>artifactId</attribute>
      <attribute>name</attribute>
      <attribute>description</attribute>
    </node>
    <node className="Build" id="_fNkxtOiaEd6gMtZRCjS81g">
      <attribute>defaultGoal</attribute>
      <attribute>sourceDirectory</attribute>
      <attribute>unitTestSourceDirectory</attribute>
    </node>
    <node className="Resource" id="_fNkxteiaEd6gMtZRCjS81g">
      <attribute>targetPath</attribute>
      <attribute>filtering</attribute>
      <attribute>directory</attribute>
      <attribute>includes</attribute>
      <attribute>excludes</attribute>
    </node>
    <node className="MailingList" id="_fNkxtuiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>subscribe</attribute>
      <attribute>unsubscribe</attribute>
      <attribute>post</attribute>
      <attribute>archive</attribute>
      <attribute>otherArchives</attribute>
    </node>
    <node className="Person" id="_fNkxt-iaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>email</attribute>
      <attribute>url</attribute>
      <attribute>organization</attribute>
      <attribute>organizationUrl</attribute>
      <attribute>roles</attribute>
      <attribute>timezone</attribute>
      <attribute>properties</attribute>
    </node>
    <node className="Developer" id="_fNkxuOiaEd6gMtZRCjS81g">
      <attribute>id</attribute>
    </node>
    <node className="Contributor" id="_fNkxueiaEd6gMtZRCjS81g"/>
    <edge id="_fNlY3OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fNkxs-iaEd6gMtZRCjS81g" target="_fNkxtuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">mailingLists</attribute>
    </edge>
    <edge id="_fNlY3OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fNkxtuiaEd6gMtZRCjS81g" target="_fNkxs-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fNlY3-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fNkxs-iaEd6gMtZRCjS81g" target="_fNkxt-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">developersAndContributors</attribute>
    </edge>
    <edge id="_fNlY3-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fNkxt-iaEd6gMtZRCjS81g" target="_fNkxs-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fNlY4uiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fNkxs-iaEd6gMtZRCjS81g" target="_fNkxtOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">build</attribute>
    </edge>
    <edge id="_fNlY4uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fNkxtOiaEd6gMtZRCjS81g" target="_fNkxs-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fNlY5eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_fNkxs-iaEd6gMtZRCjS81g" target="_fNkxs-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">dependencies</attribute>
    </edge>
    <edge id="_fNlY5eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_fNkxs-iaEd6gMtZRCjS81g" target="_fNkxs-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fNlY6OiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fNkxtOiaEd6gMtZRCjS81g" target="_fNkxteiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">uniTest</attribute>
    </edge>
    <edge id="_fNlY6OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fNkxteiaEd6gMtZRCjS81g" target="_fNkxtOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fNlY6-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_fNkxtOiaEd6gMtZRCjS81g" target="_fNkxteiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">resources</attribute>
    </edge>
    <edge id="_fNlY6-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_fNkxteiaEd6gMtZRCjS81g" target="_fNkxtOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_fNmm4OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fNkxuOiaEd6gMtZRCjS81g" target="_fNkxt-iaEd6gMtZRCjS81g"/>
    <edge id="_fNmm4OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fNkxt-iaEd6gMtZRCjS81g" target="_fNkxuOiaEd6gMtZRCjS81g"/>
    <edge id="_fNmm4eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_fNkxueiaEd6gMtZRCjS81g" target="_fNkxt-iaEd6gMtZRCjS81g"/>
    <edge id="_fNmm4eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_fNkxt-iaEd6gMtZRCjS81g" target="_fNkxueiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
