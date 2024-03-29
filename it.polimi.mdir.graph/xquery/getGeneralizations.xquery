declare namespace xmi = "http://schema.omg.org/spec/XMI/2.1";
declare namespace uml = "http://www.eclipse.org/uml2/2.1.0/UML"; 

declare variable $document as xs:string external;

for $class in doc($document)//packagedElement
	for $generalization in $class/generalization
where $class/@xmi:type = "uml:Class"
return concat(data($generalization/@xmi:id), '$', data($class/@xmi:id),'$', data($generalization/@general))
		
