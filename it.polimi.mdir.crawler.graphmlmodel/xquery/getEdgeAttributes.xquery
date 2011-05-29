declare namespace xmi = "http://schema.omg.org/spec/XMI/2.1";
declare namespace uml = "http://www.eclipse.org/uml2/2.1.0/UML"; 

declare variable $document as xs:string external;

for $edge in doc($document)//edge
	for $attribute in $edge//attribute
		return if ($edge/@relType="COMPOSITION_COMPOSITE_COMPONENT")
			   then concat(data($edge/@source),'$',data($attribute),'+conceptType:composition')
			   else if($edge/@relType="ASSOCIATION")
			   		then concat(data($edge/@source),'$',data($attribute),'+conceptType:association')
			   		else ()