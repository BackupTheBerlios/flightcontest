<html>
    <head>
        <style type="text/css">
            @page {
                @bottom-center {
                    content: "${message(code:'fc.program.printfoot.left')} - ${message(code:'fc.program.printfoot.right')}"
                }
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>${message(code:'fc.flightresults')} ${testInstance.viewpos+1} - ${testInstance?.task.name()}</title>
    </head>
    <body>
        <div class="box">
            <div class="box boxborder" >
                <h2>${message(code:'fc.flightresults')} ${testInstance.viewpos+1}</h2>
                <g:if test="${!testInstance.flightTestComplete}">
	                <h3>${testInstance?.task.name()} (${message(code:'fc.version')} ${testInstance.GetFlightTestVersion()}) [${message(code:'fc.provisional')}]</h3>
                </g:if>
                <g:else>
	                <h3>${testInstance?.task.name()} (${message(code:'fc.version')} ${testInstance.GetFlightTestVersion()})</h3>
                </g:else>
                <div class="block" id="forms" >
                    <g:form>
                        <table width="100%">
                            <tbody>
                                <tr>
                                    <td>${message(code:'fc.crew')}: ${testInstance.crew.name}</td>
			                    	<g:if test="${testInstance.crew.team}">
		                            	<td>${message(code:'fc.crew.team')}: ${testInstance.crew.team.name}</td>
	    		                    </g:if>
			                    	<g:if test="${testInstance.task.contest.resultClasses && testInstance.crew.resultclass}">
		                                <td>${message(code:'fc.crew.resultclass')}: ${testInstance.crew.resultclass.name}</td>
	    		                    </g:if>
                                </tr>
                                <tr>
                                    <td>${message(code:'fc.aircraft.registration')}:
                                        <g:if test="${testInstance.crew.aircraft}">
                                            ${testInstance.crew.aircraft.registration}
                                        </g:if> <g:else>
                                            ${message(code:'fc.noassigned')}
                                        </g:else>
                                    </td>
                                    <td>${message(code:'fc.aircraft.type')}: 
                                        <g:if test="${testInstance.crew.aircraft}">
		                                    ${testInstance.crew.aircraft.type}
                                        </g:if> <g:else>
                                            ${message(code:'fc.noassigned')}
                                        </g:else>
                                    </td>
                                    <td>${message(code:'fc.tas')}: ${fieldValue(bean:testInstance, field:'taskTAS')}${message(code:'fc.knot')}</td>
                                </tr>
                            </tbody>
                        </table>
                        <g:if test="${CoordResult.countByTest(testInstance)}" >
                            <br/>
                            <table width="100%" border="1" cellspacing="0" cellpadding="2">
                                <thead>
                                    <tr>
                                        <th class="table-head">${message(code:'fc.title')}</th>
                                        <th colspan="3" class="table-head">${message(code:'fc.cptime')}</th>
                                        <th class="table-head">${message(code:'fc.procedureturn')}</th>
                                        <th class="table-head">${message(code:'fc.badcoursenum')}</th>
                                        <th class="table-head">${message(code:'fc.altitude')}</th>
                                    </tr>
                                    <tr>
                                        <th/>
                                        <th>${message(code:'fc.test.results.plan')}</th>
                                        <th>${message(code:'fc.test.results.measured')}</th>
                                        <th>${message(code:'fc.points')}</th>
                                        <th/>
                                        <th/>
                                        <th/>
                                    </tr>
                                </thead>
                                <tbody>
                                    <g:set var="penaltyCoordSummary" value="${new Integer(0)}" />
                                    <g:set var="penaltyProcedureTurnSummary" value="${new Integer(0)}" />
                                    <g:set var="penaltyBadCourseSummary" value="${new Integer(0)}" />
                                    <g:set var="penaltyAltitudeSummary" value="${new Integer(0)}" />
                                    <g:each var="coordResultInstance" in="${CoordResult.findAllByTest(testInstance,[sort:"id"])}">
                                        <g:if test="${lastCoordResultInstance}">
                                            <g:set var="penaltyCoordSummary" value="${penaltyCoordSummary + lastCoordResultInstance.penaltyCoord}" />
                                            <tr>
                                                <td>${lastCoordResultInstance.titleCode()}</td>
                                                <td>${FcMath.TimeStr(lastCoordResultInstance.planCpTime)}</td>
                                                <td>${FcMath.TimeStr(lastCoordResultInstance.resultCpTime)}</td>
                                                <td>${lastCoordResultInstance.penaltyCoord}</td>
                                                <g:if test="${coordResultInstance.planProcedureTurn}">
                                                    <g:if test="${coordResultInstance.resultProcedureTurnEntered}">
                                                        <g:if test="${coordResultInstance.resultProcedureTurnEntered}">
                                                            <g:if test="${coordResultInstance.resultProcedureTurnNotFlown}">
                                                                <g:set var="penaltyProcedureTurnSummary" value="${penaltyProcedureTurnSummary + coordResultInstance.test.GetFlightTestProcedureTurnNotFlownPoints()}" />
                                                                <td>${coordResultInstance.test.GetFlightTestProcedureTurnNotFlownPoints()}</td>
                                                            </g:if>
                                                            <g:else>
                                                                <td>0</td>
                                                            </g:else>
                                                        </g:if>
                                                        <g:else>
                                                            <td/>
                                                        </g:else>
                                                    </g:if>
                                                    <g:else>
                                                        <td/>
                                                    </g:else>
                                                </g:if>
                                                <g:else>
                                                    <td/>
                                                </g:else>
                                                <g:if test="${lastCoordResultInstance.resultEntered}">
                                                    <g:set var="penaltyBadCourseSummary" value="${penaltyBadCourseSummary + lastCoordResultInstance.resultBadCourseNum*lastCoordResultInstance.test.GetFlightTestBadCoursePoints()}" />
                                                       <g:if test="${lastCoordResultInstance.resultBadCourseNum > 0}">
                                                       	<td>${lastCoordResultInstance.resultBadCourseNum*lastCoordResultInstance.test.GetFlightTestBadCoursePoints()} (${lastCoordResultInstance.resultBadCourseNum})</td>
                                                       </g:if>
                                                       <g:else>
	                                                    <td>${lastCoordResultInstance.resultBadCourseNum*lastCoordResultInstance.test.GetFlightTestBadCoursePoints()}</td>
                                                       </g:else>
                                                </g:if>
                                                <g:else>
                                                    <td/>
                                                </g:else>
                                                <g:if test="${lastCoordResultInstance.resultAltitude}">
                                                    <g:if test="${lastCoordResultInstance.resultMinAltitudeMissed}">
                                                        <g:set var="penaltyAltitudeSummary" value="${penaltyAltitudeSummary + lastCoordResultInstance.test.GetFlightTestMinAltitudeMissedPoints()}" />
                                                        <td>${lastCoordResultInstance.test.GetFlightTestMinAltitudeMissedPoints()} (${lastCoordResultInstance.resultAltitude}${message(code:'fc.foot')})</td>
                                                    </g:if>
                                                    <g:else>
                                                        <td>0</td>
                                                    </g:else>
                                                </g:if>
                                                <g:else>
                                                    <td>0</td>
                                                </g:else>
                                            </tr>
                                        </g:if>
                                        <g:set var="lastCoordResultInstance" value="${coordResultInstance}" />
                                    </g:each>
                                    <g:if test="${lastCoordResultInstance}">
                                        <g:set var="penaltyCoordSummary" value="${penaltyCoordSummary + lastCoordResultInstance.penaltyCoord}" />
                                        <tr>
                                            <td>${lastCoordResultInstance.titleCode()}</td>
                                            <td>${FcMath.TimeStr(lastCoordResultInstance.planCpTime)}</td>
                                            <td>${FcMath.TimeStr(lastCoordResultInstance.resultCpTime)}</td>
                                            <td>${lastCoordResultInstance.penaltyCoord}</td>
                                            <td/>
                                            <g:if test="${lastCoordResultInstance.resultEntered}">
                                                <g:set var="penaltyBadCourseSummary" value="${penaltyBadCourseSummary + lastCoordResultInstance.resultBadCourseNum*lastCoordResultInstance.test.GetFlightTestBadCoursePoints()}" />
                                                <td>${lastCoordResultInstance.resultBadCourseNum*lastCoordResultInstance.test.GetFlightTestBadCoursePoints()}</td>
                                            </g:if>
                                            <g:else>
                                                <td/>
                                            </g:else>
                                            <g:if test="${lastCoordResultInstance.resultAltitude}">
                                                <g:if test="${lastCoordResultInstance.resultMinAltitudeMissed}">
                                                    <g:set var="penaltyAltitudeSummary" value="${penaltyAltitudeSummary + lastCoordResultInstance.test.GetFlightTestMinAltitudeMissedPoints()}" />
                                                    <td>${lastCoordResultInstance.test.GetFlightTestMinAltitudeMissedPoints()}</td>
                                                </g:if>
                                                <g:else>
                                                    <td>0</td>
                                                </g:else>
                                            </g:if>
                                            <g:else>
                                                <td>0</td>
                                            </g:else>
                                        </tr>
                                    </g:if>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <td/>
                                        <td/>
                                        <td/>
                                        <td>${penaltyCoordSummary}</td>
                                        <td>${penaltyProcedureTurnSummary}</td>
                                        <td>${penaltyBadCourseSummary}</td>
                                        <td>${penaltyAltitudeSummary}</td>
                                    </tr>
                                </tfoot>
                            </table>
                        </g:if>
                        <br/>
                        <table>
                            <tbody>
                                <tr>
                                    <td>${message(code:'fc.flightresults.checkpointpenalties')}: ${testInstance.flightTestCheckPointPenalties} ${message(code:'fc.points')}</td>
                                </tr>
                                <g:if test="${testInstance.flightTestTakeoffMissed}">
                                	<tr>
                                    	<td>${message(code:'fc.flighttest.takeoffmissed')}: ${testInstance.GetFlightTestTakeoffMissedPoints()} ${message(code:'fc.points')}</td>
                                	</tr>
                                </g:if>
                                <g:if test="${testInstance.flightTestBadCourseStartLanding}">
                                	<tr>
                                 		<td>${message(code:'fc.flighttest.badcoursestartlanding')}: ${testInstance.GetFlightTestBadCourseStartLandingPoints()} ${message(code:'fc.points')}</td>
                                	</tr>
                                </g:if>
                                <g:if test="${testInstance.flightTestLandingTooLate}">
                                	<tr>
                                    	<td>${message(code:'fc.flighttest.landingtolate')}: ${testInstance.GetFlightTestLandingToLatePoints()} ${message(code:'fc.points')}</td>
                                	</tr>
                                </g:if>
                                <g:if test="${testInstance.flightTestGivenTooLate}">
                                	<tr>
                                    	<td>${message(code:'fc.flighttest.giventolate')}: ${testInstance.GetFlightTestGivenToLatePoints()} ${message(code:'fc.points')}</td>
                                	</tr>
                                </g:if>
                                <g:if test="${testInstance.flightTestOtherPenalties > 0}">
                                    <tr>
                                        <td>${message(code:'fc.flighttest.otherpenalties')}: ${testInstance.flightTestOtherPenalties} ${message(code:'fc.points')}</td>
                                    </tr>
                                </g:if>
                                <tr>
                                	<td> </td>
                                </tr>
                            </tbody>
                            <tfoot>
                                <tr>
                                	<td>${message(code:'fc.penalties')}: ${testInstance.flightTestPenalties} ${message(code:'fc.points')}</td>
                                </tr>
                            </tfoot>
                        </table>
                    </g:form>
                </div>
            </div>
        </div>
    </body>
</html>