declare namespace xmi = "http://schema.omg.org/spec/XMI/2.1";
declare namespace uml = "http://www.eclipse.org/uml2/2.1.0/UML"; 

declare variable $document as xs:string external;

for $class in doc($document)//node
	for $attribute in $class//attribute
		return concat(data($class/@id), '$', data($attribute), '+conceptType:attribute')