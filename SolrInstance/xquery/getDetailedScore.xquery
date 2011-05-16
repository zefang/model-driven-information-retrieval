declare namespace xmi = "http://schema.omg.org/spec/XMI/2.1";
declare namespace uml = "http://www.eclipse.org/uml2/2.1.0/UML"; 

declare variable $document as xs:string external;
declare variable $projectId as xs:string external;

data(doc($document)//lst[@name="explain"]/str[@name=$projectId])