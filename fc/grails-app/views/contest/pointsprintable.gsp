<html>
    <head>
        <style type="text/css">
            @page {
                @top-center {
                    content: "${message(code:contestInstance.contestRule.titleCode)} - ${message(code:'fc.program.printpage')} " counter(page)
                }
                @bottom-center {
                    content: "${message(code:'fc.program.printfoot.left')} - ${message(code:'fc.program.printfoot.right')}"
                }
            }
        </style>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <meta name="layout" content="main" />
        <title>${message(code:contestInstance.contestRule.titleCode)}</title>
    </head>
    <body>
        <div class="box">
            <div class="box boxborder" >
                <h3>${message(code:contestInstance.contestRule.titleCode)}</h3>
                <div class="block" id="forms" >
                    <g:form>
                       	<div style="page-break-inside:avoid">
	                        <table width="100%" border="1" cellspacing="0" cellpadding="2">
	                            <tbody>
	                            	<tr>
	                            		<th colspan="2">${message(code:'fc.planningtest')}</th>
	                            		<th style="color:white">.</th>
	                            	</tr>
		                            <tr>
	                                    <td width="70%">${message(code:'fc.planningtest.directioncorrectgrad')}</td>
		                                <td>${contestInstance.planningTestDirectionCorrectGrad}${message(code:'fc.grad')}</td>
		                                <td width="1%"><g:if test="${contestInstance.planningTestDirectionCorrectGrad != contestInstance.contestRule.ruleValues.planningTestDirectionCorrectGrad}">!</g:if></td>
		                            </tr>
		                            <tr>
	                                    <td width="70%">${message(code:'fc.planningtest.directionpointspergrad')}</td>
		                                <td>${contestInstance.planningTestDirectionPointsPerGrad} ${message(code:'fc.points')}</td>
		                                <td width="1%"><g:if test="${contestInstance.planningTestDirectionPointsPerGrad != contestInstance.contestRule.ruleValues.planningTestDirectionPointsPerGrad}">!</g:if></td>
		                            </tr>
		                            <tr>
	                                    <td width="70%">${message(code:'fc.planningtest.timecorrectsecond')}</td>
		                                <td>${contestInstance.planningTestTimeCorrectSecond}${message(code:'fc.time.s')}</td>
		                                <td width="1%"><g:if test="${contestInstance.planningTestTimeCorrectSecond != contestInstance.contestRule.ruleValues.planningTestTimeCorrectSecond}">!</g:if></td>
		                            </tr>
		                            <tr>
	                                    <td width="70%">${message(code:'fc.planningtest.timepointspersecond')}</td>
		                                <td>${contestInstance.planningTestTimePointsPerSecond} ${message(code:'fc.points')}</td>
		                                <td width="1%"><g:if test="${contestInstance.planningTestTimePointsPerSecond != contestInstance.contestRule.ruleValues.planningTestTimePointsPerSecond}">!</g:if></td>
		                            </tr>
		                            <tr>
	                                    <td width="70%">${message(code:'fc.planningtest.maxpoints')}</td>
		                                <td>${contestInstance.planningTestMaxPoints} ${message(code:'fc.points')}</td>
		                                <td width="1%"><g:if test="${contestInstance.planningTestMaxPoints != contestInstance.contestRule.ruleValues.planningTestMaxPoints}">!</g:if></td>
		                            </tr>
		                            <tr>
	                                    <td width="70%">${message(code:'fc.planningtest.giventolate')}</td>
		                                <td>${contestInstance.planningTestPlanTooLatePoints} ${message(code:'fc.points')}</td>
		                                <td width="1%"><g:if test="${contestInstance.planningTestPlanTooLatePoints != contestInstance.contestRule.ruleValues.planningTestPlanTooLatePoints}">!</g:if></td>
		                            </tr>
		                            <tr>
	                                    <td width="70%">${message(code:'fc.planningtest.exitroomtolate')}</td>
		                                <td>${contestInstance.planningTestExitRoomTooLatePoints} ${message(code:'fc.points')}</td>
		                                <td width="1%"><g:if test="${contestInstance.planningTestExitRoomTooLatePoints != contestInstance.contestRule.ruleValues.planningTestExitRoomTooLatePoints}">!</g:if></td>
		                            </tr>
	                            </tbody>
	                        </table>
	                    </div>
	                    <br/>        
                       	<div style="page-break-inside:avoid">
	                        <table width="100%" border="1" cellspacing="0" cellpadding="2">
	                            <tbody>
		                            <tr>
		                            	<th colspan="2">${message(code:'fc.flighttest')}</th>
	                            		<th style="color:white">.</th>
		                            </tr>
		                            <tr>
	                                    <td width="70%">${message(code:'fc.flighttest.takeoffmissed')}</td>
		                                <td>${contestInstance.flightTestTakeoffMissedPoints} ${message(code:'fc.points')}</td>
		                                <td width="1%"><g:if test="${contestInstance.flightTestTakeoffMissedPoints != contestInstance.contestRule.ruleValues.flightTestTakeoffMissedPoints}">!</g:if></td>
		                            </tr>
		                            <tr>
	                                    <td width="70%">${message(code:'fc.flighttest.cptimecorrectsecond')}</td>
		                                <td>${contestInstance.flightTestCptimeCorrectSecond}${message(code:'fc.time.s')}</td>
		                                <td width="1%"><g:if test="${contestInstance.flightTestCptimeCorrectSecond != contestInstance.contestRule.ruleValues.flightTestCptimeCorrectSecond}">!</g:if></td>
		                            </tr>
		                            <tr>
	                                    <td width="70%">${message(code:'fc.flighttest.cptimepointspersecond')}</td>
		                                <td>${contestInstance.flightTestCptimePointsPerSecond} ${message(code:'fc.points')}</td>
		                                <td width="1%"><g:if test="${contestInstance.flightTestCptimePointsPerSecond != contestInstance.contestRule.ruleValues.flightTestCptimePointsPerSecond}">!</g:if></td>
		                            </tr>
		                            <tr>
	                                    <td width="70%">${message(code:'fc.flighttest.cptimemaxpoints')}</td>
		                                <td>${contestInstance.flightTestCptimeMaxPoints} ${message(code:'fc.points')}</td>
		                                <td width="1%"><g:if test="${contestInstance.flightTestCptimeMaxPoints != contestInstance.contestRule.ruleValues.flightTestCptimeMaxPoints}">!</g:if></td>
		                            </tr>
		                            <tr>
	                                    <td width="70%">${message(code:'fc.flighttest.cpnotfound')}</td>
		                                <td>${contestInstance.flightTestCpNotFoundPoints} ${message(code:'fc.points')}</td>
		                                <td width="1%"><g:if test="${contestInstance.flightTestCpNotFoundPoints != contestInstance.contestRule.ruleValues.flightTestCpNotFoundPoints}">!</g:if></td>
		                            </tr>
		                            <tr>
	                                    <td width="70%">${message(code:'fc.flighttest.procedureturnnotflown')}</td>
		                                <td>${contestInstance.flightTestProcedureTurnNotFlownPoints} ${message(code:'fc.points')}</td>
		                                <td width="1%"><g:if test="${contestInstance.flightTestProcedureTurnNotFlownPoints != contestInstance.contestRule.ruleValues.flightTestProcedureTurnNotFlownPoints}">!</g:if></td>
		                            </tr>
		                            <tr>
	                                    <td width="70%">${message(code:'fc.flighttest.minaltitudemissed')}</td>
		                                <td>${contestInstance.flightTestMinAltitudeMissedPoints} ${message(code:'fc.points')}</td>
		                                <td width="1%"><g:if test="${contestInstance.flightTestMinAltitudeMissedPoints != contestInstance.contestRule.ruleValues.flightTestMinAltitudeMissedPoints}">!</g:if></td>
		                            </tr>
		                            <tr>
	                                    <td width="70%">${message(code:'fc.flighttest.badcoursecorrectsecond')}</td>
		                                <td>${contestInstance.flightTestBadCourseCorrectSecond}${message(code:'fc.time.s')}</td>
		                                <td width="1%"><g:if test="${contestInstance.flightTestBadCourseCorrectSecond != contestInstance.contestRule.ruleValues.flightTestBadCourseCorrectSecond}">!</g:if></td>
		                            </tr>
		                            <tr>
	                                    <td width="70%">${message(code:'fc.flighttest.badcourse')}</td>
		                                <td>${contestInstance.flightTestBadCoursePoints} ${message(code:'fc.points')}</td>
		                                <td width="1%"><g:if test="${contestInstance.flightTestBadCoursePoints != contestInstance.contestRule.ruleValues.flightTestBadCoursePoints}">!</g:if></td>
		                            </tr>
		                            <tr>
	                                    <td width="70%">${message(code:'fc.flighttest.badcoursestartlanding')}</td>
		                                <td>${contestInstance.flightTestBadCourseStartLandingPoints} ${message(code:'fc.points')}</td>
		                                <td width="1%"><g:if test="${contestInstance.flightTestBadCourseStartLandingPoints != contestInstance.contestRule.ruleValues.flightTestBadCourseStartLandingPoints}">!</g:if></td>
		                            </tr>
		                            <tr>
	                                    <td width="70%">${message(code:'fc.flighttest.landingtolate')}</td>
		                                <td>${contestInstance.flightTestLandingToLatePoints} ${message(code:'fc.points')}</td>
		                                <td width="1%"><g:if test="${contestInstance.flightTestLandingToLatePoints != contestInstance.contestRule.ruleValues.flightTestLandingToLatePoints}">!</g:if></td>
		                            </tr>
		                            <tr>
	                                    <td width="70%">${message(code:'fc.flighttest.giventolate')}</td>
		                                <td>${contestInstance.flightTestGivenToLatePoints} ${message(code:'fc.points')}</td>
		                                <td width="1%"><g:if test="${contestInstance.flightTestGivenToLatePoints != contestInstance.contestRule.ruleValues.flightTestGivenToLatePoints}">!</g:if></td>
		                            </tr>
	                            </tbody>
	                        </table>
	                    </div>
	                    <br/>        
                       	<div style="page-break-inside:avoid">
	                        <table width="100%" border="1" cellspacing="0" cellpadding="2">
	                            <tbody>
		                            <tr>
		                            	<th colspan="2">${message(code:'fc.landingtest.landing1')}<g:if test="${contestInstance?.contestRule.precisionFlying}"> (${message(code:'fc.landingtest.landing1.precision')})</g:if></th>
	                            		<th style="color:white">.</th>
		                            </tr>
		                            <tr>
	                                    <td width="70%">${message(code:'fc.landingtest.maxpoints')}</td>
		                                <td>${contestInstance.landingTest1MaxPoints} ${message(code:'fc.points')}</td>
		                                <td width="1%"><g:if test="${contestInstance.landingTest1MaxPoints != contestInstance.contestRule.ruleValues.landingTest1MaxPoints}">!</g:if></td>
		                            </tr>
		                            <tr>
	                                    <td width="70%">${message(code:'fc.landingtest.nolanding')}</td>
		                                <td>${contestInstance.landingTest1NoLandingPoints} ${message(code:'fc.points')}</td>
		                                <td width="1%"><g:if test="${contestInstance.landingTest1NoLandingPoints != contestInstance.contestRule.ruleValues.landingTest1NoLandingPoints}">!</g:if></td>
		                            </tr>
		                            <tr>
	                                    <td width="70%">${message(code:'fc.landingtest.outsidelanding')}</td>
		                                <td>${contestInstance.landingTest1OutsideLandingPoints} ${message(code:'fc.points')}</td>
		                                <td width="1%"><g:if test="${contestInstance.landingTest1OutsideLandingPoints != contestInstance.contestRule.ruleValues.landingTest1OutsideLandingPoints}">!</g:if></td>
		                            </tr>
		                            <tr>
	                                    <td width="70%">${message(code:'fc.landingtest.rollingoutside')}</td>
		                                <td>${contestInstance.landingTest1RollingOutsidePoints} ${message(code:'fc.points')}</td>
		                                <td width="1%"><g:if test="${contestInstance.landingTest1RollingOutsidePoints != contestInstance.contestRule.ruleValues.landingTest1RollingOutsidePoints}">!</g:if></td>
		                            </tr>
		                            <tr>
	                                    <td width="70%">${message(code:'fc.landingtest.powerinbox')}</td>
		                                <td>${contestInstance.landingTest1PowerInBoxPoints} ${message(code:'fc.points')}</td>
		                                <td width="1%"><g:if test="${contestInstance.landingTest1PowerInBoxPoints != contestInstance.contestRule.ruleValues.landingTest1PowerInBoxPoints}">!</g:if></td>
		                            </tr>
		                            <tr>
	                                    <td width="70%">${message(code:'fc.landingtest.goaroundwithouttouching')}</td>
		                                <td>${contestInstance.landingTest1GoAroundWithoutTouchingPoints} ${message(code:'fc.points')}</td>
		                                <td width="1%"><g:if test="${contestInstance.landingTest1GoAroundWithoutTouchingPoints != contestInstance.contestRule.ruleValues.landingTest1GoAroundWithoutTouchingPoints}">!</g:if></td>
		                            </tr>
		                            <tr>
	                                    <td width="70%">${message(code:'fc.landingtest.goaroundinsteadstop')}</td>
		                                <td>${contestInstance.landingTest1GoAroundInsteadStopPoints} ${message(code:'fc.points')}</td>
		                                <td width="1%"><g:if test="${contestInstance.landingTest1GoAroundInsteadStopPoints != contestInstance.contestRule.ruleValues.landingTest1GoAroundInsteadStopPoints}">!</g:if></td>
		                            </tr>
		                            <tr>
	                                    <td width="70%">${message(code:'fc.landingtest.abnormallanding')}</td>
		                                <td>${contestInstance.landingTest1AbnormalLandingPoints} ${message(code:'fc.points')}</td>
		                                <td width="1%"><g:if test="${contestInstance.landingTest1AbnormalLandingPoints != contestInstance.contestRule.ruleValues.landingTest1AbnormalLandingPoints}">!</g:if></td>
		                            </tr>
		                            <tr>
	                                    <td colspan="2">${message(code:'fc.landingtest.penaltycalculator')}:<br/>${contestInstance.landingTest1PenaltyCalculator}</td>
		                                <td width="1%"><g:if test="${contestInstance.landingTest1PenaltyCalculator != contestInstance.contestRule.ruleValues.landingTest1PenaltyCalculator}">!</g:if></td>
		                            </tr>
	                            </tbody>
	                        </table>
	                    </div>
	                    <br/>        
                       	<div style="page-break-inside:avoid">
	                        <table width="100%" border="1" cellspacing="0" cellpadding="2">
	                            <tbody>
		                            <tr>
		                            	<th colspan="2">${message(code:'fc.landingtest.landing2')}<g:if test="${contestInstance?.contestRule.precisionFlying}"> (${message(code:'fc.landingtest.landing2.precision')})</g:if></th>
	                            		<th style="color:white">.</th>
		                            </tr>
		                            <tr>
	                                    <td width="70%">${message(code:'fc.landingtest.maxpoints')}</td>
		                                <td>${contestInstance.landingTest2MaxPoints} ${message(code:'fc.points')}</td>
		                                <td width="1%"><g:if test="${contestInstance.landingTest2MaxPoints != contestInstance.contestRule.ruleValues.landingTest2MaxPoints}">!</g:if></td>
		                            </tr>
		                            <tr>
	                                    <td width="70%">${message(code:'fc.landingtest.nolanding')}</td>
		                                <td>${contestInstance.landingTest2NoLandingPoints} ${message(code:'fc.points')}</td>
		                                <td width="1%"><g:if test="${contestInstance.landingTest2NoLandingPoints != contestInstance.contestRule.ruleValues.landingTest2NoLandingPoints}">!</g:if></td>
		                            </tr>
		                            <tr>
	                                    <td width="70%">${message(code:'fc.landingtest.outsidelanding')}</td>
		                                <td>${contestInstance.landingTest2OutsideLandingPoints} ${message(code:'fc.points')}</td>
		                                <td width="1%"><g:if test="${contestInstance.landingTest2OutsideLandingPoints != contestInstance.contestRule.ruleValues.landingTest2OutsideLandingPoints}">!</g:if></td>
		                            </tr>
		                            <tr>
	                                    <td width="70%">${message(code:'fc.landingtest.rollingoutside')}</td>
		                                <td>${contestInstance.landingTest2RollingOutsidePoints} ${message(code:'fc.points')}</td>
		                                <td width="1%"><g:if test="${contestInstance.landingTest2RollingOutsidePoints != contestInstance.contestRule.ruleValues.landingTest2RollingOutsidePoints}">!</g:if></td>
		                            </tr>
		                            <tr>
	                                    <td width="70%">${message(code:'fc.landingtest.powerinbox')}</td>
		                                <td>${contestInstance.landingTest2PowerInBoxPoints} ${message(code:'fc.points')}</td>
		                                <td width="1%"><g:if test="${contestInstance.landingTest2PowerInBoxPoints != contestInstance.contestRule.ruleValues.landingTest2PowerInBoxPoints}">!</g:if></td>
		                            </tr>
		                            <tr>
	                                    <td width="70%">${message(code:'fc.landingtest.goaroundwithouttouching')}</td>
		                                <td>${contestInstance.landingTest2GoAroundWithoutTouchingPoints} ${message(code:'fc.points')}</td>
		                                <td width="1%"><g:if test="${contestInstance.landingTest2GoAroundWithoutTouchingPoints != contestInstance.contestRule.ruleValues.landingTest2GoAroundWithoutTouchingPoints}">!</g:if></td>
		                            </tr>
		                            <tr>
	                                    <td width="70%">${message(code:'fc.landingtest.goaroundinsteadstop')}</td>
		                                <td>${contestInstance.landingTest2GoAroundInsteadStopPoints} ${message(code:'fc.points')}</td>
		                                <td width="1%"><g:if test="${contestInstance.landingTest2GoAroundInsteadStopPoints != contestInstance.contestRule.ruleValues.landingTest2GoAroundInsteadStopPoints}">!</g:if></td>
		                            </tr>
		                            <tr>
	                                    <td width="70%">${message(code:'fc.landingtest.abnormallanding')}</td>
		                                <td>${contestInstance.landingTest2AbnormalLandingPoints} ${message(code:'fc.points')}</td>
		                                <td width="1%"><g:if test="${contestInstance.landingTest2AbnormalLandingPoints != contestInstance.contestRule.ruleValues.landingTest2AbnormalLandingPoints}">!</g:if></td>
		                            </tr>
		                            <g:if test="${contestInstance?.contestRule.precisionFlying}">
			                            <tr>
		                                    <td width="70%">${message(code:'fc.landingtest.powerinair')}</td>
			                                <td>${contestInstance.landingTest2PowerInAirPoints} ${message(code:'fc.points')}</td>
			                                <td width="1%"><g:if test="${contestInstance.landingTest2PowerInAirPoints != contestInstance.contestRule.ruleValues.landingTest2PowerInAirPoints}">!</g:if></td>
			                            </tr>
		                            </g:if>
		                            <tr>
	                                    <td colspan="2">${message(code:'fc.landingtest.penaltycalculator')}:<br/>${contestInstance.landingTest2PenaltyCalculator}</td>
		                                <td width="1%"><g:if test="${contestInstance.landingTest2PenaltyCalculator != contestInstance.contestRule.ruleValues.landingTest2PenaltyCalculator}">!</g:if></td>
		                            </tr>
	                            </tbody>
	                        </table>
	                    </div>
	                    <br/>        
                       	<div style="page-break-inside:avoid">
	                        <table width="100%" border="1" cellspacing="0" cellpadding="2">
	                            <tbody>
		                            <tr>
		                            	<th colspan="2">${message(code:'fc.landingtest.landing3')}<g:if test="${contestInstance?.contestRule.precisionFlying}"> (${message(code:'fc.landingtest.landing3.precision')})</g:if></th>
	                            		<th style="color:white">.</th>
		                            </tr>
		                            <tr>
	                                    <td width="70%">${message(code:'fc.landingtest.maxpoints')}</td>
		                                <td>${contestInstance.landingTest3MaxPoints} ${message(code:'fc.points')}</td>
		                                <td width="1%"><g:if test="${contestInstance.landingTest3MaxPoints != contestInstance.contestRule.ruleValues.landingTest3MaxPoints}">!</g:if></td>
		                            </tr>
		                            <tr>
	                                    <td width="70%">${message(code:'fc.landingtest.nolanding')}</td>
		                                <td>${contestInstance.landingTest3NoLandingPoints} ${message(code:'fc.points')}</td>
		                                <td width="1%"><g:if test="${contestInstance.landingTest3NoLandingPoints != contestInstance.contestRule.ruleValues.landingTest3NoLandingPoints}">!</g:if></td>
		                            </tr>
		                            <tr>
	                                    <td width="70%">${message(code:'fc.landingtest.outsidelanding')}</td>
		                                <td>${contestInstance.landingTest3OutsideLandingPoints} ${message(code:'fc.points')}</td>
		                                <td width="1%"><g:if test="${contestInstance.landingTest3OutsideLandingPoints != contestInstance.contestRule.ruleValues.landingTest3OutsideLandingPoints}">!</g:if></td>
		                            </tr>
		                            <tr>
	                                    <td width="70%">${message(code:'fc.landingtest.rollingoutside')}</td>
		                                <td>${contestInstance.landingTest3RollingOutsidePoints} ${message(code:'fc.points')}</td>
		                                <td width="1%"><g:if test="${contestInstance.landingTest3RollingOutsidePoints != contestInstance.contestRule.ruleValues.landingTest3RollingOutsidePoints}">!</g:if></td>
		                            </tr>
		                            <tr>
	                                    <td width="70%">${message(code:'fc.landingtest.powerinbox')}</td>
		                                <td>${contestInstance.landingTest3PowerInBoxPoints} ${message(code:'fc.points')}</td>
		                                <td width="1%"><g:if test="${contestInstance.landingTest3PowerInBoxPoints != contestInstance.contestRule.ruleValues.landingTest3PowerInBoxPoints}">!</g:if></td>
		                            </tr>
		                            <tr>
	                                    <td width="70%">${message(code:'fc.landingtest.goaroundwithouttouching')}</td>
		                                <td>${contestInstance.landingTest3GoAroundWithoutTouchingPoints} ${message(code:'fc.points')}</td>
		                                <td width="1%"><g:if test="${contestInstance.landingTest3GoAroundWithoutTouchingPoints != contestInstance.contestRule.ruleValues.landingTest3GoAroundWithoutTouchingPoints}">!</g:if></td>
		                            </tr>
		                            <tr>
	                                    <td width="70%">${message(code:'fc.landingtest.goaroundinsteadstop')}</td>
		                                <td>${contestInstance.landingTest3GoAroundInsteadStopPoints} ${message(code:'fc.points')}</td>
		                                <td width="1%"><g:if test="${contestInstance.landingTest3GoAroundInsteadStopPoints != contestInstance.contestRule.ruleValues.landingTest3GoAroundInsteadStopPoints}">!</g:if></td>
		                            </tr>
		                            <tr>
	                                    <td width="70%">${message(code:'fc.landingtest.abnormallanding')}</td>
		                                <td>${contestInstance.landingTest3AbnormalLandingPoints} ${message(code:'fc.points')}</td>
		                                <td width="1%"><g:if test="${contestInstance.landingTest3AbnormalLandingPoints != contestInstance.contestRule.ruleValues.landingTest3AbnormalLandingPoints}">!</g:if></td>
		                            </tr>
		                            <g:if test="${contestInstance?.contestRule.precisionFlying}">
			                            <tr>
		                                    <td width="70%">${message(code:'fc.landingtest.powerinair')}</td>
			                                <td>${contestInstance.landingTest3PowerInAirPoints} ${message(code:'fc.points')}</td>
			                                <td width="1%"><g:if test="${contestInstance.landingTest3PowerInAirPoints != contestInstance.contestRule.ruleValues.landingTest3PowerInAirPoints}">!</g:if></td>
			                            </tr>
			                            <tr>
		                                    <td width="70%">${message(code:'fc.landingtest.flapsinair')}</td>
			                                <td>${contestInstance.landingTest3FlapsInAirPoints} ${message(code:'fc.points')}</td>
			                                <td width="1%"><g:if test="${contestInstance.landingTest3FlapsInAirPoints != contestInstance.contestRule.ruleValues.landingTest3FlapsInAirPoints}">!</g:if></td>
			                            </tr>
			                        </g:if>
		                            <tr>
	                                    <td colspan="2">${message(code:'fc.landingtest.penaltycalculator')}:<br/>${contestInstance.landingTest3PenaltyCalculator}</td>
		                                <td width="1%"><g:if test="${contestInstance.landingTest3PenaltyCalculator != contestInstance.contestRule.ruleValues.landingTest3PenaltyCalculator}">!</g:if></td>
		                            </tr>
	                            </tbody>
	                        </table>
	                    </div>
	                    <br/>        
                       	<div style="page-break-inside:avoid">
	                        <table width="100%" border="1" cellspacing="0" cellpadding="2">
	                            <tbody>
		                            <tr>
		                            	<th colspan="2">${message(code:'fc.landingtest.landing4')}<g:if test="${contestInstance?.contestRule.precisionFlying}"> (${message(code:'fc.landingtest.landing4.precision')})</g:if></th>
	                            		<th style="color:white">.</th>
		                            </tr>
		                            <tr>
	                                    <td width="70%">${message(code:'fc.landingtest.maxpoints')}</td>
		                                <td>${contestInstance.landingTest4MaxPoints} ${message(code:'fc.points')}</td>
		                                <td width="1%"><g:if test="${contestInstance.landingTest4MaxPoints != contestInstance.contestRule.ruleValues.landingTest4MaxPoints}">!</g:if></td>
		                            </tr>
		                            <tr>
	                                    <td width="70%">${message(code:'fc.landingtest.nolanding')}</td>
		                                <td>${contestInstance.landingTest4NoLandingPoints} ${message(code:'fc.points')}</td>
		                                <td width="1%"><g:if test="${contestInstance.landingTest4NoLandingPoints != contestInstance.contestRule.ruleValues.landingTest4NoLandingPoints}">!</g:if></td>
		                            </tr>
		                            <tr>
	                                    <td width="70%">${message(code:'fc.landingtest.outsidelanding')}</td>
		                                <td>${contestInstance.landingTest4OutsideLandingPoints} ${message(code:'fc.points')}</td>
		                                <td width="1%"><g:if test="${contestInstance.landingTest4OutsideLandingPoints != contestInstance.contestRule.ruleValues.landingTest4OutsideLandingPoints}">!</g:if></td>
		                            </tr>
		                            <tr>
	                                    <td width="70%">${message(code:'fc.landingtest.rollingoutside')}</td>
		                                <td>${contestInstance.landingTest4RollingOutsidePoints} ${message(code:'fc.points')}</td>
		                                <td width="1%"><g:if test="${contestInstance.landingTest4RollingOutsidePoints != contestInstance.contestRule.ruleValues.landingTest4RollingOutsidePoints}">!</g:if></td>
		                            </tr>
		                            <tr>
	                                    <td width="70%">${message(code:'fc.landingtest.powerinbox')}</td>
		                                <td>${contestInstance.landingTest4PowerInBoxPoints} ${message(code:'fc.points')}</td>
		                                <td width="1%"><g:if test="${contestInstance.landingTest4PowerInBoxPoints != contestInstance.contestRule.ruleValues.landingTest4PowerInBoxPoints}">!</g:if></td>
		                            </tr>
		                            <tr>
	                                    <td width="70%">${message(code:'fc.landingtest.goaroundwithouttouching')}</td>
		                                <td>${contestInstance.landingTest4GoAroundWithoutTouchingPoints} ${message(code:'fc.points')}</td>
		                                <td width="1%"><g:if test="${contestInstance.landingTest4GoAroundWithoutTouchingPoints != contestInstance.contestRule.ruleValues.landingTest4GoAroundWithoutTouchingPoints}">!</g:if></td>
		                            </tr>
		                            <tr>
	                                    <td width="70%">${message(code:'fc.landingtest.goaroundinsteadstop')}</td>
		                                <td>${contestInstance.landingTest4GoAroundInsteadStopPoints} ${message(code:'fc.points')}</td>
		                                <td width="1%"><g:if test="${contestInstance.landingTest4GoAroundInsteadStopPoints != contestInstance.contestRule.ruleValues.landingTest4GoAroundInsteadStopPoints}">!</g:if></td>
		                            </tr>
		                            <tr>
	                                    <td width="70%">${message(code:'fc.landingtest.abnormallanding')}</td>
		                                <td>${contestInstance.landingTest4AbnormalLandingPoints} ${message(code:'fc.points')}</td>
		                                <td width="1%"><g:if test="${contestInstance.landingTest4AbnormalLandingPoints != contestInstance.contestRule.ruleValues.landingTest4AbnormalLandingPoints}">!</g:if></td>
		                            </tr>
		                            <g:if test="${contestInstance?.contestRule.precisionFlying}">
			                            <tr>
		                                    <td width="70%">${message(code:'fc.landingtest.touchingobstacle')}</td>
			                                <td>${contestInstance.landingTest4TouchingObstaclePoints} ${message(code:'fc.points')}</td>
			                                <td width="1%"><g:if test="${contestInstance.landingTest4TouchingObstaclePoints != contestInstance.contestRule.ruleValues.landingTest4TouchingObstaclePoints}">!</g:if></td>
			                            </tr>
			                        </g:if>
		                            <tr>
	                                    <td colspan="2">${message(code:'fc.landingtest.penaltycalculator')}:<br/>${contestInstance.landingTest4PenaltyCalculator}</td>
		                                <td width="1%"><g:if test="${contestInstance.landingTest4PenaltyCalculator != contestInstance.contestRule.ruleValues.landingTest4PenaltyCalculator}">!</g:if></td>
		                            </tr>
	                            </tbody>
	                        </table>
	                    </div>
                    </g:form>
                </div>
            </div>
        </div>
    </body>
</html>