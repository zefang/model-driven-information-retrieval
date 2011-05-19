declare variable $document as xs:string external;
declare variable $source as xs:string external;
declare variable $target as xs:string external;

for $x in doc($document)//edge
where $x/@source = $source and $x/@target = $target  
return data($x/relType)