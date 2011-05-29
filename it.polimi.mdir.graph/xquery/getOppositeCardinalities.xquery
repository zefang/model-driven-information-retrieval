declare namespace xmi = "http://schema.omg.org/spec/XMI/2.1";
declare namespace uml = "http://www.eclipse.org/uml2/2.1.0/UML"; 

declare variable $document as xs:string external;
declare variable $relationId as xs:string external;

for $relation in doc($document)//packagedElement
where contains($relation/@memberEnd,$relationId)
return concat(data($relation/ownedEnd/upperValue/@value), '-', data($relation/ownedEnd/lowerValue/@value))
