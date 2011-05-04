declare namespace xmi = "http://schema.omg.org/spec/XMI/2.1";
declare namespace uml = "http://www.eclipse.org/uml2/2.1.0/UML"; 

declare variable $document as xs:string external;


for $x in doc($document)//packagedElement
where $x/@xmi:type = "uml:Package"
return $x/@name