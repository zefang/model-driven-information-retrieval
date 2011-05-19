declare variable $document as xs:string external;
declare variable $source as xs:string external;

for $x in doc($document)//edge
where $x/@source = $source
return data($x/@id)