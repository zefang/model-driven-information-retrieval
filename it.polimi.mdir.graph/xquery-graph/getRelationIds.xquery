declare variable $document as xs:string external;
declare variable $source as xs:string external;

for $x in doc($document)//edge
where $x/@source = $source and count($x/attribute)>0  
return data($x/@id)