<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_osmxYBuyEd-u0r5Az1kiEw" projectName="XULInteractorMetaModel">
    <node className="UIModel" id="_osv7UhuyEd-u0r5Az1kiEw"/>
    <node className="Windows" id="_osv7UxuyEd-u0r5Az1kiEw">
      <attribute>id</attribute>
      <attribute>title</attribute>
      <attribute>orient</attribute>
      <attribute>style</attribute>
    </node>
    <node className="Button" id="_osv7VBuyEd-u0r5Az1kiEw">
      <attribute>tooltiptext</attribute>
      <attribute>image</attribute>
    </node>
    <node className="Image" id="_osv7VRuyEd-u0r5Az1kiEw">
      <attribute>src</attribute>
    </node>
    <node className="RadioGroup" id="_osv7VhuyEd-u0r5Az1kiEw"/>
    <node className="Radio" id="_osv7VxuyEd-u0r5Az1kiEw">
      <attribute>id</attribute>
      <attribute>label</attribute>
      <attribute>selected</attribute>
      <attribute>disabled</attribute>
    </node>
    <node className="ListBox" id="_osv7WBuyEd-u0r5Az1kiEw">
      <attribute>rows</attribute>
    </node>
    <node className="ListItem" id="_osv7WRuyEd-u0r5Az1kiEw">
      <attribute>label</attribute>
      <attribute>value</attribute>
    </node>
    <node className="MenuList" id="_osv7WhuyEd-u0r5Az1kiEw"/>
    <node className="MenuItem" id="_osv7WxuyEd-u0r5Az1kiEw">
      <attribute>label</attribute>
    </node>
    <node className="vbox" id="_osv7XBuyEd-u0r5Az1kiEw"/>
    <node className="hbox" id="_osv7XRuyEd-u0r5Az1kiEw"/>
    <node className="Containement" id="_osv7XhuyEd-u0r5Az1kiEw">
      <attribute>style</attribute>
      <attribute>accesskey</attribute>
      <attribute>class</attribute>
      <attribute>maxlength</attribute>
      <attribute>label</attribute>
      <attribute>orient</attribute>
      <attribute>minlength</attribute>
      <attribute>onclick</attribute>
      <attribute>disabled</attribute>
    </node>
    <node className="GroupBox" id="_osv7XxuyEd-u0r5Az1kiEw"/>
    <node className="Container" id="_osv7YBuyEd-u0r5Az1kiEw"/>
    <node className="Interactor" id="_osv7YRuyEd-u0r5Az1kiEw">
      <attribute>flex</attribute>
      <attribute>id</attribute>
      <attribute>stat</attribute>
      <attribute>style</attribute>
    </node>
    <node className="TabBox" id="_osv7YhuyEd-u0r5Az1kiEw"/>
    <node className="TextBox" id="_osv7YxuyEd-u0r5Az1kiEw">
      <attribute>multiline</attribute>
      <attribute>value</attribute>
    </node>
    <node className="Spacer" id="_osv7ZBuyEd-u0r5Az1kiEw"/>
    <node className="Label" id="_osv7ZRuyEd-u0r5Az1kiEw">
      <attribute>value</attribute>
      <attribute>control</attribute>
    </node>
    <node className="Grid" id="_osv7ZhuyEd-u0r5Az1kiEw"/>
    <node className="row" id="_osv7ZxuyEd-u0r5Az1kiEw"/>
    <node className="column" id="_osv7aBuyEd-u0r5Az1kiEw"/>
    <node className="CheckBox" id="_osv7aRuyEd-u0r5Az1kiEw">
      <attribute>checked</attribute>
    </node>
    <node className="Caption" id="_osv7ahuyEd-u0r5Az1kiEw">
      <attribute>label</attribute>
    </node>
    <node className="Description" id="_osv7axuyEd-u0r5Az1kiEw">
      <attribute>value</attribute>
    </node>
    <node className="HeaderCss" id="_osv7bBuyEd-u0r5Az1kiEw">
      <attribute>ref</attribute>
      <attribute>type</attribute>
    </node>
    <node className="HeaderJScript" id="_osv7bRuyEd-u0r5Az1kiEw">
      <attribute>ref</attribute>
    </node>
    <node className="TabPanel" id="_osv7bhuyEd-u0r5Az1kiEw">
      <attribute>id</attribute>
      <attribute>orient</attribute>
    </node>
    <node className="Event" id="_osv7bxuyEd-u0r5Az1kiEw">
      <attribute>functionCalledName</attribute>
      <attribute>name</attribute>
    </node>
    <node className="Parameter" id="_osv7cBuyEd-u0r5Az1kiEw">
      <attribute>value</attribute>
      <attribute>name</attribute>
    </node>
    <node className="onClick" id="_osv7cRuyEd-u0r5Az1kiEw"/>
    <node className="Function" id="_osv7chuyEd-u0r5Az1kiEw">
      <attribute>name</attribute>
      <attribute>body</attribute>
    </node>
    <edge id="_osv7oRuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_osv7UhuyEd-u0r5Az1kiEw" target="_osv7UxuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="1">windows</attribute>
    </edge>
    <edge id="_osv7oRuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_osv7UxuyEd-u0r5Az1kiEw" target="_osv7UhuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_osv7pBuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_osv7UhuyEd-u0r5Az1kiEw" target="_osv7chuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="*">functions</attribute>
    </edge>
    <edge id="_osv7pBuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_osv7chuyEd-u0r5Az1kiEw" target="_osv7UhuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_osv7pxuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_osv7UxuyEd-u0r5Az1kiEw" target="_osv7bBuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="*">headers</attribute>
    </edge>
    <edge id="_osv7pxuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_osv7bBuyEd-u0r5Az1kiEw" target="_osv7UxuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_osv7rRuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_osv7VhuyEd-u0r5Az1kiEw" target="_osv7VxuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="*">radiobuttons</attribute>
    </edge>
    <edge id="_osv7rRuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_osv7VxuyEd-u0r5Az1kiEw" target="_osv7VhuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_osv7sBuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_osv7WBuyEd-u0r5Az1kiEw" target="_osv7WRuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="*">listitems</attribute>
    </edge>
    <edge id="_osv7sBuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_osv7WRuyEd-u0r5Az1kiEw" target="_osv7WBuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_osv7sxuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_osv7WhuyEd-u0r5Az1kiEw" target="_osv7WxuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="*">menuitems</attribute>
    </edge>
    <edge id="_osv7sxuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_osv7WxuyEd-u0r5Az1kiEw" target="_osv7WhuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_osv7thuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_osv7YBuyEd-u0r5Az1kiEw" target="_osv7YRuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="*">xulInteractors</attribute>
    </edge>
    <edge id="_osv7thuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_osv7YRuyEd-u0r5Az1kiEw" target="_osv7YBuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_osv7uRuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_osv7YRuyEd-u0r5Az1kiEw" target="_osv7bxuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="*">events</attribute>
    </edge>
    <edge id="_osv7uRuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_osv7bxuyEd-u0r5Az1kiEw" target="_osv7YRuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_osv7vBuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_osv7YhuyEd-u0r5Az1kiEw" target="_osv7YRuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="*">tabPanels</attribute>
    </edge>
    <edge id="_osv7vBuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_osv7YRuyEd-u0r5Az1kiEw" target="_osv7YhuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_osv7vxuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_osv7ZhuyEd-u0r5Az1kiEw" target="_osv7aBuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="*">columns</attribute>
    </edge>
    <edge id="_osv7vxuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_osv7aBuyEd-u0r5Az1kiEw" target="_osv7ZhuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_osv7whuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_osv7ZhuyEd-u0r5Az1kiEw" target="_osv7ZxuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="*">rows</attribute>
    </edge>
    <edge id="_osv7whuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_osv7ZxuyEd-u0r5Az1kiEw" target="_osv7ZhuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_osv7xRuyEd-u0r5Az1kiEw" relType="COMPOSITION_COMPOSITE_COMPONENT" source="_osv7bxuyEd-u0r5Az1kiEw" target="_osv7cBuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="*">functionCallParameters</attribute>
    </edge>
    <edge id="_osv7xRuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="COMPOSITION_COMPONENT_COMPOSITE" source="_osv7cBuyEd-u0r5Az1kiEw" target="_osv7bxuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_osv7qhuyEd-u0r5Az1kiEw" relType="ASSOCIATION" source="_osv7UxuyEd-u0r5Az1kiEw" target="_osv7bRuyEd-u0r5Az1kiEw">
      <attribute lowerValue="0" upperValue="*">headersJScript</attribute>
    </edge>
    <edge id="_osv7qhuyEd-u0r5Az1kiEw-opposite" lowerValue="1" relType="ASSOCIATION" source="_osv7bRuyEd-u0r5Az1kiEw" target="_osv7UxuyEd-u0r5Az1kiEw" upperValue="1"/>
    <edge id="_osv7zhuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_osv7UxuyEd-u0r5Az1kiEw" target="_osv7YBuyEd-u0r5Az1kiEw"/>
    <edge id="_osv7zhuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_osv7YBuyEd-u0r5Az1kiEw" target="_osv7UxuyEd-u0r5Az1kiEw"/>
    <edge id="_osv7zxuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_osv7VBuyEd-u0r5Az1kiEw" target="_osv7XhuyEd-u0r5Az1kiEw"/>
    <edge id="_osv7zxuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_osv7XhuyEd-u0r5Az1kiEw" target="_osv7VBuyEd-u0r5Az1kiEw"/>
    <edge id="_osv70BuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_osv7VRuyEd-u0r5Az1kiEw" target="_osv7XhuyEd-u0r5Az1kiEw"/>
    <edge id="_osv70BuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_osv7XhuyEd-u0r5Az1kiEw" target="_osv7VRuyEd-u0r5Az1kiEw"/>
    <edge id="_osv70RuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_osv7VhuyEd-u0r5Az1kiEw" target="_osv7XhuyEd-u0r5Az1kiEw"/>
    <edge id="_osv70RuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_osv7XhuyEd-u0r5Az1kiEw" target="_osv7VhuyEd-u0r5Az1kiEw"/>
    <edge id="_osv70huyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_osv7VxuyEd-u0r5Az1kiEw" target="_osv7YRuyEd-u0r5Az1kiEw"/>
    <edge id="_osv70huyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_osv7YRuyEd-u0r5Az1kiEw" target="_osv7VxuyEd-u0r5Az1kiEw"/>
    <edge id="_osv70xuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_osv7WBuyEd-u0r5Az1kiEw" target="_osv7XhuyEd-u0r5Az1kiEw"/>
    <edge id="_osv70xuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_osv7XhuyEd-u0r5Az1kiEw" target="_osv7WBuyEd-u0r5Az1kiEw"/>
    <edge id="_osv71BuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_osv7WRuyEd-u0r5Az1kiEw" target="_osv7YRuyEd-u0r5Az1kiEw"/>
    <edge id="_osv71BuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_osv7YRuyEd-u0r5Az1kiEw" target="_osv7WRuyEd-u0r5Az1kiEw"/>
    <edge id="_osv71RuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_osv7WhuyEd-u0r5Az1kiEw" target="_osv7XhuyEd-u0r5Az1kiEw"/>
    <edge id="_osv71RuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_osv7XhuyEd-u0r5Az1kiEw" target="_osv7WhuyEd-u0r5Az1kiEw"/>
    <edge id="_osv71huyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_osv7WxuyEd-u0r5Az1kiEw" target="_osv7YRuyEd-u0r5Az1kiEw"/>
    <edge id="_osv71huyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_osv7YRuyEd-u0r5Az1kiEw" target="_osv7WxuyEd-u0r5Az1kiEw"/>
    <edge id="_osv71xuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_osv7XBuyEd-u0r5Az1kiEw" target="_osv7YBuyEd-u0r5Az1kiEw"/>
    <edge id="_osv71xuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_osv7YBuyEd-u0r5Az1kiEw" target="_osv7XBuyEd-u0r5Az1kiEw"/>
    <edge id="_osv72BuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_osv7XRuyEd-u0r5Az1kiEw" target="_osv7YBuyEd-u0r5Az1kiEw"/>
    <edge id="_osv72BuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_osv7YBuyEd-u0r5Az1kiEw" target="_osv7XRuyEd-u0r5Az1kiEw"/>
    <edge id="_osv72RuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_osv7XhuyEd-u0r5Az1kiEw" target="_osv7YRuyEd-u0r5Az1kiEw"/>
    <edge id="_osv72RuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_osv7YRuyEd-u0r5Az1kiEw" target="_osv7XhuyEd-u0r5Az1kiEw"/>
    <edge id="_osv72huyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_osv7XxuyEd-u0r5Az1kiEw" target="_osv7YBuyEd-u0r5Az1kiEw"/>
    <edge id="_osv72huyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_osv7YBuyEd-u0r5Az1kiEw" target="_osv7XxuyEd-u0r5Az1kiEw"/>
    <edge id="_osv72xuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_osv7YBuyEd-u0r5Az1kiEw" target="_osv7YRuyEd-u0r5Az1kiEw"/>
    <edge id="_osv72xuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_osv7YRuyEd-u0r5Az1kiEw" target="_osv7YBuyEd-u0r5Az1kiEw"/>
    <edge id="_osv73BuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_osv7YhuyEd-u0r5Az1kiEw" target="_osv7XhuyEd-u0r5Az1kiEw"/>
    <edge id="_osv73BuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_osv7XhuyEd-u0r5Az1kiEw" target="_osv7YhuyEd-u0r5Az1kiEw"/>
    <edge id="_osv73RuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_osv7YxuyEd-u0r5Az1kiEw" target="_osv7XhuyEd-u0r5Az1kiEw"/>
    <edge id="_osv73RuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_osv7XhuyEd-u0r5Az1kiEw" target="_osv7YxuyEd-u0r5Az1kiEw"/>
    <edge id="_osv73huyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_osv7ZBuyEd-u0r5Az1kiEw" target="_osv7XhuyEd-u0r5Az1kiEw"/>
    <edge id="_osv73huyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_osv7XhuyEd-u0r5Az1kiEw" target="_osv7ZBuyEd-u0r5Az1kiEw"/>
    <edge id="_osv73xuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_osv7ZRuyEd-u0r5Az1kiEw" target="_osv7XhuyEd-u0r5Az1kiEw"/>
    <edge id="_osv73xuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_osv7XhuyEd-u0r5Az1kiEw" target="_osv7ZRuyEd-u0r5Az1kiEw"/>
    <edge id="_osv74BuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_osv7ZhuyEd-u0r5Az1kiEw" target="_osv7XhuyEd-u0r5Az1kiEw"/>
    <edge id="_osv74BuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_osv7XhuyEd-u0r5Az1kiEw" target="_osv7ZhuyEd-u0r5Az1kiEw"/>
    <edge id="_osv74RuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_osv7ZxuyEd-u0r5Az1kiEw" target="_osv7YBuyEd-u0r5Az1kiEw"/>
    <edge id="_osv74RuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_osv7YBuyEd-u0r5Az1kiEw" target="_osv7ZxuyEd-u0r5Az1kiEw"/>
    <edge id="_osv74huyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_osv7aBuyEd-u0r5Az1kiEw" target="_osv7YBuyEd-u0r5Az1kiEw"/>
    <edge id="_osv74huyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_osv7YBuyEd-u0r5Az1kiEw" target="_osv7aBuyEd-u0r5Az1kiEw"/>
    <edge id="_osv74xuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_osv7aRuyEd-u0r5Az1kiEw" target="_osv7XhuyEd-u0r5Az1kiEw"/>
    <edge id="_osv74xuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_osv7XhuyEd-u0r5Az1kiEw" target="_osv7aRuyEd-u0r5Az1kiEw"/>
    <edge id="_osv75BuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_osv7ahuyEd-u0r5Az1kiEw" target="_osv7XhuyEd-u0r5Az1kiEw"/>
    <edge id="_osv75BuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_osv7XhuyEd-u0r5Az1kiEw" target="_osv7ahuyEd-u0r5Az1kiEw"/>
    <edge id="_osv75RuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_osv7axuyEd-u0r5Az1kiEw" target="_osv7XhuyEd-u0r5Az1kiEw"/>
    <edge id="_osv75RuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_osv7XhuyEd-u0r5Az1kiEw" target="_osv7axuyEd-u0r5Az1kiEw"/>
    <edge id="_osv75huyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_osv7bhuyEd-u0r5Az1kiEw" target="_osv7YBuyEd-u0r5Az1kiEw"/>
    <edge id="_osv75huyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_osv7YBuyEd-u0r5Az1kiEw" target="_osv7bhuyEd-u0r5Az1kiEw"/>
    <edge id="_osv75xuyEd-u0r5Az1kiEw" relType="GENERALIZATION_CHILD_FATHER" source="_osv7cRuyEd-u0r5Az1kiEw" target="_osv7bxuyEd-u0r5Az1kiEw"/>
    <edge id="_osv75xuyEd-u0r5Az1kiEw-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_osv7bxuyEd-u0r5Az1kiEw" target="_osv7cRuyEd-u0r5Az1kiEw"/>
  </graph>
</graphml>
