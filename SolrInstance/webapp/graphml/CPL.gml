<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_dtSDoOiaEd6gMtZRCjS81g" projectName="CPL">
    <node className="Element" id="_dtSDo-iaEd6gMtZRCjS81g"/>
    <node className="CPL" id="_dtSDpOiaEd6gMtZRCjS81g"/>
    <node className="NodeContainer" id="_dtSDpeiaEd6gMtZRCjS81g"/>
    <node className="SubAction" id="_dtSDpuiaEd6gMtZRCjS81g">
      <attribute>id</attribute>
    </node>
    <node className="Outgoing" id="_dtSDp-iaEd6gMtZRCjS81g"/>
    <node className="Incoming" id="_dtSDqOiaEd6gMtZRCjS81g"/>
    <node className="NotPresent" id="_dtSDqeiaEd6gMtZRCjS81g"/>
    <node className="Otherwise" id="_dtSDquiaEd6gMtZRCjS81g"/>
    <node className="SwitchedAddress" id="_dtSqsOiaEd6gMtZRCjS81g">
      <attribute>is</attribute>
      <attribute>contains</attribute>
      <attribute>subDomainOf</attribute>
    </node>
    <node className="SwitchedString" id="_dtSqseiaEd6gMtZRCjS81g">
      <attribute>is</attribute>
      <attribute>contains</attribute>
    </node>
    <node className="SwitchedLanguage" id="_dtSqsuiaEd6gMtZRCjS81g">
      <attribute>matches</attribute>
    </node>
    <node className="SwitchedTime" id="_dtSqs-iaEd6gMtZRCjS81g">
      <attribute>dtstart</attribute>
      <attribute>dtend</attribute>
      <attribute>duration</attribute>
      <attribute>freq</attribute>
      <attribute>until</attribute>
      <attribute>count</attribute>
      <attribute>interval</attribute>
      <attribute>bySecond</attribute>
      <attribute>byMinute</attribute>
      <attribute>byHour</attribute>
      <attribute>byDay</attribute>
      <attribute>byMonthDay</attribute>
      <attribute>byYearDay</attribute>
      <attribute>byWeekNo</attribute>
      <attribute>byMonth</attribute>
      <attribute>wkst</attribute>
      <attribute>bySetPos</attribute>
    </node>
    <node className="SwitchedPriority" id="_dtSqtOiaEd6gMtZRCjS81g">
      <attribute>less</attribute>
      <attribute>greater</attribute>
      <attribute>equal</attribute>
    </node>
    <node className="Busy" id="_dtSqteiaEd6gMtZRCjS81g"/>
    <node className="NoAnswer" id="_dtSqtuiaEd6gMtZRCjS81g"/>
    <node className="Redirection" id="_dtSqt-iaEd6gMtZRCjS81g"/>
    <node className="Failure" id="_dtSquOiaEd6gMtZRCjS81g"/>
    <node className="Default" id="_dtSqueiaEd6gMtZRCjS81g"/>
    <node className="Node" id="_dtSquuiaEd6gMtZRCjS81g"/>
    <node className="Switch" id="_dtSqu-iaEd6gMtZRCjS81g"/>
    <node className="AddressSwitch" id="_dtSqvOiaEd6gMtZRCjS81g">
      <attribute>field</attribute>
      <attribute>subField</attribute>
    </node>
    <node className="StringSwitch" id="_dtSqveiaEd6gMtZRCjS81g">
      <attribute>field</attribute>
    </node>
    <node className="LanguageSwitch" id="_dtSqvuiaEd6gMtZRCjS81g"/>
    <node className="TimeSwitch" id="_dtSqv-iaEd6gMtZRCjS81g">
      <attribute>tzid</attribute>
      <attribute>tzurl</attribute>
    </node>
    <node className="PrioritySwitch" id="_dtSqwOiaEd6gMtZRCjS81g"/>
    <node className="Location" id="_dtSqweiaEd6gMtZRCjS81g">
      <attribute>url</attribute>
      <attribute>priority</attribute>
      <attribute>clear</attribute>
    </node>
    <node className="SubCall" id="_dtSqwuiaEd6gMtZRCjS81g">
      <attribute>ref</attribute>
    </node>
    <node className="Action" id="_dtSqw-iaEd6gMtZRCjS81g"/>
    <node className="SignallingAction" id="_dtSqxOiaEd6gMtZRCjS81g"/>
    <node className="Proxy" id="_dtSqxeiaEd6gMtZRCjS81g">
      <attribute>timeout</attribute>
      <attribute>recurse</attribute>
      <attribute>ordering</attribute>
    </node>
    <node className="Redirect" id="_dtSqxuiaEd6gMtZRCjS81g">
      <attribute>permanent</attribute>
    </node>
    <node className="Reject" id="_dtSqx-iaEd6gMtZRCjS81g">
      <attribute>status</attribute>
      <attribute>reason</attribute>
    </node>
    <edge id="_dtSq8uiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dtSDpOiaEd6gMtZRCjS81g" target="_dtSDpuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">subActions</attribute>
    </edge>
    <edge id="_dtSq8uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dtSDpuiaEd6gMtZRCjS81g" target="_dtSDpOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dtTRweiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dtSDpOiaEd6gMtZRCjS81g" target="_dtSDp-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">outgoing</attribute>
    </edge>
    <edge id="_dtTRweiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dtSDp-iaEd6gMtZRCjS81g" target="_dtSDpOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dtTRxOiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dtSDpOiaEd6gMtZRCjS81g" target="_dtSDqOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">incoming</attribute>
    </edge>
    <edge id="_dtTRxOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dtSDqOiaEd6gMtZRCjS81g" target="_dtSDpOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dtTRx-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dtSDpeiaEd6gMtZRCjS81g" target="_dtSquuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">contents</attribute>
    </edge>
    <edge id="_dtTRx-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dtSquuiaEd6gMtZRCjS81g" target="_dtSDpeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dtTRyuiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dtSqu-iaEd6gMtZRCjS81g" target="_dtSDqeiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">notPresent</attribute>
    </edge>
    <edge id="_dtTRyuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dtSDqeiaEd6gMtZRCjS81g" target="_dtSqu-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dtTRzeiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dtSqu-iaEd6gMtZRCjS81g" target="_dtSDquiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">otherwise</attribute>
    </edge>
    <edge id="_dtTRzeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dtSDquiaEd6gMtZRCjS81g" target="_dtSqu-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dtTR0OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dtSqvOiaEd6gMtZRCjS81g" target="_dtSqsOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">addresses</attribute>
    </edge>
    <edge id="_dtTR0OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dtSqsOiaEd6gMtZRCjS81g" target="_dtSqvOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dtTR0-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dtSqveiaEd6gMtZRCjS81g" target="_dtSqseiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">strings</attribute>
    </edge>
    <edge id="_dtTR0-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dtSqseiaEd6gMtZRCjS81g" target="_dtSqveiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dtTR1uiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dtSqvuiaEd6gMtZRCjS81g" target="_dtSqsuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">languages</attribute>
    </edge>
    <edge id="_dtTR1uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dtSqsuiaEd6gMtZRCjS81g" target="_dtSqvuiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dtTR2eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dtSqv-iaEd6gMtZRCjS81g" target="_dtSqs-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">times</attribute>
    </edge>
    <edge id="_dtTR2eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dtSqs-iaEd6gMtZRCjS81g" target="_dtSqv-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dtTR3OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dtSqwOiaEd6gMtZRCjS81g" target="_dtSqtOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="*">priorities</attribute>
    </edge>
    <edge id="_dtTR3OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dtSqtOiaEd6gMtZRCjS81g" target="_dtSqwOiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dtTR3-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dtSqxeiaEd6gMtZRCjS81g" target="_dtSqteiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">busy</attribute>
    </edge>
    <edge id="_dtTR3-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dtSqteiaEd6gMtZRCjS81g" target="_dtSqxeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dtTR4uiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dtSqxeiaEd6gMtZRCjS81g" target="_dtSqtuiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">noAnswer</attribute>
    </edge>
    <edge id="_dtTR4uiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dtSqtuiaEd6gMtZRCjS81g" target="_dtSqxeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dtTR5eiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dtSqxeiaEd6gMtZRCjS81g" target="_dtSqt-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">redirection</attribute>
    </edge>
    <edge id="_dtTR5eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dtSqt-iaEd6gMtZRCjS81g" target="_dtSqxeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dtTR6OiaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dtSqxeiaEd6gMtZRCjS81g" target="_dtSquOiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">failure</attribute>
    </edge>
    <edge id="_dtTR6OiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dtSquOiaEd6gMtZRCjS81g" target="_dtSqxeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dtTR6-iaEd6gMtZRCjS81g" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_dtSqxeiaEd6gMtZRCjS81g" target="_dtSqueiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">default</attribute>
    </edge>
    <edge id="_dtTR6-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_dtSqueiaEd6gMtZRCjS81g" target="_dtSqxeiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_dtT40-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dtSDpOiaEd6gMtZRCjS81g" target="_dtSDo-iaEd6gMtZRCjS81g"/>
    <edge id="_dtT40-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dtSDo-iaEd6gMtZRCjS81g" target="_dtSDpOiaEd6gMtZRCjS81g"/>
    <edge id="_dtUf4OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dtSDpeiaEd6gMtZRCjS81g" target="_dtSDo-iaEd6gMtZRCjS81g"/>
    <edge id="_dtUf4OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dtSDo-iaEd6gMtZRCjS81g" target="_dtSDpeiaEd6gMtZRCjS81g"/>
    <edge id="_dtUf4eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dtSDpuiaEd6gMtZRCjS81g" target="_dtSDpeiaEd6gMtZRCjS81g"/>
    <edge id="_dtUf4eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dtSDpeiaEd6gMtZRCjS81g" target="_dtSDpuiaEd6gMtZRCjS81g"/>
    <edge id="_dtUf4uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dtSDp-iaEd6gMtZRCjS81g" target="_dtSDpeiaEd6gMtZRCjS81g"/>
    <edge id="_dtUf4uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dtSDpeiaEd6gMtZRCjS81g" target="_dtSDp-iaEd6gMtZRCjS81g"/>
    <edge id="_dtUf4-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dtSDqOiaEd6gMtZRCjS81g" target="_dtSDpeiaEd6gMtZRCjS81g"/>
    <edge id="_dtUf4-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dtSDpeiaEd6gMtZRCjS81g" target="_dtSDqOiaEd6gMtZRCjS81g"/>
    <edge id="_dtUf5OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dtSDqeiaEd6gMtZRCjS81g" target="_dtSDpeiaEd6gMtZRCjS81g"/>
    <edge id="_dtUf5OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dtSDpeiaEd6gMtZRCjS81g" target="_dtSDqeiaEd6gMtZRCjS81g"/>
    <edge id="_dtUf5eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dtSDquiaEd6gMtZRCjS81g" target="_dtSDpeiaEd6gMtZRCjS81g"/>
    <edge id="_dtUf5eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dtSDpeiaEd6gMtZRCjS81g" target="_dtSDquiaEd6gMtZRCjS81g"/>
    <edge id="_dtUf5uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dtSqsOiaEd6gMtZRCjS81g" target="_dtSDpeiaEd6gMtZRCjS81g"/>
    <edge id="_dtUf5uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dtSDpeiaEd6gMtZRCjS81g" target="_dtSqsOiaEd6gMtZRCjS81g"/>
    <edge id="_dtUf5-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dtSqseiaEd6gMtZRCjS81g" target="_dtSDpeiaEd6gMtZRCjS81g"/>
    <edge id="_dtUf5-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dtSDpeiaEd6gMtZRCjS81g" target="_dtSqseiaEd6gMtZRCjS81g"/>
    <edge id="_dtUf6OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dtSqsuiaEd6gMtZRCjS81g" target="_dtSDpeiaEd6gMtZRCjS81g"/>
    <edge id="_dtUf6OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dtSDpeiaEd6gMtZRCjS81g" target="_dtSqsuiaEd6gMtZRCjS81g"/>
    <edge id="_dtUf6eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dtSqs-iaEd6gMtZRCjS81g" target="_dtSDpeiaEd6gMtZRCjS81g"/>
    <edge id="_dtUf6eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dtSDpeiaEd6gMtZRCjS81g" target="_dtSqs-iaEd6gMtZRCjS81g"/>
    <edge id="_dtVG8OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dtSqtOiaEd6gMtZRCjS81g" target="_dtSDpeiaEd6gMtZRCjS81g"/>
    <edge id="_dtVG8OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dtSDpeiaEd6gMtZRCjS81g" target="_dtSqtOiaEd6gMtZRCjS81g"/>
    <edge id="_dtVG8eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dtSqteiaEd6gMtZRCjS81g" target="_dtSDpeiaEd6gMtZRCjS81g"/>
    <edge id="_dtVG8eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dtSDpeiaEd6gMtZRCjS81g" target="_dtSqteiaEd6gMtZRCjS81g"/>
    <edge id="_dtVG8uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dtSqtuiaEd6gMtZRCjS81g" target="_dtSDpeiaEd6gMtZRCjS81g"/>
    <edge id="_dtVG8uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dtSDpeiaEd6gMtZRCjS81g" target="_dtSqtuiaEd6gMtZRCjS81g"/>
    <edge id="_dtVG8-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dtSqt-iaEd6gMtZRCjS81g" target="_dtSDpeiaEd6gMtZRCjS81g"/>
    <edge id="_dtVG8-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dtSDpeiaEd6gMtZRCjS81g" target="_dtSqt-iaEd6gMtZRCjS81g"/>
    <edge id="_dtVG9OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dtSquOiaEd6gMtZRCjS81g" target="_dtSDpeiaEd6gMtZRCjS81g"/>
    <edge id="_dtVG9OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dtSDpeiaEd6gMtZRCjS81g" target="_dtSquOiaEd6gMtZRCjS81g"/>
    <edge id="_dtVG9eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dtSqueiaEd6gMtZRCjS81g" target="_dtSDpeiaEd6gMtZRCjS81g"/>
    <edge id="_dtVG9eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dtSDpeiaEd6gMtZRCjS81g" target="_dtSqueiaEd6gMtZRCjS81g"/>
    <edge id="_dtVG9uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dtSquuiaEd6gMtZRCjS81g" target="_dtSDo-iaEd6gMtZRCjS81g"/>
    <edge id="_dtVG9uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dtSDo-iaEd6gMtZRCjS81g" target="_dtSquuiaEd6gMtZRCjS81g"/>
    <edge id="_dtVG9-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dtSqu-iaEd6gMtZRCjS81g" target="_dtSquuiaEd6gMtZRCjS81g"/>
    <edge id="_dtVG9-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dtSquuiaEd6gMtZRCjS81g" target="_dtSqu-iaEd6gMtZRCjS81g"/>
    <edge id="_dtVG-OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dtSqvOiaEd6gMtZRCjS81g" target="_dtSqu-iaEd6gMtZRCjS81g"/>
    <edge id="_dtVG-OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dtSqu-iaEd6gMtZRCjS81g" target="_dtSqvOiaEd6gMtZRCjS81g"/>
    <edge id="_dtVG-eiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dtSqveiaEd6gMtZRCjS81g" target="_dtSqu-iaEd6gMtZRCjS81g"/>
    <edge id="_dtVG-eiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dtSqu-iaEd6gMtZRCjS81g" target="_dtSqveiaEd6gMtZRCjS81g"/>
    <edge id="_dtVG-uiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dtSqvuiaEd6gMtZRCjS81g" target="_dtSqu-iaEd6gMtZRCjS81g"/>
    <edge id="_dtVG-uiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dtSqu-iaEd6gMtZRCjS81g" target="_dtSqvuiaEd6gMtZRCjS81g"/>
    <edge id="_dtVG--iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dtSqv-iaEd6gMtZRCjS81g" target="_dtSqu-iaEd6gMtZRCjS81g"/>
    <edge id="_dtVG--iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dtSqu-iaEd6gMtZRCjS81g" target="_dtSqv-iaEd6gMtZRCjS81g"/>
    <edge id="_dtVG_OiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dtSqwOiaEd6gMtZRCjS81g" target="_dtSqu-iaEd6gMtZRCjS81g"/>
    <edge id="_dtVG_OiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dtSqu-iaEd6gMtZRCjS81g" target="_dtSqwOiaEd6gMtZRCjS81g"/>
    <edge id="_dtVuAOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dtSqweiaEd6gMtZRCjS81g" target="_dtSquuiaEd6gMtZRCjS81g"/>
    <edge id="_dtVuAOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dtSquuiaEd6gMtZRCjS81g" target="_dtSqweiaEd6gMtZRCjS81g"/>
    <edge id="_dtVuAeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dtSqweiaEd6gMtZRCjS81g" target="_dtSDpeiaEd6gMtZRCjS81g"/>
    <edge id="_dtVuAeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dtSDpeiaEd6gMtZRCjS81g" target="_dtSqweiaEd6gMtZRCjS81g"/>
    <edge id="_dtVuAuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dtSqwuiaEd6gMtZRCjS81g" target="_dtSquuiaEd6gMtZRCjS81g"/>
    <edge id="_dtVuAuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dtSquuiaEd6gMtZRCjS81g" target="_dtSqwuiaEd6gMtZRCjS81g"/>
    <edge id="_dtVuA-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dtSqw-iaEd6gMtZRCjS81g" target="_dtSquuiaEd6gMtZRCjS81g"/>
    <edge id="_dtVuA-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dtSquuiaEd6gMtZRCjS81g" target="_dtSqw-iaEd6gMtZRCjS81g"/>
    <edge id="_dtVuBOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dtSqxOiaEd6gMtZRCjS81g" target="_dtSqw-iaEd6gMtZRCjS81g"/>
    <edge id="_dtVuBOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dtSqw-iaEd6gMtZRCjS81g" target="_dtSqxOiaEd6gMtZRCjS81g"/>
    <edge id="_dtVuBeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dtSqxeiaEd6gMtZRCjS81g" target="_dtSqxOiaEd6gMtZRCjS81g"/>
    <edge id="_dtVuBeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dtSqxOiaEd6gMtZRCjS81g" target="_dtSqxeiaEd6gMtZRCjS81g"/>
    <edge id="_dtVuBuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dtSqxuiaEd6gMtZRCjS81g" target="_dtSqxOiaEd6gMtZRCjS81g"/>
    <edge id="_dtVuBuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dtSqxOiaEd6gMtZRCjS81g" target="_dtSqxuiaEd6gMtZRCjS81g"/>
    <edge id="_dtVuB-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_dtSqx-iaEd6gMtZRCjS81g" target="_dtSqxOiaEd6gMtZRCjS81g"/>
    <edge id="_dtVuB-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_dtSqxOiaEd6gMtZRCjS81g" target="_dtSqx-iaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
