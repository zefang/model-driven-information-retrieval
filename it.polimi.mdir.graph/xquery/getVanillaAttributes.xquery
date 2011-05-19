declare namespace xmi = "http://schema.omg.org/spec/XMI/2.1";
declare namespace uml = "http://www.eclipse.org/uml2/2.1.0/UML"; 

declare variable $document as xs:string external;
declare variable $classId as xs:string external;

for $class in doc($document)//packagedElement
	for $attribute in $class/ownedAttribute
where $class/@xmi:type = "uml:Class" and $class/@xmi:id = $classId
return if (not(exists($attribute/@association)) and not(exists($attribute/@aggregation)))
		then concat(data($attribute/@name),'$', 'attribute')
		else  ()
