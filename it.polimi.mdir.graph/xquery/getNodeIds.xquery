declare variable $document as xs:string external;

for $x in doc($document)//node
return data($x/@id)