<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_faB5UOiaEd6gMtZRCjS81g" projectName="ODPIV">
    <node className="InvariantSchema" id="_faB5U-iaEd6gMtZRCjS81g"/>
    <node className="InformationObjectTemplate" id="_faB5VOiaEd6gMtZRCjS81g"/>
    <node className="InformationObjectType" id="_faB5VeiaEd6gMtZRCjS81g"/>
    <node className="InformationObject" id="_faB5VuiaEd6gMtZRCjS81g"/>
    <node className="State" id="_faB5V-iaEd6gMtZRCjS81g"/>
    <node className="StateChange" id="_faB5WOiaEd6gMtZRCjS81g"/>
    <node className="DynamicSchema" id="_faB5WeiaEd6gMtZRCjS81g"/>
    <node className="StaticSchema" id="_faB5WuiaEd6gMtZRCjS81g">
      <attribute>locationTime</attribute>
    </node>
    <node className="Action" id="_faB5W-iaEd6gMtZRCjS81g"/>
    <node className="ActionType" id="_faB5XOiaEd6gMtZRCjS81g"/>
    <node className="ActionTemplate" id="_faB5XeiaEd6gMtZRCjS81g"/>
    <edge id="_faCgbOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_faB5V-iaEd6gMtZRCjS81g" target="_faB5VuiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">S_IO</attribute>
    </edge>
    <edge id="_faCgbOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_faB5VuiaEd6gMtZRCjS81g" target="_faB5V-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_faB5X-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_faB5U-iaEd6gMtZRCjS81g" target="_faB5XeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">constrainer_AT</attribute>
    </edge>
    <edge id="_faB5X-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_faB5XeiaEd6gMtZRCjS81g" target="_faB5U-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_faB5YuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_faB5U-iaEd6gMtZRCjS81g" target="_faB5XOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">constrainer_ATy</attribute>
    </edge>
    <edge id="_faB5YuiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_faB5XOiaEd6gMtZRCjS81g" target="_faB5U-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_faB5ZeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_faB5U-iaEd6gMtZRCjS81g" target="_faB5WOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">constrainer_SC</attribute>
    </edge>
    <edge id="_faB5ZeiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_faB5WOiaEd6gMtZRCjS81g" target="_faB5U-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_faB5aOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_faB5U-iaEd6gMtZRCjS81g" target="_faB5V-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">constrainer_S</attribute>
    </edge>
    <edge id="_faB5aOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_faB5V-iaEd6gMtZRCjS81g" target="_faB5U-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_faB5a-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_faB5U-iaEd6gMtZRCjS81g" target="_faB5VOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">constrainer_IOT</attribute>
    </edge>
    <edge id="_faB5a-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_faB5VOiaEd6gMtZRCjS81g" target="_faB5U-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_faB5buiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_faB5U-iaEd6gMtZRCjS81g" target="_faB5VeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">constrainer_IOTy</attribute>
    </edge>
    <edge id="_faB5buiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_faB5VeiaEd6gMtZRCjS81g" target="_faB5U-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_faB5ceiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_faB5VOiaEd6gMtZRCjS81g" target="_faB5VuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">IOT_IO</attribute>
    </edge>
    <edge id="_faB5ceiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_faB5VuiaEd6gMtZRCjS81g" target="_faB5VOiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_faB5dOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_faB5VeiaEd6gMtZRCjS81g" target="_faB5VuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">IOTy_IO</attribute>
    </edge>
    <edge id="_faB5dOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_faB5VuiaEd6gMtZRCjS81g" target="_faB5VeiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_faCgYOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_faB5VuiaEd6gMtZRCjS81g" target="_faB5WuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">describer</attribute>
    </edge>
    <edge id="_faCgYOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_faB5WuiaEd6gMtZRCjS81g" target="_faB5VuiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_faCgY-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_faB5VuiaEd6gMtZRCjS81g" target="_faB5W-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">IO_A</attribute>
    </edge>
    <edge id="_faCgY-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_faB5W-iaEd6gMtZRCjS81g" target="_faB5VuiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_faCgZuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_faB5V-iaEd6gMtZRCjS81g" target="_faB5WOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">change</attribute>
    </edge>
    <edge id="_faCgZuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_faB5WOiaEd6gMtZRCjS81g" target="_faB5V-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_faCgaeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_faB5V-iaEd6gMtZRCjS81g" target="_faB5WOiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="1">causeSC</attribute>
    </edge>
    <edge id="_faCgaeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_faB5WOiaEd6gMtZRCjS81g" target="_faB5V-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_faCgb-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_faB5WOiaEd6gMtZRCjS81g" target="_faB5WeiaEd6gMtZRCjS81g">
      <attribute lowerValue="1" upperValue="*">specifier</attribute>
    </edge>
    <edge id="_faCgb-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_faB5WeiaEd6gMtZRCjS81g" target="_faB5WOiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_faCgcuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_faB5WOiaEd6gMtZRCjS81g" target="_faB5W-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">cause</attribute>
    </edge>
    <edge id="_faCgcuiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_faB5W-iaEd6gMtZRCjS81g" target="_faB5WOiaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_faCgdeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_faB5W-iaEd6gMtZRCjS81g" target="_faB5XeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">A_AT</attribute>
    </edge>
    <edge id="_faCgdeiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_faB5XeiaEd6gMtZRCjS81g" target="_faB5W-iaEd6gMtZRCjS81g" upperValue="*"/>
    <edge id="_faCgeOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_faB5W-iaEd6gMtZRCjS81g" target="_faB5XOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">A_ATy</attribute>
    </edge>
    <edge id="_faCgeOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_faB5XOiaEd6gMtZRCjS81g" target="_faB5W-iaEd6gMtZRCjS81g" upperValue="*"/>
  </graph>
</graphml>
