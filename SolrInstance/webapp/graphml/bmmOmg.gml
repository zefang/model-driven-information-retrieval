<?xml version="1.0" encoding="UTF-8"?>
<graphml>
  <graph edgedefault="directed" id="_huppgAETEd-PJd5CuVB2dA" projectName="bmm">
    <node className="Assessment" id="_huyzcAETEd-PJd5CuVB2dA"/>
    <node className="MotivationElement" id="_huyzcQETEd-PJd5CuVB2dA">
      <attribute>name</attribute>
      <attribute>description</attribute>
    </node>
    <node className="Directive" id="_huyzcgETEd-PJd5CuVB2dA"/>
    <node className="Means" id="_huyzcwETEd-PJd5CuVB2dA"/>
    <node className="OrganizationUnit" id="_huyzdAETEd-PJd5CuVB2dA"/>
    <node className="End" id="_huyzdQETEd-PJd5CuVB2dA"/>
    <node className="BusinessProcess" id="_huyzdgETEd-PJd5CuVB2dA"/>
    <node className="Offering" id="_huyzdwETEd-PJd5CuVB2dA"/>
    <node className="Asset" id="_huyzeAETEd-PJd5CuVB2dA"/>
    <node className="CourseOfAction" id="_huyzeQETEd-PJd5CuVB2dA"/>
    <node className="DesiredResult" id="_huyzegETEd-PJd5CuVB2dA"/>
    <node className="Liability" id="_huyzewETEd-PJd5CuVB2dA"/>
    <node className="Resource" id="_huyzfAETEd-PJd5CuVB2dA"/>
    <node className="FixedAsset" id="_hu8kcAETEd-PJd5CuVB2dA"/>
    <node className="BusinessPolicy" id="_hu8kcQETEd-PJd5CuVB2dA"/>
    <node className="BusinessRule" id="_hu8kcgETEd-PJd5CuVB2dA"/>
    <node className="Tactic" id="_hu8kcwETEd-PJd5CuVB2dA"/>
    <node className="Strategy" id="_hu8kdAETEd-PJd5CuVB2dA"/>
    <node className="Mission" id="_hu8kdQETEd-PJd5CuVB2dA"/>
    <node className="Vision" id="_hu8kdgETEd-PJd5CuVB2dA"/>
    <node className="Goal" id="_hu8kdwETEd-PJd5CuVB2dA"/>
    <node className="Objective" id="_hu8keAETEd-PJd5CuVB2dA"/>
    <node className="Influencer" id="_hu8keQETEd-PJd5CuVB2dA"/>
    <node className="InfluencerCategory" id="_hu8kegETEd-PJd5CuVB2dA"/>
    <node className="InfluencingOrganization" id="_hu8kewETEd-PJd5CuVB2dA"/>
    <node className="OrganizationCategory" id="_hu8kfAETEd-PJd5CuVB2dA"/>
    <node className="PotentialImpact" id="_hu8kfQETEd-PJd5CuVB2dA"/>
    <node className="Regulation" id="_hu8kfgETEd-PJd5CuVB2dA"/>
    <node className="AssessmentCategory" id="_hu8kfwETEd-PJd5CuVB2dA"/>
    <node className="PotentialReward" id="_hu8kgAETEd-PJd5CuVB2dA"/>
    <node className="Risk" id="_hu8kgQETEd-PJd5CuVB2dA"/>
    <edge id="_hvPfYgETEd-PJd5CuVB2dA" relType="ASSOCIATION" source="_huyzcAETEd-PJd5CuVB2dA" target="_huyzcgETEd-PJd5CuVB2dA">
      <attribute lowerValue="0" upperValue="*">motivatedDirective</attribute>
    </edge>
    <edge id="_hvPfYgETEd-PJd5CuVB2dA-opposite" lowerValue="0" relType="ASSOCIATION" source="_huyzcgETEd-PJd5CuVB2dA" target="_huyzcAETEd-PJd5CuVB2dA" upperValue="*"/>
    <edge id="_hv_GQQETEd-PJd5CuVB2dA" relType="ASSOCIATION" source="_huyzcAETEd-PJd5CuVB2dA" target="_huyzdQETEd-PJd5CuVB2dA">
      <attribute lowerValue="0" upperValue="*">affectedEnd</attribute>
    </edge>
    <edge id="_hv_GQQETEd-PJd5CuVB2dA-opposite" lowerValue="0" relType="ASSOCIATION" source="_huyzdQETEd-PJd5CuVB2dA" target="_huyzcAETEd-PJd5CuVB2dA" upperValue="*"/>
    <edge id="_hv_GRAETEd-PJd5CuVB2dA" relType="ASSOCIATION" source="_huyzcAETEd-PJd5CuVB2dA" target="_hu8keQETEd-PJd5CuVB2dA">
      <attribute lowerValue="1" upperValue="*">judgedInfluencer</attribute>
    </edge>
    <edge id="_hv_GRAETEd-PJd5CuVB2dA-opposite" lowerValue="0" relType="ASSOCIATION" source="_hu8keQETEd-PJd5CuVB2dA" target="_huyzcAETEd-PJd5CuVB2dA" upperValue="*"/>
    <edge id="_hv_GRwETEd-PJd5CuVB2dA" relType="ASSOCIATION" source="_huyzcAETEd-PJd5CuVB2dA" target="_huyzdAETEd-PJd5CuVB2dA">
      <attribute lowerValue="1" upperValue="1">assessingOrganizationUnit</attribute>
    </edge>
    <edge id="_hv_GRwETEd-PJd5CuVB2dA-opposite" lowerValue="0" relType="ASSOCIATION" source="_huyzdAETEd-PJd5CuVB2dA" target="_huyzcAETEd-PJd5CuVB2dA" upperValue="*"/>
    <edge id="_hv_GSgETEd-PJd5CuVB2dA" relType="ASSOCIATION" source="_huyzcAETEd-PJd5CuVB2dA" target="_huyzcwETEd-PJd5CuVB2dA">
      <attribute lowerValue="0" upperValue="*">affectedMeans</attribute>
    </edge>
    <edge id="_hv_GSgETEd-PJd5CuVB2dA-opposite" lowerValue="0" relType="ASSOCIATION" source="_huyzcwETEd-PJd5CuVB2dA" target="_huyzcAETEd-PJd5CuVB2dA" upperValue="*"/>
    <edge id="_hv_GTQETEd-PJd5CuVB2dA" relType="ASSOCIATION" source="_huyzcAETEd-PJd5CuVB2dA" target="_hu8kfQETEd-PJd5CuVB2dA">
      <attribute lowerValue="0" upperValue="*">identifiedPotentialImpact</attribute>
    </edge>
    <edge id="_hv_GTQETEd-PJd5CuVB2dA-opposite" lowerValue="0" relType="ASSOCIATION" source="_hu8kfQETEd-PJd5CuVB2dA" target="_huyzcAETEd-PJd5CuVB2dA" upperValue="*"/>
    <edge id="_hv_GUAETEd-PJd5CuVB2dA" relType="ASSOCIATION" source="_huyzcAETEd-PJd5CuVB2dA" target="_huyzcAETEd-PJd5CuVB2dA">
      <attribute lowerValue="0" upperValue="*">usedAssessment</attribute>
    </edge>
    <edge id="_hv_GUAETEd-PJd5CuVB2dA-opposite" lowerValue="0" relType="ASSOCIATION" source="_huyzcAETEd-PJd5CuVB2dA" target="_huyzcAETEd-PJd5CuVB2dA" upperValue="*"/>
    <edge id="_hv_GUwETEd-PJd5CuVB2dA" relType="ASSOCIATION" source="_huyzcAETEd-PJd5CuVB2dA" target="_hu8kfwETEd-PJd5CuVB2dA">
      <attribute lowerValue="0" upperValue="*">categorizingAssessmentCategory</attribute>
    </edge>
    <edge id="_hv_GUwETEd-PJd5CuVB2dA-opposite" lowerValue="0" relType="ASSOCIATION" source="_hu8kfwETEd-PJd5CuVB2dA" target="_huyzcAETEd-PJd5CuVB2dA" upperValue="*"/>
    <edge id="_hv_GVgETEd-PJd5CuVB2dA" relType="ASSOCIATION" source="_huyzcgETEd-PJd5CuVB2dA" target="_huyzegETEd-PJd5CuVB2dA">
      <attribute lowerValue="0" upperValue="*">supportedDesiredResult</attribute>
    </edge>
    <edge id="_hv_GVgETEd-PJd5CuVB2dA-opposite" lowerValue="0" relType="ASSOCIATION" source="_huyzegETEd-PJd5CuVB2dA" target="_huyzcgETEd-PJd5CuVB2dA" upperValue="*"/>
    <edge id="_hv_GWQETEd-PJd5CuVB2dA" relType="ASSOCIATION" source="_huyzcgETEd-PJd5CuVB2dA" target="_huyzeQETEd-PJd5CuVB2dA">
      <attribute lowerValue="0" upperValue="*">governedCourseOfAction</attribute>
    </edge>
    <edge id="_hv_GWQETEd-PJd5CuVB2dA-opposite" lowerValue="0" relType="ASSOCIATION" source="_huyzeQETEd-PJd5CuVB2dA" target="_huyzcgETEd-PJd5CuVB2dA" upperValue="*"/>
    <edge id="_hv_GXAETEd-PJd5CuVB2dA" relType="ASSOCIATION" source="_huyzcgETEd-PJd5CuVB2dA" target="_huyzeQETEd-PJd5CuVB2dA">
      <attribute lowerValue="0" upperValue="*">derivedCourseOfAction</attribute>
    </edge>
    <edge id="_hv_GXAETEd-PJd5CuVB2dA-opposite" lowerValue="0" relType="ASSOCIATION" source="_huyzeQETEd-PJd5CuVB2dA" target="_huyzcgETEd-PJd5CuVB2dA" upperValue="*"/>
    <edge id="_hv_GXwETEd-PJd5CuVB2dA" relType="ASSOCIATION" source="_huyzcgETEd-PJd5CuVB2dA" target="_huyzeAETEd-PJd5CuVB2dA">
      <attribute lowerValue="0" upperValue="*">governedAsset</attribute>
    </edge>
    <edge id="_hv_GXwETEd-PJd5CuVB2dA-opposite" lowerValue="0" relType="ASSOCIATION" source="_huyzeAETEd-PJd5CuVB2dA" target="_huyzcgETEd-PJd5CuVB2dA" upperValue="*"/>
    <edge id="_hv_GYgETEd-PJd5CuVB2dA" relType="ASSOCIATION" source="_huyzcgETEd-PJd5CuVB2dA" target="_hu8kfQETEd-PJd5CuVB2dA">
      <attribute lowerValue="0" upperValue="*">motivatingPotentialImpact</attribute>
    </edge>
    <edge id="_hv_GYgETEd-PJd5CuVB2dA-opposite" lowerValue="0" relType="ASSOCIATION" source="_hu8kfQETEd-PJd5CuVB2dA" target="_huyzcgETEd-PJd5CuVB2dA" upperValue="*"/>
    <edge id="_hv_GZQETEd-PJd5CuVB2dA" relType="ASSOCIATION" source="_huyzcgETEd-PJd5CuVB2dA" target="_hu8kfgETEd-PJd5CuVB2dA">
      <attribute lowerValue="0" upperValue="*">directiveRegulation</attribute>
    </edge>
    <edge id="_hv_GZQETEd-PJd5CuVB2dA-opposite" lowerValue="0" relType="ASSOCIATION" source="_hu8kfgETEd-PJd5CuVB2dA" target="_huyzcgETEd-PJd5CuVB2dA" upperValue="1"/>
    <edge id="_hv_GaAETEd-PJd5CuVB2dA" relType="ASSOCIATION" source="_huyzcwETEd-PJd5CuVB2dA" target="_huyzdAETEd-PJd5CuVB2dA">
      <attribute lowerValue="0" upperValue="*">establishingOrganizationUnit</attribute>
    </edge>
    <edge id="_hv_GaAETEd-PJd5CuVB2dA-opposite" lowerValue="0" relType="ASSOCIATION" source="_huyzdAETEd-PJd5CuVB2dA" target="_huyzcwETEd-PJd5CuVB2dA" upperValue="*"/>
    <edge id="_hv_GawETEd-PJd5CuVB2dA" relType="ASSOCIATION" source="_huyzdAETEd-PJd5CuVB2dA" target="_huyzdQETEd-PJd5CuVB2dA">
      <attribute lowerValue="0" upperValue="*">definedEnd</attribute>
    </edge>
    <edge id="_hv_GawETEd-PJd5CuVB2dA-opposite" lowerValue="0" relType="ASSOCIATION" source="_huyzdQETEd-PJd5CuVB2dA" target="_huyzdAETEd-PJd5CuVB2dA" upperValue="*"/>
    <edge id="_hv_GbgETEd-PJd5CuVB2dA" relType="ASSOCIATION" source="_huyzdAETEd-PJd5CuVB2dA" target="_huyzdgETEd-PJd5CuVB2dA">
      <attribute lowerValue="0" upperValue="*">managedBusinessProces</attribute>
    </edge>
    <edge id="_hv_GbgETEd-PJd5CuVB2dA-opposite" lowerValue="0" relType="ASSOCIATION" source="_huyzdgETEd-PJd5CuVB2dA" target="_huyzdAETEd-PJd5CuVB2dA" upperValue="*"/>
    <edge id="_hv_GcQETEd-PJd5CuVB2dA" relType="ASSOCIATION" source="_huyzdAETEd-PJd5CuVB2dA" target="_huyzewETEd-PJd5CuVB2dA">
      <attribute lowerValue="0" upperValue="*">managedLiability</attribute>
    </edge>
    <edge id="_hv_GcQETEd-PJd5CuVB2dA-opposite" lowerValue="0" relType="ASSOCIATION" source="_huyzewETEd-PJd5CuVB2dA" target="_huyzdAETEd-PJd5CuVB2dA" upperValue="*"/>
    <edge id="_hv_GdAETEd-PJd5CuVB2dA" relType="ASSOCIATION" source="_huyzdAETEd-PJd5CuVB2dA" target="_huyzeAETEd-PJd5CuVB2dA">
      <attribute lowerValue="0" upperValue="*">managedAsset</attribute>
    </edge>
    <edge id="_hv_GdAETEd-PJd5CuVB2dA-opposite" lowerValue="0" relType="ASSOCIATION" source="_huyzeAETEd-PJd5CuVB2dA" target="_huyzdAETEd-PJd5CuVB2dA" upperValue="*"/>
    <edge id="_hv_GdwETEd-PJd5CuVB2dA" relType="ASSOCIATION" source="_huyzdAETEd-PJd5CuVB2dA" target="_hu8kdAETEd-PJd5CuVB2dA">
      <attribute lowerValue="0" upperValue="*">determiningStrategy</attribute>
    </edge>
    <edge id="_hv_GdwETEd-PJd5CuVB2dA-opposite" lowerValue="0" relType="ASSOCIATION" source="_hu8kdAETEd-PJd5CuVB2dA" target="_huyzdAETEd-PJd5CuVB2dA" upperValue="*"/>
    <edge id="_hv_GegETEd-PJd5CuVB2dA" relType="ASSOCIATION" source="_huyzdAETEd-PJd5CuVB2dA" target="_hu8keQETEd-PJd5CuVB2dA">
      <attribute lowerValue="0" upperValue="*">recognizedInfluencer</attribute>
    </edge>
    <edge id="_hv_GegETEd-PJd5CuVB2dA-opposite" lowerValue="1" relType="ASSOCIATION" source="_hu8keQETEd-PJd5CuVB2dA" target="_huyzdAETEd-PJd5CuVB2dA" upperValue="*"/>
    <edge id="_hv_GfQETEd-PJd5CuVB2dA" relType="ASSOCIATION" source="_huyzdAETEd-PJd5CuVB2dA" target="_hu8kewETEd-PJd5CuVB2dA">
      <attribute lowerValue="0" upperValue="*">internalInfluencingOrganization</attribute>
    </edge>
    <edge id="_hv_GfQETEd-PJd5CuVB2dA-opposite" lowerValue="0" relType="ASSOCIATION" source="_hu8kewETEd-PJd5CuVB2dA" target="_huyzdAETEd-PJd5CuVB2dA" upperValue="1"/>
    <edge id="_hv_GgAETEd-PJd5CuVB2dA" relType="ASSOCIATION" source="_huyzdgETEd-PJd5CuVB2dA" target="_huyzdwETEd-PJd5CuVB2dA">
      <attribute lowerValue="0" upperValue="*">deliveredOffering</attribute>
    </edge>
    <edge id="_hv_GgAETEd-PJd5CuVB2dA-opposite" lowerValue="0" relType="ASSOCIATION" source="_huyzdwETEd-PJd5CuVB2dA" target="_huyzdgETEd-PJd5CuVB2dA" upperValue="*"/>
    <edge id="_hv_GgwETEd-PJd5CuVB2dA" relType="ASSOCIATION" source="_huyzdgETEd-PJd5CuVB2dA" target="_huyzeQETEd-PJd5CuVB2dA">
      <attribute lowerValue="0" upperValue="*">realizedCourseOfAction</attribute>
    </edge>
    <edge id="_hv_GgwETEd-PJd5CuVB2dA-opposite" lowerValue="1" relType="ASSOCIATION" source="_huyzeQETEd-PJd5CuVB2dA" target="_huyzdgETEd-PJd5CuVB2dA" upperValue="1"/>
    <edge id="_hv_GhgETEd-PJd5CuVB2dA" relType="ASSOCIATION" source="_huyzdgETEd-PJd5CuVB2dA" target="_huyzeAETEd-PJd5CuVB2dA">
      <attribute lowerValue="0" upperValue="*">managedAsset</attribute>
    </edge>
    <edge id="_hv_GhgETEd-PJd5CuVB2dA-opposite" lowerValue="0" relType="ASSOCIATION" source="_huyzeAETEd-PJd5CuVB2dA" target="_huyzdgETEd-PJd5CuVB2dA" upperValue="*"/>
    <edge id="_hv_GiQETEd-PJd5CuVB2dA" relType="ASSOCIATION" source="_huyzdgETEd-PJd5CuVB2dA" target="_hu8kcQETEd-PJd5CuVB2dA">
      <attribute lowerValue="0" upperValue="*">governingBusinessPolicy</attribute>
    </edge>
    <edge id="_hv_GiQETEd-PJd5CuVB2dA-opposite" lowerValue="0" relType="ASSOCIATION" source="_hu8kcQETEd-PJd5CuVB2dA" target="_huyzdgETEd-PJd5CuVB2dA" upperValue="*"/>
    <edge id="_hv_GjAETEd-PJd5CuVB2dA" relType="ASSOCIATION" source="_huyzdgETEd-PJd5CuVB2dA" target="_hu8kcgETEd-PJd5CuVB2dA">
      <attribute lowerValue="1" upperValue="1">guidingBusinessRule</attribute>
    </edge>
    <edge id="_hv_GjAETEd-PJd5CuVB2dA-opposite" lowerValue="0" relType="ASSOCIATION" source="_hu8kcgETEd-PJd5CuVB2dA" target="_huyzdgETEd-PJd5CuVB2dA" upperValue="*"/>
    <edge id="_hv_GjwETEd-PJd5CuVB2dA" relType="ASSOCIATION" source="_huyzdwETEd-PJd5CuVB2dA" target="_huyzeQETEd-PJd5CuVB2dA">
      <attribute lowerValue="0" upperValue="*">definingCourseOfAction</attribute>
    </edge>
    <edge id="_hv_GjwETEd-PJd5CuVB2dA-opposite" lowerValue="0" relType="ASSOCIATION" source="_huyzeQETEd-PJd5CuVB2dA" target="_huyzdwETEd-PJd5CuVB2dA" upperValue="*"/>
    <edge id="_hv_GkgETEd-PJd5CuVB2dA" relType="ASSOCIATION" source="_huyzdwETEd-PJd5CuVB2dA" target="_hu8kcAETEd-PJd5CuVB2dA">
      <attribute lowerValue="0" upperValue="*">usedAsset</attribute>
    </edge>
    <edge id="_hv_GkgETEd-PJd5CuVB2dA-opposite" lowerValue="0" relType="ASSOCIATION" source="_hu8kcAETEd-PJd5CuVB2dA" target="_huyzdwETEd-PJd5CuVB2dA" upperValue="*"/>
    <edge id="_hv_GlQETEd-PJd5CuVB2dA" relType="ASSOCIATION" source="_huyzdwETEd-PJd5CuVB2dA" target="_huyzfAETEd-PJd5CuVB2dA">
      <attribute lowerValue="0" upperValue="*">requiredResource</attribute>
    </edge>
    <edge id="_hv_GlQETEd-PJd5CuVB2dA-opposite" lowerValue="0" relType="ASSOCIATION" source="_huyzfAETEd-PJd5CuVB2dA" target="_huyzdwETEd-PJd5CuVB2dA" upperValue="*"/>
    <edge id="_hv_GmAETEd-PJd5CuVB2dA" relType="ASSOCIATION" source="_huyzeAETEd-PJd5CuVB2dA" target="_huyzeQETEd-PJd5CuVB2dA">
      <attribute lowerValue="0" upperValue="*">deployingCourseOfAction</attribute>
    </edge>
    <edge id="_hv_GmAETEd-PJd5CuVB2dA-opposite" lowerValue="0" relType="ASSOCIATION" source="_huyzeQETEd-PJd5CuVB2dA" target="_huyzeAETEd-PJd5CuVB2dA" upperValue="*"/>
    <edge id="_hv_GmwETEd-PJd5CuVB2dA" relType="ASSOCIATION" source="_huyzeQETEd-PJd5CuVB2dA" target="_huyzeQETEd-PJd5CuVB2dA">
      <attribute lowerValue="0" upperValue="*">enabledCourseOfAction</attribute>
    </edge>
    <edge id="_hv_GmwETEd-PJd5CuVB2dA-opposite" lowerValue="0" relType="ASSOCIATION" source="_huyzeQETEd-PJd5CuVB2dA" target="_huyzeQETEd-PJd5CuVB2dA" upperValue="*"/>
    <edge id="_hv_GngETEd-PJd5CuVB2dA" relType="ASSOCIATION" source="_huyzeQETEd-PJd5CuVB2dA" target="_huyzeQETEd-PJd5CuVB2dA">
      <attribute lowerValue="0" upperValue="*">moreSpecficCourseOfAction</attribute>
    </edge>
    <edge id="_hv_GngETEd-PJd5CuVB2dA-opposite" lowerValue="0" relType="ASSOCIATION" source="_huyzeQETEd-PJd5CuVB2dA" target="_huyzeQETEd-PJd5CuVB2dA" upperValue="*"/>
    <edge id="_hv_GoQETEd-PJd5CuVB2dA" relType="ASSOCIATION" source="_huyzeQETEd-PJd5CuVB2dA" target="_huyzegETEd-PJd5CuVB2dA">
      <attribute lowerValue="0" upperValue="*">supportedDesiredResult</attribute>
    </edge>
    <edge id="_hv_GoQETEd-PJd5CuVB2dA-opposite" lowerValue="0" relType="ASSOCIATION" source="_huyzegETEd-PJd5CuVB2dA" target="_huyzeQETEd-PJd5CuVB2dA" upperValue="*"/>
    <edge id="_hv_GpAETEd-PJd5CuVB2dA" relType="ASSOCIATION" source="_huyzeQETEd-PJd5CuVB2dA" target="_huyzewETEd-PJd5CuVB2dA">
      <attribute lowerValue="0" upperValue="*">dischargedLiability</attribute>
    </edge>
    <edge id="_hv_GpAETEd-PJd5CuVB2dA-opposite" lowerValue="0" relType="ASSOCIATION" source="_huyzewETEd-PJd5CuVB2dA" target="_huyzeQETEd-PJd5CuVB2dA" upperValue="*"/>
    <edge id="_hv_GpwETEd-PJd5CuVB2dA" relType="ASSOCIATION" source="_huyzegETEd-PJd5CuVB2dA" target="_huyzegETEd-PJd5CuVB2dA">
      <attribute lowerValue="0" upperValue="*">moreSpecificDesiredResult</attribute>
    </edge>
    <edge id="_hv_GpwETEd-PJd5CuVB2dA-opposite" lowerValue="0" relType="ASSOCIATION" source="_huyzegETEd-PJd5CuVB2dA" target="_huyzegETEd-PJd5CuVB2dA" upperValue="*"/>
    <edge id="_hv_GqgETEd-PJd5CuVB2dA" relType="ASSOCIATION" source="_huyzewETEd-PJd5CuVB2dA" target="_huyzfAETEd-PJd5CuVB2dA">
      <attribute lowerValue="0" upperValue="*">claimedResource</attribute>
    </edge>
    <edge id="_hv_GqgETEd-PJd5CuVB2dA-opposite" lowerValue="0" relType="ASSOCIATION" source="_huyzfAETEd-PJd5CuVB2dA" target="_huyzewETEd-PJd5CuVB2dA" upperValue="*"/>
    <edge id="_hv_GrQETEd-PJd5CuVB2dA" relType="ASSOCIATION" source="_huyzfAETEd-PJd5CuVB2dA" target="_hu8kcAETEd-PJd5CuVB2dA">
      <attribute lowerValue="0" upperValue="*">providingFixedAsset</attribute>
    </edge>
    <edge id="_hv_GrQETEd-PJd5CuVB2dA-opposite" lowerValue="0" relType="ASSOCIATION" source="_hu8kcAETEd-PJd5CuVB2dA" target="_huyzfAETEd-PJd5CuVB2dA" upperValue="*"/>
    <edge id="_hv_GsAETEd-PJd5CuVB2dA" relType="ASSOCIATION" source="_hu8kcQETEd-PJd5CuVB2dA" target="_hu8kcQETEd-PJd5CuVB2dA">
      <attribute lowerValue="0" upperValue="*">moreSpecificBusinessPolicy</attribute>
    </edge>
    <edge id="_hv_GsAETEd-PJd5CuVB2dA-opposite" lowerValue="0" relType="ASSOCIATION" source="_hu8kcQETEd-PJd5CuVB2dA" target="_hu8kcQETEd-PJd5CuVB2dA" upperValue="*"/>
    <edge id="_hv_GswETEd-PJd5CuVB2dA" relType="ASSOCIATION" source="_hu8kcQETEd-PJd5CuVB2dA" target="_hu8kcgETEd-PJd5CuVB2dA">
      <attribute lowerValue="0" upperValue="*">derivedBusinessRule</attribute>
    </edge>
    <edge id="_hv_GswETEd-PJd5CuVB2dA-opposite" lowerValue="0" relType="ASSOCIATION" source="_hu8kcgETEd-PJd5CuVB2dA" target="_hu8kcQETEd-PJd5CuVB2dA" upperValue="*"/>
    <edge id="_hv_GtgETEd-PJd5CuVB2dA" relType="ASSOCIATION" source="_hu8kcgETEd-PJd5CuVB2dA" target="_hu8kcwETEd-PJd5CuVB2dA">
      <attribute lowerValue="0" upperValue="*">effectingTactic</attribute>
    </edge>
    <edge id="_hv_GtgETEd-PJd5CuVB2dA-opposite" lowerValue="0" relType="ASSOCIATION" source="_hu8kcwETEd-PJd5CuVB2dA" target="_hu8kcgETEd-PJd5CuVB2dA" upperValue="*"/>
    <edge id="_hv_GuQETEd-PJd5CuVB2dA" relType="ASSOCIATION" source="_hu8kcwETEd-PJd5CuVB2dA" target="_hu8kdAETEd-PJd5CuVB2dA">
      <attribute lowerValue="0" upperValue="*">implementedStrategy</attribute>
    </edge>
    <edge id="_hv_GuQETEd-PJd5CuVB2dA-opposite" lowerValue="0" relType="ASSOCIATION" source="_hu8kdAETEd-PJd5CuVB2dA" target="_hu8kcwETEd-PJd5CuVB2dA" upperValue="*"/>
    <edge id="_hv_GvAETEd-PJd5CuVB2dA" relType="ASSOCIATION" source="_hu8kdAETEd-PJd5CuVB2dA" target="_hu8kdQETEd-PJd5CuVB2dA">
      <attribute lowerValue="0" upperValue="*">plannedMission</attribute>
    </edge>
    <edge id="_hv_GvAETEd-PJd5CuVB2dA-opposite" lowerValue="0" relType="ASSOCIATION" source="_hu8kdQETEd-PJd5CuVB2dA" target="_hu8kdAETEd-PJd5CuVB2dA" upperValue="*"/>
    <edge id="_hv_GvwETEd-PJd5CuVB2dA" relType="ASSOCIATION" source="_hu8kdQETEd-PJd5CuVB2dA" target="_hu8kdgETEd-PJd5CuVB2dA">
      <attribute lowerValue="0" upperValue="1">operativeVision</attribute>
    </edge>
    <edge id="_hv_GvwETEd-PJd5CuVB2dA-opposite" lowerValue="0" relType="ASSOCIATION" source="_hu8kdgETEd-PJd5CuVB2dA" target="_hu8kdQETEd-PJd5CuVB2dA" upperValue="*"/>
    <edge id="_hv_GwgETEd-PJd5CuVB2dA" relType="ASSOCIATION" source="_hu8kdgETEd-PJd5CuVB2dA" target="_hu8kdwETEd-PJd5CuVB2dA">
      <attribute lowerValue="0" upperValue="*">amplifyingGoal</attribute>
    </edge>
    <edge id="_hv_GwgETEd-PJd5CuVB2dA-opposite" lowerValue="0" relType="ASSOCIATION" source="_hu8kdwETEd-PJd5CuVB2dA" target="_hu8kdgETEd-PJd5CuVB2dA" upperValue="1"/>
    <edge id="_hv_GxQETEd-PJd5CuVB2dA" relType="ASSOCIATION" source="_hu8kdwETEd-PJd5CuVB2dA" target="_hu8keAETEd-PJd5CuVB2dA">
      <attribute lowerValue="0" upperValue="*">quantifyingObjective</attribute>
    </edge>
    <edge id="_hv_GxQETEd-PJd5CuVB2dA-opposite" lowerValue="0" relType="ASSOCIATION" source="_hu8keAETEd-PJd5CuVB2dA" target="_hu8kdwETEd-PJd5CuVB2dA" upperValue="*"/>
    <edge id="_hv_GyAETEd-PJd5CuVB2dA" relType="ASSOCIATION" source="_hu8keQETEd-PJd5CuVB2dA" target="_hu8kegETEd-PJd5CuVB2dA">
      <attribute lowerValue="0" upperValue="*">categorizingInfluencerCategory</attribute>
    </edge>
    <edge id="_hv_GyAETEd-PJd5CuVB2dA-opposite" lowerValue="0" relType="ASSOCIATION" source="_hu8kegETEd-PJd5CuVB2dA" target="_hu8keQETEd-PJd5CuVB2dA" upperValue="*"/>
    <edge id="_hv_GywETEd-PJd5CuVB2dA" relType="ASSOCIATION" source="_hu8keQETEd-PJd5CuVB2dA" target="_hu8kewETEd-PJd5CuVB2dA">
      <attribute lowerValue="0" upperValue="*">sourceInfluencingOrganization</attribute>
    </edge>
    <edge id="_hv_GywETEd-PJd5CuVB2dA-opposite" lowerValue="0" relType="ASSOCIATION" source="_hu8kewETEd-PJd5CuVB2dA" target="_hu8keQETEd-PJd5CuVB2dA" upperValue="*"/>
    <edge id="_hv_GzgETEd-PJd5CuVB2dA" relType="ASSOCIATION" source="_hu8kewETEd-PJd5CuVB2dA" target="_hu8kfAETEd-PJd5CuVB2dA">
      <attribute lowerValue="0" upperValue="*">categorizingOrganizationCategory</attribute>
    </edge>
    <edge id="_hv_GzgETEd-PJd5CuVB2dA-opposite" lowerValue="0" relType="ASSOCIATION" source="_hu8kfAETEd-PJd5CuVB2dA" target="_hu8kewETEd-PJd5CuVB2dA" upperValue="*"/>
    <edge id="_hwSoQAETEd-PJd5CuVB2dA" relType="GENERALIZATION_CHILD_FATHER" source="_huyzcAETEd-PJd5CuVB2dA" target="_huyzcQETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoQAETEd-PJd5CuVB2dA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_huyzcQETEd-PJd5CuVB2dA" target="_huyzcAETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoQQETEd-PJd5CuVB2dA" relType="GENERALIZATION_CHILD_FATHER" source="_huyzcgETEd-PJd5CuVB2dA" target="_huyzcwETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoQQETEd-PJd5CuVB2dA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_huyzcwETEd-PJd5CuVB2dA" target="_huyzcgETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoQgETEd-PJd5CuVB2dA" relType="GENERALIZATION_CHILD_FATHER" source="_huyzcwETEd-PJd5CuVB2dA" target="_huyzcQETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoQgETEd-PJd5CuVB2dA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_huyzcQETEd-PJd5CuVB2dA" target="_huyzcwETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoQwETEd-PJd5CuVB2dA" relType="GENERALIZATION_CHILD_FATHER" source="_huyzdAETEd-PJd5CuVB2dA" target="_huyzcQETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoQwETEd-PJd5CuVB2dA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_huyzcQETEd-PJd5CuVB2dA" target="_huyzdAETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoRAETEd-PJd5CuVB2dA" relType="GENERALIZATION_CHILD_FATHER" source="_huyzdQETEd-PJd5CuVB2dA" target="_huyzcQETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoRAETEd-PJd5CuVB2dA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_huyzcQETEd-PJd5CuVB2dA" target="_huyzdQETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoRQETEd-PJd5CuVB2dA" relType="GENERALIZATION_CHILD_FATHER" source="_huyzdgETEd-PJd5CuVB2dA" target="_huyzcQETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoRQETEd-PJd5CuVB2dA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_huyzcQETEd-PJd5CuVB2dA" target="_huyzdgETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoRgETEd-PJd5CuVB2dA" relType="GENERALIZATION_CHILD_FATHER" source="_huyzdwETEd-PJd5CuVB2dA" target="_hu8kcAETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoRgETEd-PJd5CuVB2dA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_hu8kcAETEd-PJd5CuVB2dA" target="_huyzdwETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoRwETEd-PJd5CuVB2dA" relType="GENERALIZATION_CHILD_FATHER" source="_huyzdwETEd-PJd5CuVB2dA" target="_huyzeAETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoRwETEd-PJd5CuVB2dA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_huyzeAETEd-PJd5CuVB2dA" target="_huyzdwETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoSAETEd-PJd5CuVB2dA" relType="GENERALIZATION_CHILD_FATHER" source="_huyzeAETEd-PJd5CuVB2dA" target="_huyzcQETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoSAETEd-PJd5CuVB2dA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_huyzcQETEd-PJd5CuVB2dA" target="_huyzeAETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoSQETEd-PJd5CuVB2dA" relType="GENERALIZATION_CHILD_FATHER" source="_huyzeQETEd-PJd5CuVB2dA" target="_huyzcwETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoSQETEd-PJd5CuVB2dA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_huyzcwETEd-PJd5CuVB2dA" target="_huyzeQETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoSgETEd-PJd5CuVB2dA" relType="GENERALIZATION_CHILD_FATHER" source="_huyzegETEd-PJd5CuVB2dA" target="_huyzdQETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoSgETEd-PJd5CuVB2dA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_huyzdQETEd-PJd5CuVB2dA" target="_huyzegETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoSwETEd-PJd5CuVB2dA" relType="GENERALIZATION_CHILD_FATHER" source="_huyzewETEd-PJd5CuVB2dA" target="_huyzcQETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoSwETEd-PJd5CuVB2dA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_huyzcQETEd-PJd5CuVB2dA" target="_huyzewETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoTAETEd-PJd5CuVB2dA" relType="GENERALIZATION_CHILD_FATHER" source="_huyzfAETEd-PJd5CuVB2dA" target="_huyzeAETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoTAETEd-PJd5CuVB2dA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_huyzeAETEd-PJd5CuVB2dA" target="_huyzfAETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoTQETEd-PJd5CuVB2dA" relType="GENERALIZATION_CHILD_FATHER" source="_hu8kcAETEd-PJd5CuVB2dA" target="_huyzeAETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoTQETEd-PJd5CuVB2dA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_huyzeAETEd-PJd5CuVB2dA" target="_hu8kcAETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoTgETEd-PJd5CuVB2dA" relType="GENERALIZATION_CHILD_FATHER" source="_hu8kcQETEd-PJd5CuVB2dA" target="_huyzcgETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoTgETEd-PJd5CuVB2dA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_huyzcgETEd-PJd5CuVB2dA" target="_hu8kcQETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoTwETEd-PJd5CuVB2dA" relType="GENERALIZATION_CHILD_FATHER" source="_hu8kcgETEd-PJd5CuVB2dA" target="_huyzcgETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoTwETEd-PJd5CuVB2dA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_huyzcgETEd-PJd5CuVB2dA" target="_hu8kcgETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoUAETEd-PJd5CuVB2dA" relType="GENERALIZATION_CHILD_FATHER" source="_hu8kcwETEd-PJd5CuVB2dA" target="_huyzeQETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoUAETEd-PJd5CuVB2dA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_huyzeQETEd-PJd5CuVB2dA" target="_hu8kcwETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoUQETEd-PJd5CuVB2dA" relType="GENERALIZATION_CHILD_FATHER" source="_hu8kdAETEd-PJd5CuVB2dA" target="_huyzeQETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoUQETEd-PJd5CuVB2dA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_huyzeQETEd-PJd5CuVB2dA" target="_hu8kdAETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoUgETEd-PJd5CuVB2dA" relType="GENERALIZATION_CHILD_FATHER" source="_hu8kdQETEd-PJd5CuVB2dA" target="_huyzcwETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoUgETEd-PJd5CuVB2dA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_huyzcwETEd-PJd5CuVB2dA" target="_hu8kdQETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoUwETEd-PJd5CuVB2dA" relType="GENERALIZATION_CHILD_FATHER" source="_hu8kdgETEd-PJd5CuVB2dA" target="_huyzdQETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoUwETEd-PJd5CuVB2dA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_huyzdQETEd-PJd5CuVB2dA" target="_hu8kdgETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoVAETEd-PJd5CuVB2dA" relType="GENERALIZATION_CHILD_FATHER" source="_hu8kdwETEd-PJd5CuVB2dA" target="_huyzegETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoVAETEd-PJd5CuVB2dA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_huyzegETEd-PJd5CuVB2dA" target="_hu8kdwETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoVQETEd-PJd5CuVB2dA" relType="GENERALIZATION_CHILD_FATHER" source="_hu8keAETEd-PJd5CuVB2dA" target="_huyzegETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoVQETEd-PJd5CuVB2dA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_huyzegETEd-PJd5CuVB2dA" target="_hu8keAETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoVgETEd-PJd5CuVB2dA" relType="GENERALIZATION_CHILD_FATHER" source="_hu8keQETEd-PJd5CuVB2dA" target="_huyzcQETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoVgETEd-PJd5CuVB2dA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_huyzcQETEd-PJd5CuVB2dA" target="_hu8keQETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoVwETEd-PJd5CuVB2dA" relType="GENERALIZATION_CHILD_FATHER" source="_hu8kegETEd-PJd5CuVB2dA" target="_huyzcQETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoVwETEd-PJd5CuVB2dA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_huyzcQETEd-PJd5CuVB2dA" target="_hu8kegETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoWAETEd-PJd5CuVB2dA" relType="GENERALIZATION_CHILD_FATHER" source="_hu8kewETEd-PJd5CuVB2dA" target="_huyzcQETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoWAETEd-PJd5CuVB2dA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_huyzcQETEd-PJd5CuVB2dA" target="_hu8kewETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoWQETEd-PJd5CuVB2dA" relType="GENERALIZATION_CHILD_FATHER" source="_hu8kfAETEd-PJd5CuVB2dA" target="_huyzcQETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoWQETEd-PJd5CuVB2dA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_huyzcQETEd-PJd5CuVB2dA" target="_hu8kfAETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoWgETEd-PJd5CuVB2dA" relType="GENERALIZATION_CHILD_FATHER" source="_hu8kfQETEd-PJd5CuVB2dA" target="_huyzcQETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoWgETEd-PJd5CuVB2dA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_huyzcQETEd-PJd5CuVB2dA" target="_hu8kfQETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoWwETEd-PJd5CuVB2dA" relType="GENERALIZATION_CHILD_FATHER" source="_hu8kfgETEd-PJd5CuVB2dA" target="_hu8keQETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoWwETEd-PJd5CuVB2dA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_hu8keQETEd-PJd5CuVB2dA" target="_hu8kfgETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoXAETEd-PJd5CuVB2dA" relType="GENERALIZATION_CHILD_FATHER" source="_hu8kfwETEd-PJd5CuVB2dA" target="_huyzcQETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoXAETEd-PJd5CuVB2dA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_huyzcQETEd-PJd5CuVB2dA" target="_hu8kfwETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoXQETEd-PJd5CuVB2dA" relType="GENERALIZATION_CHILD_FATHER" source="_hu8kgAETEd-PJd5CuVB2dA" target="_hu8kfQETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoXQETEd-PJd5CuVB2dA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_hu8kfQETEd-PJd5CuVB2dA" target="_hu8kgAETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoXgETEd-PJd5CuVB2dA" relType="GENERALIZATION_CHILD_FATHER" source="_hu8kgQETEd-PJd5CuVB2dA" target="_hu8kfQETEd-PJd5CuVB2dA"/>
    <edge id="_hwSoXgETEd-PJd5CuVB2dA-opposite" relType="GENERALIZATION_FATHER_CHILD" source="_hu8kfQETEd-PJd5CuVB2dA" target="_hu8kgQETEd-PJd5CuVB2dA"/>
  </graph>
</graphml>
