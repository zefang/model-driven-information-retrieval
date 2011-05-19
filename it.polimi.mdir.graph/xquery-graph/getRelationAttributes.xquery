declare variable $document as xs:string external;
declare variable $relationId as xs:string external;

for $x in doc($document)//edge
where $x/@id = $relationId
return data($x/attribute)