<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_eNqM0OiaEd6gMtZRCjS81g" projectName="GAIA">
    <node className="OrganizationalStructure" id="_eNqM0-iaEd6gMtZRCjS81g"/>
    <node className="Organization" id="_eNqM1OiaEd6gMtZRCjS81g"/>
    <node className="OrganizationalRule" id="_eNqM1eiaEd6gMtZRCjS81g"/>
    <node className="SafetyRule" id="_eNqM1uiaEd6gMtZRCjS81g"/>
    <node className="LivenessRule" id="_eNqM1-iaEd6gMtZRCjS81g"/>
    <node className="AgentType" id="_eNqM2OiaEd6gMtZRCjS81g"/>
    <node className="Service" id="_eNqM2eiaEd6gMtZRCjS81g">
      <attribute>inputs</attribute>
      <attribute>outputs</attribute>
      <attribute>pre-conditions</attribute>
      <attribute>post-conditions</attribute>
    </node>
    <node className="Role" id="_eNqM2uiaEd6gMtZRCjS81g"/>
    <node className="Activity" id="_eNqM2-iaEd6gMtZRCjS81g"/>
    <node className="Responsibility" id="_eNqM3OiaEd6gMtZRCjS81g"/>
    <node className="LivenessProperty" id="_eNqM3eiaEd6gMtZRCjS81g"/>
    <node className="SafetyProperty" id="_eNqM3uiaEd6gMtZRCjS81g"/>
    <node className="AssociationConnector" id="_eNqM3-iaEd6gMtZRCjS81g"/>
    <node className="Permission" id="_eNqM4OiaEd6gMtZRCjS81g"/>
    <node className="Resource" id="_eNqM4eiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>description</attribute>
    </node>
    <node className="Environnement" id="_eNqM4uiaEd6gMtZRCjS81g"/>
    <node className="Action" id="_eNqM4-iaEd6gMtZRCjS81g">
      <attribute>type</attribute>
    </node>
    <node className="Communication" id="_eNqM5OiaEd6gMtZRCjS81g"/>
    <node className="Protocol" id="_eNqM5eiaEd6gMtZRCjS81g">
      <attribute>name</attribute>
      <attribute>initiator</attribute>
      <attribute>partner</attribute>
      <attribute>inputs</attribute>
      <attribute>outputs</attribute>
      <attribute>description</attribute>
    </node>
    <edge id="_eNqM8-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eNqM0-iaEd6gMtZRCjS81g" target="_eNqM1OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">organization</attribute>
    </edge>
    <edge id="_eNqM8-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eNqM1OiaEd6gMtZRCjS81g" target="_eNqM0-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eNqz4eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eNqM1OiaEd6gMtZRCjS81g" target="_eNqM2OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">member</attribute>
    </edge>
    <edge id="_eNqz4eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eNqM2OiaEd6gMtZRCjS81g" target="_eNqM1OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eNq0BeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_eNqM4uiaEd6gMtZRCjS81g" target="_eNqM4eiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">resource</attribute>
    </edge>
    <edge id="_eNq0BeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_eNqM4eiaEd6gMtZRCjS81g" target="_eNqM4uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eNqM9uiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eNqM1OiaEd6gMtZRCjS81g" target="_eNqM1OiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">collaborates</attribute>
    </edge>
    <edge id="_eNqM9uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eNqM1OiaEd6gMtZRCjS81g" target="_eNqM1OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eNqz5OiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eNqM1OiaEd6gMtZRCjS81g" target="_eNqM1eiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">observes</attribute>
    </edge>
    <edge id="_eNqz5OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eNqM1eiaEd6gMtZRCjS81g" target="_eNqM1OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eNqz5-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eNqM2OiaEd6gMtZRCjS81g" target="_eNqM2eiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">provides</attribute>
    </edge>
    <edge id="_eNqz5-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eNqM2eiaEd6gMtZRCjS81g" target="_eNqM2OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eNqz6uiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eNqM2OiaEd6gMtZRCjS81g" target="_eNqM2OiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">collaborates</attribute>
    </edge>
    <edge id="_eNqz6uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eNqM2OiaEd6gMtZRCjS81g" target="_eNqM2OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eNqz7eiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eNqM2OiaEd6gMtZRCjS81g" target="_eNqM2uiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">plays</attribute>
    </edge>
    <edge id="_eNqz7eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eNqM2uiaEd6gMtZRCjS81g" target="_eNqM2OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eNqz8OiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eNqM2uiaEd6gMtZRCjS81g" target="_eNqM2-iaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">activity</attribute>
    </edge>
    <edge id="_eNqz8OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eNqM2-iaEd6gMtZRCjS81g" target="_eNqM2uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eNqz8-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eNqM2uiaEd6gMtZRCjS81g" target="_eNqM5OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">communication</attribute>
    </edge>
    <edge id="_eNqz8-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eNqM5OiaEd6gMtZRCjS81g" target="_eNqM2uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eNqz9uiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eNqM2uiaEd6gMtZRCjS81g" target="_eNqM3OiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">responsibility</attribute>
    </edge>
    <edge id="_eNqz9uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eNqM3OiaEd6gMtZRCjS81g" target="_eNqM2uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eNqz-eiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eNqM2uiaEd6gMtZRCjS81g" target="_eNqM3-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">actsOn</attribute>
    </edge>
    <edge id="_eNqz-eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eNqM3-iaEd6gMtZRCjS81g" target="_eNqM2uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eNqz_OiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eNqM3-iaEd6gMtZRCjS81g" target="_eNqM4eiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">actsOn</attribute>
    </edge>
    <edge id="_eNqz_OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eNqM4eiaEd6gMtZRCjS81g" target="_eNqM3-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eNqz_-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eNqM3-iaEd6gMtZRCjS81g" target="_eNqM4OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">permission</attribute>
    </edge>
    <edge id="_eNqz_-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eNqM4OiaEd6gMtZRCjS81g" target="_eNqM3-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eNq0AuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eNqM4eiaEd6gMtZRCjS81g" target="_eNqM4-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">permitted_action</attribute>
    </edge>
    <edge id="_eNq0AuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eNqM4-iaEd6gMtZRCjS81g" target="_eNqM4eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eNq0COiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eNqM5OiaEd6gMtZRCjS81g" target="_eNqM1eiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">observes</attribute>
    </edge>
    <edge id="_eNq0COiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eNqM1eiaEd6gMtZRCjS81g" target="_eNqM5OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eNq0C-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_eNqM5OiaEd6gMtZRCjS81g" target="_eNqM5eiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">protocol</attribute>
    </edge>
    <edge id="_eNq0C-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_eNqM5eiaEd6gMtZRCjS81g" target="_eNqM5OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_eNra8OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eNqM1uiaEd6gMtZRCjS81g" target="_eNqM1eiaEd6gMtZRCjS81g"/>
    <edge id="_eNra8OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eNqM1eiaEd6gMtZRCjS81g" target="_eNqM1uiaEd6gMtZRCjS81g"/>
    <edge id="_eNra8eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eNqM1-iaEd6gMtZRCjS81g" target="_eNqM1eiaEd6gMtZRCjS81g"/>
    <edge id="_eNra8eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eNqM1eiaEd6gMtZRCjS81g" target="_eNqM1-iaEd6gMtZRCjS81g"/>
    <edge id="_eNra8uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eNqM3eiaEd6gMtZRCjS81g" target="_eNqM3OiaEd6gMtZRCjS81g"/>
    <edge id="_eNra8uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eNqM3OiaEd6gMtZRCjS81g" target="_eNqM3eiaEd6gMtZRCjS81g"/>
    <edge id="_eNsCAOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_eNqM3uiaEd6gMtZRCjS81g" target="_eNqM3OiaEd6gMtZRCjS81g"/>
    <edge id="_eNsCAOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_eNqM3OiaEd6gMtZRCjS81g" target="_eNqM3uiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
