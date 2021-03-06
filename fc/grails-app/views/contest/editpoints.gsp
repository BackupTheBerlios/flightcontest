<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>${message(code:'fc.contestrule.points.edit')}</title>
    </head>
    <body>
        <g:mainnav link="${createLink(controller:'contest')}" />
        <div class="box">
            <g:viewmsg msg="${flash.message}" error="${flash.error}"/>
            <div class="box boxborder" >
                <h2>${message(code:'fc.contestrule.points.edit')}</h2>
                <g:hasErrors bean="${contestInstance}">
                    <div class="errors">
                        <g:renderErrors bean="${contestInstance}" />
                    </div>
                </g:hasErrors>
                <div class="block" id="forms" >
                    <g:form method="post" params="${['contestReturnAction':contestReturnAction,'contestReturnController':contestReturnController,'contestReturnID':contestReturnID]}" >
                        <table>
                            <tbody>
	                        	<tr>
	                        		<td>${message(code:contestInstance.contestRule.titleCode)}</td>
	                        	</tr>
	                        </tbody>
                        </table>
                        <p class="warning">${message(code:'fc.contest.recalculatepoints')}</p>
                        <fieldset>
                            <legend>${message(code:'fc.planningtest')}</legend>
                            <p/>
	                        <fieldset>
	                            <p>
	                                <label>${message(code:'fc.planningtest.directioncorrectgrad')}* [${message(code:'fc.grad')}]:</label>
	                                <br/>
	                                <input type="text" id="planningTestDirectionCorrectGrad" name="planningTestDirectionCorrectGrad" value="${fieldValue(bean:contestInstance,field:'planningTestDirectionCorrectGrad')}" tabIndex="1"/>
	                                <g:if test="${contestInstance.planningTestDirectionCorrectGrad != contestInstance.contestRule.ruleValues.planningTestDirectionCorrectGrad}">!</g:if>
	                            </p>
	                            <p>
	                                <label>${message(code:'fc.planningtest.directionpointspergrad')}* [${message(code:'fc.points')}]:</label>
	                                <br/>
	                                <input type="text" id="planningTestDirectionPointsPerGrad" name="planningTestDirectionPointsPerGrad" value="${fieldValue(bean:contestInstance,field:'planningTestDirectionPointsPerGrad')}" tabIndex="2"/>
	                                <g:if test="${contestInstance.planningTestDirectionPointsPerGrad != contestInstance.contestRule.ruleValues.planningTestDirectionPointsPerGrad}">!</g:if>
	                            </p>
	                        </fieldset>
	                        <fieldset>
	                            <p>
	                                <label>${message(code:'fc.planningtest.timecorrectsecond')}* [${message(code:'fc.time.s')}]:</label>
	                                <br/>
	                                <input type="text" id="planningTestTimeCorrectSecond" name="planningTestTimeCorrectSecond" value="${fieldValue(bean:contestInstance,field:'planningTestTimeCorrectSecond')}" tabIndex="3"/>
	                                <g:if test="${contestInstance.planningTestTimeCorrectSecond != contestInstance.contestRule.ruleValues.planningTestTimeCorrectSecond}">!</g:if>
	                            </p>
	                            <p>
	                                <label>${message(code:'fc.planningtest.timepointspersecond')}* [${message(code:'fc.points')}]:</label>
	                                <br/>
	                                <input type="text" id="planningTestTimePointsPerSecond" name="planningTestTimePointsPerSecond" value="${fieldValue(bean:contestInstance,field:'planningTestTimePointsPerSecond')}" tabIndex="4"/>
	                                <g:if test="${contestInstance.planningTestTimePointsPerSecond != contestInstance.contestRule.ruleValues.planningTestTimePointsPerSecond}">!</g:if>
	                            </p>
	                        </fieldset>
	                        <fieldset>
	                            <p>
	                                <label>${message(code:'fc.planningtest.maxpoints')}* [${message(code:'fc.points')}]:</label>
	                                <br/>
	                                <input type="text" id="planningTestMaxPoints" name="planningTestMaxPoints" value="${fieldValue(bean:contestInstance,field:'planningTestMaxPoints')}" tabIndex="5"/>
	                                <g:if test="${contestInstance.planningTestMaxPoints != contestInstance.contestRule.ruleValues.planningTestMaxPoints}">!</g:if>
	                            </p>
	                            <p>
	                                <label>${message(code:'fc.planningtest.giventolate')}* [${message(code:'fc.points')}]:</label>
	                                <br/>
	                                <input type="text" id="planningTestPlanTooLatePoints" name="planningTestPlanTooLatePoints" value="${fieldValue(bean:contestInstance,field:'planningTestPlanTooLatePoints')}" tabIndex="6"/>
	                                <g:if test="${contestInstance.planningTestPlanTooLatePoints != contestInstance.contestRule.ruleValues.planningTestPlanTooLatePoints}">!</g:if>
	                            </p>
	                            <p>
	                                <label>${message(code:'fc.planningtest.exitroomtolate')}* [${message(code:'fc.points')}]:</label>
	                                <br/>
	                                <input type="text" id="planningTestExitRoomTooLatePoints" name="planningTestExitRoomTooLatePoints" value="${fieldValue(bean:contestInstance,field:'planningTestExitRoomTooLatePoints')}" tabIndex="7"/>
	                                <g:if test="${contestInstance.planningTestExitRoomTooLatePoints != contestInstance.contestRule.ruleValues.planningTestExitRoomTooLatePoints}">!</g:if>
	                            </p>
	                        </fieldset>
                        </fieldset>
                        <fieldset>
                            <legend>${message(code:'fc.flighttest')}</legend>
                            <p/>
	                        <fieldset>
	                            <p>
	                                <label>${message(code:'fc.flighttest.takeoffmissed')}* [${message(code:'fc.points')}]:</label>
	                                <br/>
	                                <input type="text" id="flightTestTakeoffMissedPoints" name="flightTestTakeoffMissedPoints" value="${fieldValue(bean:contestInstance,field:'flightTestTakeoffMissedPoints')}" tabIndex="8"/>
	                                <g:if test="${contestInstance.flightTestTakeoffMissedPoints != contestInstance.contestRule.ruleValues.flightTestTakeoffMissedPoints}">!</g:if>
	                            </p>
                        	</fieldset>
	                        <fieldset>
	                            <p>
	                                <label>${message(code:'fc.flighttest.cptimecorrectsecond')}* [${message(code:'fc.time.s')}]:</label>
	                                <br/>
	                                <input type="text" id="flightTestCptimeCorrectSecond" name="flightTestCptimeCorrectSecond" value="${fieldValue(bean:contestInstance,field:'flightTestCptimeCorrectSecond')}" tabIndex="9"/>
	                                <g:if test="${contestInstance.flightTestCptimeCorrectSecond != contestInstance.contestRule.ruleValues.flightTestCptimeCorrectSecond}">!</g:if>
	                            </p>
	                            <p>
	                                <label>${message(code:'fc.flighttest.cptimepointspersecond')}* [${message(code:'fc.points')}]:</label>
	                                <br/>
	                                <input type="text" id="flightTestCptimePointsPerSecond" name="flightTestCptimePointsPerSecond" value="${fieldValue(bean:contestInstance,field:'flightTestCptimePointsPerSecond')}" tabIndex="10"/>
	                                <g:if test="${contestInstance.flightTestCptimePointsPerSecond != contestInstance.contestRule.ruleValues.flightTestCptimePointsPerSecond}">!</g:if>
	                            </p>
	                            <p>
	                                <label>${message(code:'fc.flighttest.cptimemaxpoints')}* [${message(code:'fc.points')}]:</label>
	                                <br/>
	                                <input type="text" id="flightTestCptimeMaxPoints" name="flightTestCptimeMaxPoints" value="${fieldValue(bean:contestInstance,field:'flightTestCptimeMaxPoints')}" tabIndex="11"/>
	                                <g:if test="${contestInstance.flightTestCptimeMaxPoints != contestInstance.contestRule.ruleValues.flightTestCptimeMaxPoints}">!</g:if>
	                            </p>
	                            <p>
	                                <label>${message(code:'fc.flighttest.cpnotfound')}* [${message(code:'fc.points')}]:</label>
	                                <br/>
	                                <input type="text" id="flightTestCpNotFoundPoints" name="flightTestCpNotFoundPoints" value="${fieldValue(bean:contestInstance,field:'flightTestCpNotFoundPoints')}" tabIndex="12"/>
	                                <g:if test="${contestInstance.flightTestCpNotFoundPoints != contestInstance.contestRule.ruleValues.flightTestCpNotFoundPoints}">!</g:if>
	                            </p>
                        	</fieldset>
	                        <fieldset>
	                            <p>
	                                <label>${message(code:'fc.flighttest.procedureturnnotflown')}* [${message(code:'fc.points')}]:</label>
	                                <br/>
	                                <input type="text" id="flightTestProcedureTurnNotFlownPoints" name="flightTestProcedureTurnNotFlownPoints" value="${fieldValue(bean:contestInstance,field:'flightTestProcedureTurnNotFlownPoints')}" tabIndex="13"/>
	                                <g:if test="${contestInstance.flightTestProcedureTurnNotFlownPoints != contestInstance.contestRule.ruleValues.flightTestProcedureTurnNotFlownPoints}">!</g:if>
	                            </p>
                        	</fieldset>
	                        <fieldset>
	                            <p>
	                                <label>${message(code:'fc.flighttest.minaltitudemissed')}* [${message(code:'fc.points')}]:</label>
	                                <br/>
	                                <input type="text" id="flightTestMinAltitudeMissedPoints" name="flightTestMinAltitudeMissedPoints" value="${fieldValue(bean:contestInstance,field:'flightTestMinAltitudeMissedPoints')}" tabIndex="14"/>
	                                <g:if test="${contestInstance.flightTestMinAltitudeMissedPoints != contestInstance.contestRule.ruleValues.flightTestMinAltitudeMissedPoints}">!</g:if>
	                            </p>
                        	</fieldset>
	                        <fieldset>
	                            <p>
	                                <label>${message(code:'fc.flighttest.badcoursecorrectsecond')}* [${message(code:'fc.time.s')}]:</label>
	                                <br/>
	                                <input type="text" id="flightTestBadCourseCorrectSecond" name="flightTestBadCourseCorrectSecond" value="${fieldValue(bean:contestInstance,field:'flightTestBadCourseCorrectSecond')}" tabIndex="15"/>
	                                <g:if test="${contestInstance.flightTestBadCourseCorrectSecond != contestInstance.contestRule.ruleValues.flightTestBadCourseCorrectSecond}">!</g:if>
	                            </p>
	                            <p>
	                                <label>${message(code:'fc.flighttest.badcourse')}* [${message(code:'fc.points')}]:</label>
	                                <br/>
	                                <input type="text" id="flightTestBadCoursePoints" name="flightTestBadCoursePoints" value="${fieldValue(bean:contestInstance,field:'flightTestBadCoursePoints')}" tabIndex="16"/>
	                                <g:if test="${contestInstance.flightTestBadCoursePoints != contestInstance.contestRule.ruleValues.flightTestBadCoursePoints}">!</g:if>
	                            </p>
	                            <p>
	                                <label>${message(code:'fc.flighttest.badcoursestartlanding')}* [${message(code:'fc.points')}]:</label>
	                                <br/>
	                                <input type="text" id="flightTestBadCourseStartLandingPoints" name="flightTestBadCourseStartLandingPoints" value="${fieldValue(bean:contestInstance,field:'flightTestBadCourseStartLandingPoints')}" tabIndex="17"/>
	                                <g:if test="${contestInstance.flightTestBadCourseStartLandingPoints != contestInstance.contestRule.ruleValues.flightTestBadCourseStartLandingPoints}">!</g:if>
	                            </p>
	                            <p>
	                                <label>${message(code:'fc.flighttest.landingtolate')}* [${message(code:'fc.points')}]:</label>
	                                <br/>
	                                <input type="text" id="flightTestLandingToLatePoints" name="flightTestLandingToLatePoints" value="${fieldValue(bean:contestInstance,field:'flightTestLandingToLatePoints')}" tabIndex="18"/>
	                                <g:if test="${contestInstance.flightTestLandingToLatePoints != contestInstance.contestRule.ruleValues.flightTestLandingToLatePoints}">!</g:if>
	                            </p>
                        	</fieldset>
	                        <fieldset>
	                            <p>
	                                <label>${message(code:'fc.flighttest.giventolate')}* [${message(code:'fc.points')}]:</label>
	                                <br/>
	                                <input type="text" id="flightTestGivenToLatePoints" name="flightTestGivenToLatePoints" value="${fieldValue(bean:contestInstance,field:'flightTestGivenToLatePoints')}" tabIndex="19"/>
	                                <g:if test="${contestInstance.flightTestGivenToLatePoints != contestInstance.contestRule.ruleValues.flightTestGivenToLatePoints}">!</g:if>
	                            </p>
	                        </fieldset>
                        </fieldset>
                        <fieldset>
                            <legend>${message(code:'fc.landingtest.landing1')}<g:if test="${contestInstance?.contestRule.precisionFlying}"> (${message(code:'fc.landingtest.landing1.precision')})</g:if></legend>
                            <p>
                                <label>${message(code:'fc.landingtest.maxpoints')}* [${message(code:'fc.points')}]:</label>
                                <br/>
                                <input type="text" id="landingTest1MaxPoints" name="landingTest1MaxPoints" value="${fieldValue(bean:contestInstance,field:'landingTest1MaxPoints')}" tabIndex="20"/>
                                <g:if test="${contestInstance.landingTest1MaxPoints != contestInstance.contestRule.ruleValues.landingTest1MaxPoints}">!</g:if>
                            </p>
                            <p>
                                <label>${message(code:'fc.landingtest.nolanding')}* [${message(code:'fc.points')}]:</label>
                                <br/>
                                <input type="text" id="landingTest1NoLandingPoints" name="landingTest1NoLandingPoints" value="${fieldValue(bean:contestInstance,field:'landingTest1NoLandingPoints')}" tabIndex="21"/>
                                <g:if test="${contestInstance.landingTest1NoLandingPoints != contestInstance.contestRule.ruleValues.landingTest1NoLandingPoints}">!</g:if>
                            </p>
                            <p>
                                <label>${message(code:'fc.landingtest.outsidelanding')}* [${message(code:'fc.points')}]:</label>
                                <br/>
                                <input type="text" id="landingTest1OutsideLandingPoints" name="landingTest1OutsideLandingPoints" value="${fieldValue(bean:contestInstance,field:'landingTest1OutsideLandingPoints')}" tabIndex="22"/>
                                <g:if test="${contestInstance.landingTest1OutsideLandingPoints != contestInstance.contestRule.ruleValues.landingTest1OutsideLandingPoints}">!</g:if>
                            </p>
                            <p>
                                <label>${message(code:'fc.landingtest.rollingoutside')}* [${message(code:'fc.points')}]:</label>
                                <br/>
                                <input type="text" id="landingTest1RollingOutsidePoints" name="landingTest1RollingOutsidePoints" value="${fieldValue(bean:contestInstance,field:'landingTest1RollingOutsidePoints')}" tabIndex="23"/>
                                <g:if test="${contestInstance.landingTest1RollingOutsidePoints != contestInstance.contestRule.ruleValues.landingTest1RollingOutsidePoints}">!</g:if>
                            </p>
                            <p>
                                <label>${message(code:'fc.landingtest.powerinbox')}* [${message(code:'fc.points')}]:</label>
                                <br/>
                                <input type="text" id="landingTest1PowerInBoxPoints" name="landingTest1PowerInBoxPoints" value="${fieldValue(bean:contestInstance,field:'landingTest1PowerInBoxPoints')}" tabIndex="24"/>
                                <g:if test="${contestInstance.landingTest1PowerInBoxPoints != contestInstance.contestRule.ruleValues.landingTest1PowerInBoxPoints}">!</g:if>
                            </p>
                            <p>
                                <label>${message(code:'fc.landingtest.goaroundwithouttouching')}* [${message(code:'fc.points')}]:</label>
                                <br/>
                                <input type="text" id="landingTest1GoAroundWithoutTouchingPoints" name="landingTest1GoAroundWithoutTouchingPoints" value="${fieldValue(bean:contestInstance,field:'landingTest1GoAroundWithoutTouchingPoints')}" tabIndex="25"/>
                                <g:if test="${contestInstance.landingTest1GoAroundWithoutTouchingPoints != contestInstance.contestRule.ruleValues.landingTest1GoAroundWithoutTouchingPoints}">!</g:if>
                            </p>
                            <p>
                                <label>${message(code:'fc.landingtest.goaroundinsteadstop')}* [${message(code:'fc.points')}]:</label>
                                <br/>
                                <input type="text" id="landingTest1GoAroundInsteadStopPoints" name="landingTest1GoAroundInsteadStopPoints" value="${fieldValue(bean:contestInstance,field:'landingTest1GoAroundInsteadStopPoints')}" tabIndex="26"/>
                                <g:if test="${contestInstance.landingTest1GoAroundInsteadStopPoints != contestInstance.contestRule.ruleValues.landingTest1GoAroundInsteadStopPoints}">!</g:if>
                            </p>
                            <p>
                                <label>${message(code:'fc.landingtest.abnormallanding')}* [${message(code:'fc.points')}]:</label>
                                <br/>
                                <input type="text" id="landingTest1AbnormalLandingPoints" name="landingTest1AbnormalLandingPoints" value="${fieldValue(bean:contestInstance,field:'landingTest1AbnormalLandingPoints')}" tabIndex="27"/>
                                <g:if test="${contestInstance.landingTest1AbnormalLandingPoints != contestInstance.contestRule.ruleValues.landingTest1AbnormalLandingPoints}">!</g:if>
                            </p>
                            <p>
                                <label>${message(code:'fc.landingtest.penaltycalculator')}*:</label>
                                <br/>
                                <input type="text" id="landingTest1PenaltyCalculator" name="landingTest1PenaltyCalculator" value="${fieldValue(bean:contestInstance,field:'landingTest1PenaltyCalculator')}" tabIndex="28"/>
                                <g:if test="${contestInstance.landingTest1PenaltyCalculator != contestInstance.contestRule.ruleValues.landingTest1PenaltyCalculator}">!</g:if>
                            </p>
                        </fieldset>
                        <fieldset>
                            <legend>${message(code:'fc.landingtest.landing2')}<g:if test="${contestInstance?.contestRule.precisionFlying}"> (${message(code:'fc.landingtest.landing2.precision')})</g:if></legend>
                            <p>
                                <label>${message(code:'fc.landingtest.maxpoints')}* [${message(code:'fc.points')}]:</label>
                                <br/>
                                <input type="text" id="landingTest2MaxPoints" name="landingTest2MaxPoints" value="${fieldValue(bean:contestInstance,field:'landingTest2MaxPoints')}" tabIndex="29"/>
                                <g:if test="${contestInstance.landingTest2MaxPoints != contestInstance.contestRule.ruleValues.landingTest2MaxPoints}">!</g:if>
                            </p>
                            <p>
                                <label>${message(code:'fc.landingtest.nolanding')}* [${message(code:'fc.points')}]:</label>
                                <br/>
                                <input type="text" id="landingTest2NoLandingPoints" name="landingTest2NoLandingPoints" value="${fieldValue(bean:contestInstance,field:'landingTest2NoLandingPoints')}" tabIndex="30"/>
                                <g:if test="${contestInstance.landingTest2NoLandingPoints != contestInstance.contestRule.ruleValues.landingTest2NoLandingPoints}">!</g:if>
                            </p>
                            <p>
                                <label>${message(code:'fc.landingtest.outsidelanding')}* [${message(code:'fc.points')}]:</label>
                                <br/>
                                <input type="text" id="landingTest2OutsideLandingPoints" name="landingTest2OutsideLandingPoints" value="${fieldValue(bean:contestInstance,field:'landingTest2OutsideLandingPoints')}" tabIndex="31"/>
                                <g:if test="${contestInstance.landingTest2OutsideLandingPoints != contestInstance.contestRule.ruleValues.landingTest2OutsideLandingPoints}">!</g:if>
                            </p>
                            <p>
                                <label>${message(code:'fc.landingtest.rollingoutside')}* [${message(code:'fc.points')}]:</label>
                                <br/>
                                <input type="text" id="landingTest2RollingOutsidePoints" name="landingTest2RollingOutsidePoints" value="${fieldValue(bean:contestInstance,field:'landingTest2RollingOutsidePoints')}" tabIndex="32"/>
                                <g:if test="${contestInstance.landingTest2RollingOutsidePoints != contestInstance.contestRule.ruleValues.landingTest2RollingOutsidePoints}">!</g:if>
                            </p>
                            <p>
                                <label>${message(code:'fc.landingtest.powerinbox')}* [${message(code:'fc.points')}]:</label>
                                <br/>
                                <input type="text" id="landingTest2PowerInBoxPoints" name="landingTest2PowerInBoxPoints" value="${fieldValue(bean:contestInstance,field:'landingTest2PowerInBoxPoints')}" tabIndex="33"/>
                                <g:if test="${contestInstance.landingTest2PowerInBoxPoints != contestInstance.contestRule.ruleValues.landingTest2PowerInBoxPoints}">!</g:if>
                            </p>
                            <p>
                                <label>${message(code:'fc.landingtest.goaroundwithouttouching')}* [${message(code:'fc.points')}]:</label>
                                <br/>
                                <input type="text" id="landingTest2GoAroundWithoutTouchingPoints" name="landingTest2GoAroundWithoutTouchingPoints" value="${fieldValue(bean:contestInstance,field:'landingTest2GoAroundWithoutTouchingPoints')}" tabIndex="34"/>
                                <g:if test="${contestInstance.landingTest2GoAroundWithoutTouchingPoints != contestInstance.contestRule.ruleValues.landingTest2GoAroundWithoutTouchingPoints}">!</g:if>
                            </p>
                            <p>
                                <label>${message(code:'fc.landingtest.goaroundinsteadstop')}* [${message(code:'fc.points')}]:</label>
                                <br/>
                                <input type="text" id="landingTest2GoAroundInsteadStopPoints" name="landingTest2GoAroundInsteadStopPoints" value="${fieldValue(bean:contestInstance,field:'landingTest2GoAroundInsteadStopPoints')}" tabIndex="35"/>
                                <g:if test="${contestInstance.landingTest2GoAroundInsteadStopPoints != contestInstance.contestRule.ruleValues.landingTest2GoAroundInsteadStopPoints}">!</g:if>
                            </p>
                            <p>
                                <label>${message(code:'fc.landingtest.abnormallanding')}* [${message(code:'fc.points')}]:</label>
                                <br/>
                                <input type="text" id="landingTest2AbnormalLandingPoints" name="landingTest2AbnormalLandingPoints" value="${fieldValue(bean:contestInstance,field:'landingTest2AbnormalLandingPoints')}" tabIndex="36"/>
                                <g:if test="${contestInstance.landingTest2AbnormalLandingPoints != contestInstance.contestRule.ruleValues.landingTest2AbnormalLandingPoints}">!</g:if>
                            </p>
                            <g:if test="${contestInstance?.contestRule.precisionFlying}">
	                            <p>
	                                <label>${message(code:'fc.landingtest.powerinair')}* [${message(code:'fc.points')}]:</label>
	                                <br/>
	                                <input type="text" id="landingTest2PowerInAirPoints" name="landingTest2PowerInAirPoints" value="${fieldValue(bean:contestInstance,field:'landingTest2PowerInAirPoints')}" tabIndex="37"/>
	                                <g:if test="${contestInstance.landingTest2PowerInAirPoints != contestInstance.contestRule.ruleValues.landingTest2PowerInAirPoints}">!</g:if>
	                            </p>
	                        </g:if>
                            <p>
                                <label>${message(code:'fc.landingtest.penaltycalculator')}*:</label>
                                <br/>
                                <input type="text" id="landingTest2PenaltyCalculator" name="landingTest2PenaltyCalculator" value="${fieldValue(bean:contestInstance,field:'landingTest2PenaltyCalculator')}" tabIndex="38"/>
                                <g:if test="${contestInstance.landingTest2PenaltyCalculator != contestInstance.contestRule.ruleValues.landingTest2PenaltyCalculator}">!</g:if>
                            </p>
                        </fieldset>
                        <fieldset>
                            <legend>${message(code:'fc.landingtest.landing3')}<g:if test="${contestInstance?.contestRule.precisionFlying}"> (${message(code:'fc.landingtest.landing3.precision')})</g:if></legend>
                            <p>
                                <label>${message(code:'fc.landingtest.maxpoints')}* [${message(code:'fc.points')}]:</label>
                                <br/>
                                <input type="text" id="landingTest3MaxPoints" name="landingTest3MaxPoints" value="${fieldValue(bean:contestInstance,field:'landingTest3MaxPoints')}" tabIndex="39"/>
                                <g:if test="${contestInstance.landingTest3MaxPoints != contestInstance.contestRule.ruleValues.landingTest3MaxPoints}">!</g:if>
                            </p>
                            <p>
                                <label>${message(code:'fc.landingtest.nolanding')}* [${message(code:'fc.points')}]:</label>
                                <br/>
                                <input type="text" id="landingTest3NoLandingPoints" name="landingTest3NoLandingPoints" value="${fieldValue(bean:contestInstance,field:'landingTest3NoLandingPoints')}" tabIndex="40"/>
                                <g:if test="${contestInstance.landingTest3NoLandingPoints != contestInstance.contestRule.ruleValues.landingTest3NoLandingPoints}">!</g:if>
                            </p>
                            <p>
                                <label>${message(code:'fc.landingtest.outsidelanding')}* [${message(code:'fc.points')}]:</label>
                                <br/>
                                <input type="text" id="landingTest3OutsideLandingPoints" name="landingTest3OutsideLandingPoints" value="${fieldValue(bean:contestInstance,field:'landingTest3OutsideLandingPoints')}" tabIndex="41"/>
                                <g:if test="${contestInstance.landingTest3OutsideLandingPoints != contestInstance.contestRule.ruleValues.landingTest3OutsideLandingPoints}">!</g:if>
                            </p>
                            <p>
                                <label>${message(code:'fc.landingtest.rollingoutside')}* [${message(code:'fc.points')}]:</label>
                                <br/>
                                <input type="text" id="landingTest3RollingOutsidePoints" name="landingTest3RollingOutsidePoints" value="${fieldValue(bean:contestInstance,field:'landingTest3RollingOutsidePoints')}" tabIndex="42"/>
                                <g:if test="${contestInstance.landingTest3RollingOutsidePoints != contestInstance.contestRule.ruleValues.landingTest3RollingOutsidePoints}">!</g:if>
                            </p>
                            <p>
                                <label>${message(code:'fc.landingtest.powerinbox')}* [${message(code:'fc.points')}]:</label>
                                <br/>
                                <input type="text" id="landingTest3PowerInBoxPoints" name="landingTest3PowerInBoxPoints" value="${fieldValue(bean:contestInstance,field:'landingTest3PowerInBoxPoints')}" tabIndex="43"/>
                                <g:if test="${contestInstance.landingTest3PowerInBoxPoints != contestInstance.contestRule.ruleValues.landingTest3PowerInBoxPoints}">!</g:if>
                            </p>
                            <p>
                                <label>${message(code:'fc.landingtest.goaroundwithouttouching')}* [${message(code:'fc.points')}]:</label>
                                <br/>
                                <input type="text" id="landingTest3GoAroundWithoutTouchingPoints" name="landingTest3GoAroundWithoutTouchingPoints" value="${fieldValue(bean:contestInstance,field:'landingTest3GoAroundWithoutTouchingPoints')}" tabIndex="44"/>
                                <g:if test="${contestInstance.landingTest3GoAroundWithoutTouchingPoints != contestInstance.contestRule.ruleValues.landingTest3GoAroundWithoutTouchingPoints}">!</g:if>
                            </p>
                            <p>
                                <label>${message(code:'fc.landingtest.goaroundinsteadstop')}* [${message(code:'fc.points')}]:</label>
                                <br/>
                                <input type="text" id="landingTest3GoAroundInsteadStopPoints" name="landingTest3GoAroundInsteadStopPoints" value="${fieldValue(bean:contestInstance,field:'landingTest3GoAroundInsteadStopPoints')}" tabIndex="45"/>
                                <g:if test="${contestInstance.landingTest3GoAroundInsteadStopPoints != contestInstance.contestRule.ruleValues.landingTest3GoAroundInsteadStopPoints}">!</g:if>
                            </p>
                            <p>
                                <label>${message(code:'fc.landingtest.abnormallanding')}* [${message(code:'fc.points')}]:</label>
                                <br/>
                                <input type="text" id="landingTest3AbnormalLandingPoints" name="landingTest3AbnormalLandingPoints" value="${fieldValue(bean:contestInstance,field:'landingTest3AbnormalLandingPoints')}" tabIndex="46"/>
                                <g:if test="${contestInstance.landingTest3AbnormalLandingPoints != contestInstance.contestRule.ruleValues.landingTest3AbnormalLandingPoints}">!</g:if>
                            </p>
                            <g:if test="${contestInstance?.contestRule.precisionFlying}">
	                            <p>
	                                <label>${message(code:'fc.landingtest.powerinair')}* [${message(code:'fc.points')}]:</label>
	                                <br/>
	                                <input type="text" id="landingTest3PowerInAirPoints" name="landingTest3PowerInAirPoints" value="${fieldValue(bean:contestInstance,field:'landingTest3PowerInAirPoints')}" tabIndex="47"/>
	                                <g:if test="${contestInstance.landingTest3PowerInAirPoints != contestInstance.contestRule.ruleValues.landingTest3PowerInAirPoints}">!</g:if>
	                            </p>
	                            <p>
	                                <label>${message(code:'fc.landingtest.flapsinair')}* [${message(code:'fc.points')}]:</label>
	                                <br/>
	                                <input type="text" id="landingTest3FlapsInAirPoints" name="landingTest3FlapsInAirPoints" value="${fieldValue(bean:contestInstance,field:'landingTest3FlapsInAirPoints')}" tabIndex="48"/>
	                                <g:if test="${contestInstance.landingTest3FlapsInAirPoints != contestInstance.contestRule.ruleValues.landingTest3FlapsInAirPoints}">!</g:if>
	                            </p>
	                        </g:if>
                            <p>
                                <label>${message(code:'fc.landingtest.penaltycalculator')}*:</label>
                                <br/>
                                <input type="text" id="landingTest3PenaltyCalculator" name="landingTest3PenaltyCalculator" value="${fieldValue(bean:contestInstance,field:'landingTest3PenaltyCalculator')}" tabIndex="49"/>
                                <g:if test="${contestInstance.landingTest3PenaltyCalculator != contestInstance.contestRule.ruleValues.landingTest3PenaltyCalculator}">!</g:if>
                            </p>
                        </fieldset>
                        <fieldset>
                            <legend>${message(code:'fc.landingtest.landing4')}<g:if test="${contestInstance?.contestRule.precisionFlying}"> (${message(code:'fc.landingtest.landing4.precision')})</g:if></legend>
                            <p>
                                <label>${message(code:'fc.landingtest.maxpoints')}* [${message(code:'fc.points')}]:</label>
                                <br/>
                                <input type="text" id="landingTest4MaxPoints" name="landingTest4MaxPoints" value="${fieldValue(bean:contestInstance,field:'landingTest4MaxPoints')}" tabIndex="50"/>
                                <g:if test="${contestInstance.landingTest4MaxPoints != contestInstance.contestRule.ruleValues.landingTest4MaxPoints}">!</g:if>
                            </p>
                            <p>
                                <label>${message(code:'fc.landingtest.nolanding')}* [${message(code:'fc.points')}]:</label>
                                <br/>
                                <input type="text" id="landingTest4NoLandingPoints" name="landingTest4NoLandingPoints" value="${fieldValue(bean:contestInstance,field:'landingTest4NoLandingPoints')}" tabIndex="51"/>
                                <g:if test="${contestInstance.landingTest4NoLandingPoints != contestInstance.contestRule.ruleValues.landingTest4NoLandingPoints}">!</g:if>
                            </p>
                            <p>
                                <label>${message(code:'fc.landingtest.outsidelanding')}* [${message(code:'fc.points')}]:</label>
                                <br/>
                                <input type="text" id="landingTest4OutsideLandingPoints" name="landingTest4OutsideLandingPoints" value="${fieldValue(bean:contestInstance,field:'landingTest4OutsideLandingPoints')}" tabIndex="52"/>
                                <g:if test="${contestInstance.landingTest4OutsideLandingPoints != contestInstance.contestRule.ruleValues.landingTest4OutsideLandingPoints}">!</g:if>
                            </p>
                            <p>
                                <label>${message(code:'fc.landingtest.rollingoutside')}* [${message(code:'fc.points')}]:</label>
                                <br/>
                                <input type="text" id="landingTest4RollingOutsidePoints" name="landingTest4RollingOutsidePoints" value="${fieldValue(bean:contestInstance,field:'landingTest4RollingOutsidePoints')}" tabIndex="53"/>
                                <g:if test="${contestInstance.landingTest4RollingOutsidePoints != contestInstance.contestRule.ruleValues.landingTest4RollingOutsidePoints}">!</g:if>
                            </p>
                            <p>
                                <label>${message(code:'fc.landingtest.powerinbox')}* [${message(code:'fc.points')}]:</label>
                                <br/>
                                <input type="text" id="landingTest4PowerInBoxPoints" name="landingTest4PowerInBoxPoints" value="${fieldValue(bean:contestInstance,field:'landingTest4PowerInBoxPoints')}" tabIndex="54"/>
                                <g:if test="${contestInstance.landingTest4PowerInBoxPoints != contestInstance.contestRule.ruleValues.landingTest4PowerInBoxPoints}">!</g:if>
                            </p>
                            <p>
                                <label>${message(code:'fc.landingtest.goaroundwithouttouching')}* [${message(code:'fc.points')}]:</label>
                                <br/>
                                <input type="text" id="landingTest4GoAroundWithoutTouchingPoints" name="landingTest4GoAroundWithoutTouchingPoints" value="${fieldValue(bean:contestInstance,field:'landingTest4GoAroundWithoutTouchingPoints')}" tabIndex="55"/>
                                <g:if test="${contestInstance.landingTest4GoAroundWithoutTouchingPoints != contestInstance.contestRule.ruleValues.landingTest4GoAroundWithoutTouchingPoints}">!</g:if>
                            </p>
                            <p>
                                <label>${message(code:'fc.landingtest.goaroundinsteadstop')}* [${message(code:'fc.points')}]:</label>
                                <br/>
                                <input type="text" id="landingTest4GoAroundInsteadStopPoints" name="landingTest4GoAroundInsteadStopPoints" value="${fieldValue(bean:contestInstance,field:'landingTest4GoAroundInsteadStopPoints')}" tabIndex="56"/>
                                <g:if test="${contestInstance.landingTest4GoAroundInsteadStopPoints != contestInstance.contestRule.ruleValues.landingTest4GoAroundInsteadStopPoints}">!</g:if>
                            </p>
                            <p>
                                <label>${message(code:'fc.landingtest.abnormallanding')}* [${message(code:'fc.points')}]:</label>
                                <br/>
                                <input type="text" id="landingTest4AbnormalLandingPoints" name="landingTest4AbnormalLandingPoints" value="${fieldValue(bean:contestInstance,field:'landingTest4AbnormalLandingPoints')}" tabIndex="57"/>
                                <g:if test="${contestInstance.landingTest4AbnormalLandingPoints != contestInstance.contestRule.ruleValues.landingTest4AbnormalLandingPoints}">!</g:if>
                            </p>
							<g:if test="${contestInstance?.contestRule.precisionFlying}">                            
								<p>
	                                <label>${message(code:'fc.landingtest.touchingobstacle')}* [${message(code:'fc.points')}]:</label>
	                                <br/>
	                                <input type="text" id="landingTest4TouchingObstaclePoints" name="landingTest4TouchingObstaclePoints" value="${fieldValue(bean:contestInstance,field:'landingTest4TouchingObstaclePoints')}" tabIndex="58"/>
	                                <g:if test="${contestInstance.landingTest4TouchingObstaclePoints != contestInstance.contestRule.ruleValues.landingTest4TouchingObstaclePoints}">!</g:if>
	                            </p>
	                        </g:if>
                            <p>
                                <label>${message(code:'fc.landingtest.penaltycalculator')}*:</label>
                                <br/>
                                <input type="text" id="landingTest4PenaltyCalculator" name="landingTest4PenaltyCalculator" value="${fieldValue(bean:contestInstance,field:'landingTest4PenaltyCalculator')}" tabIndex="59"/>
                                <g:if test="${contestInstance.landingTest4PenaltyCalculator != contestInstance.contestRule.ruleValues.landingTest4PenaltyCalculator}">!</g:if>
                            </p>
                        </fieldset>
                        <input type="hidden" name="id" value="${contestInstance?.id}"/>
                        <input type="hidden" name="version" value="${contestInstance?.version}"/>
                        <input type="hidden" name="pointssaved" value="${true}"/>
                        <g:actionSubmit action="update" value="${message(code:'fc.update')}" tabIndex="60"/>
                        <g:actionSubmit action="savepoints" value="${message(code:'fc.save')}" tabIndex="61"/>
                        <g:actionSubmit action="printpoints" value="${message(code:'fc.print')}"  tabIndex="63"/>
                        <g:actionSubmit action="cancel" value="${message(code:'fc.cancel')}" tabIndex="64"/>
                    </g:form>
                </div>
            </div>
        </div>
    </body>
</html>