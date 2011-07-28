declare namespace xmi = "http://schema.omg.org/spec/XMI/2.1";
declare namespace webml = "http://www.webml.org"; 

declare variable $document as xs:string external;

data(doc($document)/webml:Project/@xmi:id)