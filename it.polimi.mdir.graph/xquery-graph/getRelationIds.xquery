declare variable $document as xs:string external;
declare variable $source as xs:string external;

for $x in doc($document)//edge
where $x/@source = $source and count($x/attribute)>0 and  
			not($x/reltype = "GENERALIZATION_CHILD_FATHER") and  
			not($x/reltype = "GENERALIZATION_FATHER_CHILD")
return data($x/@id)