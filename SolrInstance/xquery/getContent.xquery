declare namespace xmi = "http://schema.omg.org/spec/XMI/2.1";
declare namespace uml = "http://www.eclipse.org/uml2/2.1.0/UML"; 

declare variable $document as xs:string external;
declare variable $id as xs:string external;
declare variable $idType as xs:string external;


for $doc in doc($document)//doc
where compare(data($doc/str[@name=$idType]),$id) = 0
return concat(data($doc/arr[@name="content"]/str[1]),' ',data($doc/arr[@name="content"]/str[2]),' ',data($doc/arr[@name="content"]/str[3]))