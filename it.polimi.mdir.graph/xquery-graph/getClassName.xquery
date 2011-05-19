declare variable $document as xs:string external;
declare variable $id as xs:string external;

for $x in doc($document)//node
where $x/@id = $id
return data($x/className)