declare namespace xmi = "http://schema.omg.org/spec/XMI/2.1";
declare namespace uml = "http://www.eclipse.org/uml2/2.1.0/UML"; 

declare variable $document as xs:string external;

for $class in doc($document)//packagedElement
	for $attribute in $class/ownedAttribute
where $class/@xmi:type = "uml:Class"
return if (exists($attribute/@association) and exists($attribute/@aggregation))
		then concat(data($attribute/@xmi:id), '$', data($class/@xmi:id), '$', data($attribute/@type), '$', data($attribute/upperValue/@value), '-', data($attribute/lowerValue/@value))
		else ()
		