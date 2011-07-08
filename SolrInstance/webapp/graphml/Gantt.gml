<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_oFj_gBuyEd-u0r5Az1kiEw" projectName="Gantt">
    <node className="Project" id="_oFj_gxuyEd-u0r5Az1kiEw">
      <attribute>name</attribute>
      <attribute>company</attribute>
      <attribute>viewDate</attribute>
      <attribute>viewIndex</attribute>
      <attribute>ganttDividerLocation</attribute>
      <attribute>ressourceDividerLocation</attribute>
      <attribute>webLink</attribute>
    </node>
    <node className="Tasks" id="_oFj_hBuyEd-u0r5Az1kiEw">
      <attribute>color</attribute>
    </node>
    <node className="Task" id="_oFj_hRuyEd-u0r5Az1kiEw">
      <attribute>id</attribute>
      <attribute>name</attribute>
      <attribute>meeting</attribute>
      <attribute>color</attribute>
      <attribute>expand</attribute>
      <attribute>complete</attribute>
      <attribute>duration</attribute>
      <attribute>priority</attribute>
      <attribute>start</attribute>
    </node>
    <node className="Depend" id="_oFj_hhuyEd-u0r5Az1kiEw">
      <attribute>id</attribute>
      <attribute>type</attribute>
      <attribute>difference</attribute>
      <attribute>hardness</attribute>
    </node>
    <node className="Ressource" id="_oFj_hxuyEd-u0r5Az1kiEw">
      <attribute>Id</attribute>
      <attribute>name</attribute>
      <attribute>fonction</attribute>
      <attribute>contact</attribute>
      <attribute>phone</attribute>
    </node>
    <node className="Date" id="_oFj_iBuyEd-u0r5Az1kiEw">
      <attribute>year</attribute>
      <attribute>month</attribute>
      <attribute>day</attribute>
    </node>
    <node className="Allocation" id="_oFj_iRuyEd-u0r5Az1kiEw">
      <attribute>taskId</attribute>
      <attribute>ressourceId</attribute>
      <attribute>name</attribute>
      <attribute>function</attribute>
      <attribute>responsible</attribute>
      <attribute>load</attribute>
    </node>
    <node className="Vacation" id="_oFj_ihuyEd-u0r5Az1kiEw"/>
    <node className="Description" id="_oFj_ixuyEd-u0r5Az1kiEw"/>
    <node className="Previous" id="_oFj_jBuyEd-u0r5Az1kiEw"/>
    <edge id="_oFj_sBuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oFj_gxuyEd-u0r5Az1kiEw" target="_oFj_hBuyEd-u0r5Az1kiEw">
      <attribute lowerValue="1" upperValue="1">tasks</attribute>
    </edge>
    <edge id="_oFj_sBuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oFj_hBuyEd-u0r5Az1kiEw" target="_oFj_gxuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oFj_sxuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oFj_gxuyEd-u0r5Az1kiEw" target="_oFj_hxuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="*">ressources</attribute>
    </edge>
    <edge id="_oFj_sxuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oFj_hxuyEd-u0r5Az1kiEw" target="_oFj_gxuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oFj_thuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oFj_gxuyEd-u0r5Az1kiEw" target="_oFj_iRuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="*">allocations</attribute>
    </edge>
    <edge id="_oFj_thuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oFj_iRuyEd-u0r5Az1kiEw" target="_oFj_gxuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oFj_uRuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oFj_hBuyEd-u0r5Az1kiEw" target="_oFj_hRuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="*">tasks</attribute>
    </edge>
    <edge id="_oFj_uRuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oFj_hRuyEd-u0r5Az1kiEw" target="_oFj_hBuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oFj_vBuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_oFj_hRuyEd-u0r5Az1kiEw" target="_oFj_hhuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="*">depends</attribute>
    </edge>
    <edge id="_oFj_vBuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_oFj_hhuyEd-u0r5Az1kiEw" target="_oFj_hRuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_oFj_vxuyEd-u0r5Az1kiEw" relType="ASSOCIATION" source="_oFj_hhuyEd-u0r5Az1kiEw" target="_oFj_hRuyEd-u0r5Az1kiEw">
      <attribute lowerValue="1" upperValue="1">task</attribute>
    </edge>
    <edge id="_oFj_vxuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="ASSOCIATION" source="_oFj_hRuyEd-u0r5Az1kiEw" target="_oFj_hhuyEd-u0r5Az1kiEw" upperValue="1"/>
  </graph>
</graphml>
