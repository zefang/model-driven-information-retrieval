declare namespace xmi = "http://schema.omg.org/spec/XMI/2.1";
declare namespace uml = "http://www.eclipse.org/uml2/2.1.0/UML"; 

declare variable $document as xs:string external;

for $doc in doc($document)//doc
order by $doc/float[@name="score"] descending, $doc/str[@name="projectName"] 
return concat(data($doc/str[@name="projectId"]),'%' ,
				data($doc/str[@name="projectName"]),'%' ,
				data($doc/str[@name="classId"]),'%',
				data($doc/str[@name="className"]),'%',
				data($doc/float[@name="score"]))