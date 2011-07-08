<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_gqWRsOiaEd6gMtZRCjS81g" projectName="USECASEUML">
    <node className="Requirement" id="_gqW4wuiaEd6gMtZRCjS81g"/>
    <node className="NonFunctionnelRequirement" id="_gqW4w-iaEd6gMtZRCjS81g"/>
    <node className="FunctionnelRequirement" id="_gqW4xOiaEd6gMtZRCjS81g"/>
    <node className="UseCase" id="_gqW4xeiaEd6gMtZRCjS81g"/>
    <node className="Goal" id="_gqW4xuiaEd6gMtZRCjS81g"/>
    <node className="Role" id="_gqW4x-iaEd6gMtZRCjS81g"/>
    <node className="HumanRole" id="_gqW4yOiaEd6gMtZRCjS81g"/>
    <node className="SystemRole" id="_gqW4yeiaEd6gMtZRCjS81g"/>
    <node className="EventRole" id="_gqW4yuiaEd6gMtZRCjS81g"/>
    <node className="Manage" id="_gqW4y-iaEd6gMtZRCjS81g"/>
    <node className="Resource" id="_gqW4zOiaEd6gMtZRCjS81g"/>
    <node className="ScenarioDescription" id="_gqW4zeiaEd6gMtZRCjS81g"/>
    <node className="Condition" id="_gqW4zuiaEd6gMtZRCjS81g"/>
    <node className="Pre" id="_gqW4z-iaEd6gMtZRCjS81g"/>
    <node className="Post" id="_gqW40OiaEd6gMtZRCjS81g"/>
    <edge id="_gqW40eiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gqW4w-iaEd6gMtZRCjS81g" target="_gqW4xeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">scopes</attribute>
    </edge>
    <edge id="_gqW40eiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gqW4xeiaEd6gMtZRCjS81g" target="_gqW4w-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gqW41OiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gqW4xOiaEd6gMtZRCjS81g" target="_gqW4xeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">specifies</attribute>
    </edge>
    <edge id="_gqW41OiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gqW4xeiaEd6gMtZRCjS81g" target="_gqW4xOiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gqW41-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gqW4xeiaEd6gMtZRCjS81g" target="_gqW4zeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">scenario</attribute>
    </edge>
    <edge id="_gqW41-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gqW4zeiaEd6gMtZRCjS81g" target="_gqW4xeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gqW42uiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gqW4xeiaEd6gMtZRCjS81g" target="_gqW4zuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">condition</attribute>
    </edge>
    <edge id="_gqW42uiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gqW4zuiaEd6gMtZRCjS81g" target="_gqW4xeiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gqW43eiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gqW4xeiaEd6gMtZRCjS81g" target="_gqW4x-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">interacter</attribute>
    </edge>
    <edge id="_gqW43eiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_gqW4x-iaEd6gMtZRCjS81g" target="_gqW4xeiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gqW44OiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gqW4xeiaEd6gMtZRCjS81g" target="_gqW4xuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">meet_by</attribute>
    </edge>
    <edge id="_gqW44OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gqW4xuiaEd6gMtZRCjS81g" target="_gqW4xeiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_gqW44-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_gqW4y-iaEd6gMtZRCjS81g" target="_gqW4zOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">managed_Resource</attribute>
    </edge>
    <edge id="_gqW44-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_gqW4zOiaEd6gMtZRCjS81g" target="_gqW4y-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_gqXf0OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gqW4w-iaEd6gMtZRCjS81g" target="_gqW4wuiaEd6gMtZRCjS81g"/>
    <edge id="_gqXf0OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gqW4wuiaEd6gMtZRCjS81g" target="_gqW4w-iaEd6gMtZRCjS81g"/>
    <edge id="_gqXf0eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gqW4xOiaEd6gMtZRCjS81g" target="_gqW4wuiaEd6gMtZRCjS81g"/>
    <edge id="_gqXf0eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gqW4wuiaEd6gMtZRCjS81g" target="_gqW4xOiaEd6gMtZRCjS81g"/>
    <edge id="_gqXf0uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gqW4yOiaEd6gMtZRCjS81g" target="_gqW4x-iaEd6gMtZRCjS81g"/>
    <edge id="_gqXf0uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gqW4x-iaEd6gMtZRCjS81g" target="_gqW4yOiaEd6gMtZRCjS81g"/>
    <edge id="_gqXf0-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gqW4yeiaEd6gMtZRCjS81g" target="_gqW4x-iaEd6gMtZRCjS81g"/>
    <edge id="_gqXf0-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gqW4x-iaEd6gMtZRCjS81g" target="_gqW4yeiaEd6gMtZRCjS81g"/>
    <edge id="_gqXf1OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gqW4yuiaEd6gMtZRCjS81g" target="_gqW4x-iaEd6gMtZRCjS81g"/>
    <edge id="_gqXf1OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gqW4x-iaEd6gMtZRCjS81g" target="_gqW4yuiaEd6gMtZRCjS81g"/>
    <edge id="_gqXf1eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gqW4y-iaEd6gMtZRCjS81g" target="_gqW4xeiaEd6gMtZRCjS81g"/>
    <edge id="_gqXf1eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gqW4xeiaEd6gMtZRCjS81g" target="_gqW4y-iaEd6gMtZRCjS81g"/>
    <edge id="_gqXf1uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gqW4z-iaEd6gMtZRCjS81g" target="_gqW4zuiaEd6gMtZRCjS81g"/>
    <edge id="_gqXf1uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gqW4zuiaEd6gMtZRCjS81g" target="_gqW4z-iaEd6gMtZRCjS81g"/>
    <edge id="_gqXf1-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_gqW40OiaEd6gMtZRCjS81g" target="_gqW4zuiaEd6gMtZRCjS81g"/>
    <edge id="_gqXf1-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_gqW4zuiaEd6gMtZRCjS81g" target="_gqW40OiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
