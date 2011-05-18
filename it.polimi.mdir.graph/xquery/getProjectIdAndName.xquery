declare namespace xmi = "http://schema.omg.org/spec/XMI/2.1";
declare namespace uml = "http://www.eclipse.org/uml2/2.1.0/UML"; 

declare variable $document as xs:string external;

for $x in doc($document)//uml:Model
return concat(data($x/@xmi:id),'$',data($x/packagedElement/@name)[1])