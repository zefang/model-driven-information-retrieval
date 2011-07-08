<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_g8-50OiaEd6gMtZRCjS81g" projectName="cmt">
    <node className="Thing" id="_g8-50-iaEd6gMtZRCjS81g"/>
    <node className="Meta-Reviewer" id="_g8-51OiaEd6gMtZRCjS81g"/>
    <node className="Reviewer" id="_g8-51eiaEd6gMtZRCjS81g"/>
    <node className="Decision" id="_g8-51uiaEd6gMtZRCjS81g"/>
    <node className="Person" id="_g8-51-iaEd6gMtZRCjS81g">
      <attribute>email</attribute>
    </node>
    <node className="Document" id="_g8-52OiaEd6gMtZRCjS81g"/>
    <node className="Preference" id="_g8-52eiaEd6gMtZRCjS81g"/>
    <node className="ProgramCommittee" id="_g8-52uiaEd6gMtZRCjS81g"/>
    <node className="Bid" id="_g8-52-iaEd6gMtZRCjS81g"/>
    <node className="Conference" id="_g8-53OiaEd6gMtZRCjS81g">
      <attribute>date</attribute>
      <attribute>reviewsPerPaper</attribute>
      <attribute>logoURL</attribute>
      <attribute>acceptsHardcopySubmissions</attribute>
      <attribute>siteURL</attribute>
    </node>
    <node className="ConferenceChair" id="_g8-53eiaEd6gMtZRCjS81g"/>
    <node className="ConferenceMember" id="_g8-53uiaEd6gMtZRCjS81g"/>
    <node className="AssociatedChair" id="_g8-53-iaEd6gMtZRCjS81g"/>
    <node className="ProgramCommitteeMember" id="_g8-54OiaEd6gMtZRCjS81g">
      <attribute>maxPapers</attribute>
    </node>
    <node className="AuthorNotReviewer" id="_g8-54eiaEd6gMtZRCjS81g"/>
    <node className="SubjectArea" id="_g8-54uiaEd6gMtZRCjS81g"/>
    <node className="ExternalReviewer" id="_g8_g4OiaEd6gMtZRCjS81g"/>
    <node className="Chairman" id="_g8_g4eiaEd6gMtZRCjS81g"/>
    <node className="ProgramCommitteeChair" id="_g8_g4uiaEd6gMtZRCjS81g"/>
    <node className="Acceptance" id="_g8_g4-iaEd6gMtZRCjS81g"/>
    <node className="Rejection" id="_g8_g5OiaEd6gMtZRCjS81g"/>
    <node className="Review" id="_g8_g5eiaEd6gMtZRCjS81g"/>
    <node className="Paper" id="_g8_g5uiaEd6gMtZRCjS81g">
      <attribute>paperID</attribute>
      <attribute>title</attribute>
    </node>
    <node className="Author" id="_g8_g5-iaEd6gMtZRCjS81g"/>
    <node className="User" id="_g8_g6OiaEd6gMtZRCjS81g"/>
    <node className="Co-author" id="_g8_g6eiaEd6gMtZRCjS81g"/>
    <node className="PaperAbstract" id="_g8_g6uiaEd6gMtZRCjS81g"/>
    <node className="PaperFullVersion" id="_g8_g6-iaEd6gMtZRCjS81g"/>
    <node className="Administrator" id="_g8_g7OiaEd6gMtZRCjS81g"/>
    <node className="Meta-Review" id="_g8_g7eiaEd6gMtZRCjS81g"/>
    <edge id="_g8_g9-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_g8-51eiaEd6gMtZRCjS81g" target="_g8_g7OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">assignedByAdministrator</attribute>
    </edge>
    <edge id="_g8_g9-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_g8_g7OiaEd6gMtZRCjS81g" target="_g8-51eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g8_g-uiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_g8-51eiaEd6gMtZRCjS81g" target="_g8-52-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">adjustBid</attribute>
    </edge>
    <edge id="_g8_g-uiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_g8-52-iaEd6gMtZRCjS81g" target="_g8-51eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g8_g_eiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_g8-51eiaEd6gMtZRCjS81g" target="_g8_g5uiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">readPaper</attribute>
    </edge>
    <edge id="_g8_g_eiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_g8_g5uiaEd6gMtZRCjS81g" target="_g8-51eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g8_hAOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_g8-51eiaEd6gMtZRCjS81g" target="_g8_g5uiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">hasBeenAssigned</attribute>
    </edge>
    <edge id="_g8_hAOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_g8_g5uiaEd6gMtZRCjS81g" target="_g8-51eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g8_hA-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_g8-51eiaEd6gMtZRCjS81g" target="_g8_g5eiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">writeReview</attribute>
    </edge>
    <edge id="_g8_hA-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_g8_g5eiaEd6gMtZRCjS81g" target="_g8-51eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g8_hBuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_g8-51eiaEd6gMtZRCjS81g" target="_g8_g4OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">assignExternalReviewer</attribute>
    </edge>
    <edge id="_g8_hBuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_g8_g4OiaEd6gMtZRCjS81g" target="_g8-51eiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g8_hCeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_g8-51-iaEd6gMtZRCjS81g" target="_g8-52OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">hasConflictOfInterest</attribute>
    </edge>
    <edge id="_g8_hCeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_g8-52OiaEd6gMtZRCjS81g" target="_g8-51-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g8_hDOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_g8-52uiaEd6gMtZRCjS81g" target="_g8-54OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">hasProgramCommitteeMember</attribute>
    </edge>
    <edge id="_g8_hDOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_g8-54OiaEd6gMtZRCjS81g" target="_g8-52uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g8_hD-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_g8-53OiaEd6gMtZRCjS81g" target="_g8-53uiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">hasConferenceMember</attribute>
    </edge>
    <edge id="_g8_hD-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_g8-53uiaEd6gMtZRCjS81g" target="_g8-53OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g8_hEuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_g8-53OiaEd6gMtZRCjS81g" target="_g8_g7OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">paperAssignmentFinalizedBy</attribute>
    </edge>
    <edge id="_g8_hEuiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_g8_g7OiaEd6gMtZRCjS81g" target="_g8-53OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g8_hFeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_g8-53OiaEd6gMtZRCjS81g" target="_g8_g7OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">reviewCriteriaEnteredBy</attribute>
    </edge>
    <edge id="_g8_hFeiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_g8_g7OiaEd6gMtZRCjS81g" target="_g8-53OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g9AH8eiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_g8-53OiaEd6gMtZRCjS81g" target="_g8_g7OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">paperAssignmentToolsRunBy</attribute>
    </edge>
    <edge id="_g9AH8eiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_g8_g7OiaEd6gMtZRCjS81g" target="_g8-53OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g9AH9OiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_g8-53OiaEd6gMtZRCjS81g" target="_g8_g7OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">virtualMeetingEnabledBy</attribute>
    </edge>
    <edge id="_g9AH9OiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_g8_g7OiaEd6gMtZRCjS81g" target="_g8-53OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g9AH9-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_g8-53OiaEd6gMtZRCjS81g" target="_g8_g7OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">hardcopyMailingManifestsPrintedBy</attribute>
    </edge>
    <edge id="_g9AH9-iaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_g8_g7OiaEd6gMtZRCjS81g" target="_g8-53OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g9AH-uiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_g8-53OiaEd6gMtZRCjS81g" target="_g8_g7OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">detailsEnteredBy</attribute>
    </edge>
    <edge id="_g9AH-uiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_g8_g7OiaEd6gMtZRCjS81g" target="_g8-53OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g9AH_eiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_g8-53OiaEd6gMtZRCjS81g" target="_g8_g7OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">reviewerBiddingStartedBy</attribute>
    </edge>
    <edge id="_g9AH_eiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_g8_g7OiaEd6gMtZRCjS81g" target="_g8-53OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g9AIAOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_g8-54OiaEd6gMtZRCjS81g" target="_g8_g7OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">addedBy</attribute>
    </edge>
    <edge id="_g9AIAOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_g8_g7OiaEd6gMtZRCjS81g" target="_g8-54OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g9AIA-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_g8_g4uiaEd6gMtZRCjS81g" target="_g8_g5eiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">endReview</attribute>
    </edge>
    <edge id="_g9AIA-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_g8_g5eiaEd6gMtZRCjS81g" target="_g8_g4uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g9AIBuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_g8_g5uiaEd6gMtZRCjS81g" target="_g8_g6eiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">hasCo-author</attribute>
    </edge>
    <edge id="_g9AIBuiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_g8_g6eiaEd6gMtZRCjS81g" target="_g8_g5uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g9AICeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_g8_g5uiaEd6gMtZRCjS81g" target="_g8-52-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">hasBid</attribute>
    </edge>
    <edge id="_g9AICeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_g8-52-iaEd6gMtZRCjS81g" target="_g8_g5uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g9AIDOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_g8_g5uiaEd6gMtZRCjS81g" target="_g8-51uiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">hasDecision</attribute>
    </edge>
    <edge id="_g9AIDOiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_g8-51uiaEd6gMtZRCjS81g" target="_g8_g5uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g9AID-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_g8_g5uiaEd6gMtZRCjS81g" target="_g8-54uiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">hasSubjectArea</attribute>
    </edge>
    <edge id="_g9AID-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_g8-54uiaEd6gMtZRCjS81g" target="_g8_g5uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g9AIEuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_g8_g5uiaEd6gMtZRCjS81g" target="_g8_g5-iaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">hasAuthor</attribute>
    </edge>
    <edge id="_g9AIEuiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_g8_g5-iaEd6gMtZRCjS81g" target="_g8_g5uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g9AIFeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_g8_g5uiaEd6gMtZRCjS81g" target="_g8_g7OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">acceptedBy</attribute>
    </edge>
    <edge id="_g9AIFeiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_g8_g7OiaEd6gMtZRCjS81g" target="_g8_g5uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g9AIGOiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_g8_g5uiaEd6gMtZRCjS81g" target="_g8_g7OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">rejectedBy</attribute>
    </edge>
    <edge id="_g9AIGOiaEd6gMtZRCjS81g-opposite" lowerValue="0" relType="ASSOCIATION" source="_g8_g7OiaEd6gMtZRCjS81g" target="_g8_g5uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g9AIG-iaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_g8_g5uiaEd6gMtZRCjS81g" target="_g8-51OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">readByMeta-Reviewer</attribute>
    </edge>
    <edge id="_g9AIG-iaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_g8-51OiaEd6gMtZRCjS81g" target="_g8_g5uiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g9AIHuiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_g8_g5-iaEd6gMtZRCjS81g" target="_g8_g5uiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">submitPaper</attribute>
    </edge>
    <edge id="_g9AIHuiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_g8_g5uiaEd6gMtZRCjS81g" target="_g8_g5-iaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g9AIIeiaEd6gMtZRCjS81g" relType="ASSOCIATION" source="_g8_g7OiaEd6gMtZRCjS81g" target="_g8-54OiaEd6gMtZRCjS81g">
      <attribute lowerValue="0" upperValue="1">setMaxPapers</attribute>
    </edge>
    <edge id="_g9AIIeiaEd6gMtZRCjS81g-opposite" lowerValue="1" relType="ASSOCIATION" source="_g8-54OiaEd6gMtZRCjS81g" target="_g8_g7OiaEd6gMtZRCjS81g" upperValue="1"/>
    <edge id="_g9BWEOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g8-51OiaEd6gMtZRCjS81g" target="_g8-51eiaEd6gMtZRCjS81g"/>
    <edge id="_g9BWEOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g8-51eiaEd6gMtZRCjS81g" target="_g8-51OiaEd6gMtZRCjS81g"/>
    <edge id="_g9BWEeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g8-51eiaEd6gMtZRCjS81g" target="_g8-53uiaEd6gMtZRCjS81g"/>
    <edge id="_g9BWEeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g8-53uiaEd6gMtZRCjS81g" target="_g8-51eiaEd6gMtZRCjS81g"/>
    <edge id="_g9BWEuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g8-51eiaEd6gMtZRCjS81g" target="_g8_g6OiaEd6gMtZRCjS81g"/>
    <edge id="_g9BWEuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g8_g6OiaEd6gMtZRCjS81g" target="_g8-51eiaEd6gMtZRCjS81g"/>
    <edge id="_g9BWE-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g8-53OiaEd6gMtZRCjS81g" target="_g8-50-iaEd6gMtZRCjS81g"/>
    <edge id="_g9BWE-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g8-50-iaEd6gMtZRCjS81g" target="_g8-53OiaEd6gMtZRCjS81g"/>
    <edge id="_g9BWFOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g8-53eiaEd6gMtZRCjS81g" target="_g8-53uiaEd6gMtZRCjS81g"/>
    <edge id="_g9BWFOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g8-53uiaEd6gMtZRCjS81g" target="_g8-53eiaEd6gMtZRCjS81g"/>
    <edge id="_g9BWFeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g8-53eiaEd6gMtZRCjS81g" target="_g8_g4eiaEd6gMtZRCjS81g"/>
    <edge id="_g9BWFeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g8_g4eiaEd6gMtZRCjS81g" target="_g8-53eiaEd6gMtZRCjS81g"/>
    <edge id="_g9BWFuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g8-53uiaEd6gMtZRCjS81g" target="_g8-51-iaEd6gMtZRCjS81g"/>
    <edge id="_g9BWFuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g8-51-iaEd6gMtZRCjS81g" target="_g8-53uiaEd6gMtZRCjS81g"/>
    <edge id="_g9BWF-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g8-53-iaEd6gMtZRCjS81g" target="_g8-53uiaEd6gMtZRCjS81g"/>
    <edge id="_g9BWF-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g8-53uiaEd6gMtZRCjS81g" target="_g8-53-iaEd6gMtZRCjS81g"/>
    <edge id="_g9BWGOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g8-53-iaEd6gMtZRCjS81g" target="_g8_g4eiaEd6gMtZRCjS81g"/>
    <edge id="_g9BWGOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g8_g4eiaEd6gMtZRCjS81g" target="_g8-53-iaEd6gMtZRCjS81g"/>
    <edge id="_g9BWGeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g8-54OiaEd6gMtZRCjS81g" target="_g8-51-iaEd6gMtZRCjS81g"/>
    <edge id="_g9BWGeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g8-51-iaEd6gMtZRCjS81g" target="_g8-54OiaEd6gMtZRCjS81g"/>
    <edge id="_g9BWGuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g8-54OiaEd6gMtZRCjS81g" target="_g8-53uiaEd6gMtZRCjS81g"/>
    <edge id="_g9BWGuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g8-53uiaEd6gMtZRCjS81g" target="_g8-54OiaEd6gMtZRCjS81g"/>
    <edge id="_g9B9IOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g8-54eiaEd6gMtZRCjS81g" target="_g8_g5-iaEd6gMtZRCjS81g"/>
    <edge id="_g9B9IOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g8_g5-iaEd6gMtZRCjS81g" target="_g8-54eiaEd6gMtZRCjS81g"/>
    <edge id="_g9B9IeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g8_g4OiaEd6gMtZRCjS81g" target="_g8-51-iaEd6gMtZRCjS81g"/>
    <edge id="_g9B9IeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g8-51-iaEd6gMtZRCjS81g" target="_g8_g4OiaEd6gMtZRCjS81g"/>
    <edge id="_g9B9IuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g8_g4eiaEd6gMtZRCjS81g" target="_g8-51-iaEd6gMtZRCjS81g"/>
    <edge id="_g9B9IuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g8-51-iaEd6gMtZRCjS81g" target="_g8_g4eiaEd6gMtZRCjS81g"/>
    <edge id="_g9B9I-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g8_g4eiaEd6gMtZRCjS81g" target="_g8-53uiaEd6gMtZRCjS81g"/>
    <edge id="_g9B9I-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g8-53uiaEd6gMtZRCjS81g" target="_g8_g4eiaEd6gMtZRCjS81g"/>
    <edge id="_g9B9JOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g8_g4uiaEd6gMtZRCjS81g" target="_g8-54OiaEd6gMtZRCjS81g"/>
    <edge id="_g9B9JOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g8-54OiaEd6gMtZRCjS81g" target="_g8_g4uiaEd6gMtZRCjS81g"/>
    <edge id="_g9B9JeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g8_g4uiaEd6gMtZRCjS81g" target="_g8_g4eiaEd6gMtZRCjS81g"/>
    <edge id="_g9B9JeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g8_g4eiaEd6gMtZRCjS81g" target="_g8_g4uiaEd6gMtZRCjS81g"/>
    <edge id="_g9B9JuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g8_g4-iaEd6gMtZRCjS81g" target="_g8-51uiaEd6gMtZRCjS81g"/>
    <edge id="_g9B9JuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g8-51uiaEd6gMtZRCjS81g" target="_g8_g4-iaEd6gMtZRCjS81g"/>
    <edge id="_g9B9J-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g8_g5OiaEd6gMtZRCjS81g" target="_g8-51uiaEd6gMtZRCjS81g"/>
    <edge id="_g9B9J-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g8-51uiaEd6gMtZRCjS81g" target="_g8_g5OiaEd6gMtZRCjS81g"/>
    <edge id="_g9B9KOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g8_g5eiaEd6gMtZRCjS81g" target="_g8-52OiaEd6gMtZRCjS81g"/>
    <edge id="_g9B9KOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g8-52OiaEd6gMtZRCjS81g" target="_g8_g5eiaEd6gMtZRCjS81g"/>
    <edge id="_g9B9KeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g8_g5uiaEd6gMtZRCjS81g" target="_g8-52OiaEd6gMtZRCjS81g"/>
    <edge id="_g9B9KeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g8-52OiaEd6gMtZRCjS81g" target="_g8_g5uiaEd6gMtZRCjS81g"/>
    <edge id="_g9B9KuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g8_g5-iaEd6gMtZRCjS81g" target="_g8-53uiaEd6gMtZRCjS81g"/>
    <edge id="_g9B9KuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g8-53uiaEd6gMtZRCjS81g" target="_g8_g5-iaEd6gMtZRCjS81g"/>
    <edge id="_g9B9K-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g8_g5-iaEd6gMtZRCjS81g" target="_g8_g6OiaEd6gMtZRCjS81g"/>
    <edge id="_g9B9K-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g8_g6OiaEd6gMtZRCjS81g" target="_g8_g5-iaEd6gMtZRCjS81g"/>
    <edge id="_g9B9LOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g8_g6OiaEd6gMtZRCjS81g" target="_g8-51-iaEd6gMtZRCjS81g"/>
    <edge id="_g9B9LOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g8-51-iaEd6gMtZRCjS81g" target="_g8_g6OiaEd6gMtZRCjS81g"/>
    <edge id="_g9B9LeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g8_g6eiaEd6gMtZRCjS81g" target="_g8_g5-iaEd6gMtZRCjS81g"/>
    <edge id="_g9B9LeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g8_g5-iaEd6gMtZRCjS81g" target="_g8_g6eiaEd6gMtZRCjS81g"/>
    <edge id="_g9B9LuiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g8_g6uiaEd6gMtZRCjS81g" target="_g8_g5uiaEd6gMtZRCjS81g"/>
    <edge id="_g9B9LuiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g8_g5uiaEd6gMtZRCjS81g" target="_g8_g6uiaEd6gMtZRCjS81g"/>
    <edge id="_g9B9L-iaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g8_g6-iaEd6gMtZRCjS81g" target="_g8_g5uiaEd6gMtZRCjS81g"/>
    <edge id="_g9B9L-iaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g8_g5uiaEd6gMtZRCjS81g" target="_g8_g6-iaEd6gMtZRCjS81g"/>
    <edge id="_g9CkMOiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g8_g7OiaEd6gMtZRCjS81g" target="_g8_g6OiaEd6gMtZRCjS81g"/>
    <edge id="_g9CkMOiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g8_g6OiaEd6gMtZRCjS81g" target="_g8_g7OiaEd6gMtZRCjS81g"/>
    <edge id="_g9CkMeiaEd6gMtZRCjS81g" relType="GENERALIZATION_CHILD_FATHER" source="_g8_g7eiaEd6gMtZRCjS81g" target="_g8_g5eiaEd6gMtZRCjS81g"/>
    <edge id="_g9CkMeiaEd6gMtZRCjS81g-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_g8_g5eiaEd6gMtZRCjS81g" target="_g8_g7eiaEd6gMtZRCjS81g"/>
  </graph>
</graphml>
