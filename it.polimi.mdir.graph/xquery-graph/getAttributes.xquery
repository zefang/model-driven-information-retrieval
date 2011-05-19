declare variable $document as xs:string external;
declare variable $id as xs:string external;

for $x in doc($document)//node
	for $attr in $x//attribute
where $x/@id = $id
return concat(data($attr), '$', data($attr/@relType))