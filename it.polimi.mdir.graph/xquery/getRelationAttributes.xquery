declare namespace xmi = "http://schema.omg.org/spec/XMI/2.1";
declare namespace uml = "http://www.eclipse.org/uml2/2.1.0/UML"; 

declare variable $document as xs:string external;
declare variable $relationId as xs:string external;

for $class in doc($document)//packagedElement
	for $attribute in $class/ownedAttribute
where $attribute/@xmi:id = $relationId
return data($attribute/@name)
		