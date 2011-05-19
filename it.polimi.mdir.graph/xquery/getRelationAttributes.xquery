declare namespace xmi = "http://schema.omg.org/spec/XMI/2.1";
declare namespace uml = "http://www.eclipse.org/uml2/2.1.0/UML"; 

declare variable $document as xs:string external;
declare variable $relationSource as xs:string external;
declare variable $relationTarget as xs:string external;

for $class in doc($document)//packagedElement
	for $attribute in $class/ownedAttribute
where 	$class/@xmi:type = "uml:Class" and 
		$class/@xmi:id = $relationSource and 
		$attribute/@type = $relationTarget
return data($attribute/@name)
		