declare namespace xmi = "http://schema.omg.org/spec/XMI/2.1";
declare namespace uml = "http://www.eclipse.org/uml2/2.1.0/UML"; 

declare variable $document as xs:string external;

for $class in doc($document)//packagedElement
	for $attribute in $class/ownedAttribute
where $class/@xmi:type = "uml:Class"
return if (exists($attribute/@association) and exists($attribute/@aggregation))
		then (
			if (exists(data($attribute/upperValue/@value)) and exists(data($attribute/lowerValue/@value))) then
				concat(data($class/@xmi:id), '$', data($attribute/@name), '+', 'conceptType:composition', '+', data($attribute/upperValue/@value), '-', data($attribute/lowerValue/@value))
			else if (not(exists(data($attribute/upperValue/@value))) and exists(data($attribute/lowerValue/@value))) then
				concat(data($class/@xmi:id), '$', data($attribute/@name), '+', 'conceptType:composition', '+', '0', '-', data($attribute/lowerValue/@value))
			else if (exists(data($attribute/upperValue/@value)) and not(exists(data($attribute/lowerValue/@value)))) then
				concat(data($class/@xmi:id), '$', data($attribute/@name), '+', 'conceptType:composition', '+', data($attribute/upperValue/@value), '-', '0')
			else concat(data($class/@xmi:id), '$', data($attribute/@name), '+', 'conceptType:composition', '+', '0', '-', '0')
		)
		else if (exists($attribute/@association) and not(exists($attribute/@aggregation)))
		then (
			if (exists(data($attribute/upperValue/@value)) and exists(data($attribute/lowerValue/@value))) then
				concat(data($class/@xmi:id), '$', data($attribute/@name), '+', 'conceptType:association', '+', data($attribute/upperValue/@value), '-', data($attribute/lowerValue/@value))
			else if (not(exists(data($attribute/upperValue/@value))) and exists(data($attribute/lowerValue/@value))) then
				concat(data($class/@xmi:id), '$', data($attribute/@name), '+', 'conceptType:association', '+', '0', '-', data($attribute/lowerValue/@value))
			else if (exists(data($attribute/upperValue/@value)) and not(exists(data($attribute/lowerValue/@value)))) then
				concat(data($class/@xmi:id), '$', data($attribute/@name), '+', 'conceptType:association', '+', data($attribute/upperValue/@value), '-', '0')
			else concat(data($class/@xmi:id), '$', data($attribute/@name), '+', 'conceptType:association', '+', '0', '-', '0')
		)
		else concat(data($class/@xmi:id),'$',data($attribute/@name),'+conceptType:attribute')
