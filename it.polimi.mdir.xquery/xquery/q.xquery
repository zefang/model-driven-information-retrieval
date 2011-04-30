declare variable $document as xs:string external;
declare variable $v as xs:int external;

for $x in doc($document)//book
where $x/price > $v
return $x/author