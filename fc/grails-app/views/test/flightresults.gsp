<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>${message(code:'fc.flightresults')} ${testInstance.GetStartNum()} - ${testInstance?.task.name()} (${message(code:'fc.version')} ${testInstance.GetFlightTestVersion()})</title>
    </head>
    <body>
        <g:mainnav link="${createLink(controller:'contest')}" />
        <div class="box">
            <g:viewmsg msg="${flash.message}" error="${flash.error}"/>
            <div class="box boxborder" >
                <h2>${message(code:'fc.flightresults')} ${testInstance.GetStartNum()} - ${testInstance?.task.name()} (${message(code:'fc.version')} ${testInstance.GetFlightTestVersion()})</h2>
                <div class="block" id="forms" >
                    <g:form id="${testInstance.id}" method="post">
                        <table>
                            <tbody>
                                <tr>
                                    <td><g:task var="${testInstance?.task}" link="${createLink(controller:'task',action:'listresults')}"/></td>
                                </tr>
                            </tbody>
                        </table>
                        <table>
                            <tbody>
                                <tr>
                                    <td class="detailtitle">${message(code:'fc.crew')}:</td>
                                    <td><g:crew var="${testInstance.crew}" link="${createLink(controller:'crew',action:'edit')}"/><g:if test="${testInstance.crew.mark}"> (${message(code:'fc.aflos')}: ${testInstance.crew.mark})</g:if></td>
                                </tr>
                                <g:if test="${testInstance.crew.team}">
                                    <tr>
                                        <td class="detailtitle">${message(code:'fc.crew.team')}:</td>
                                        <td><g:team var="${testInstance.crew.team}" link="${createLink(controller:'team',action:'edit')}"/></td>
                                    </tr>
                                </g:if>
                                <g:if test="${testInstance.task.contest.resultClasses && testInstance.crew.resultclass}">
                                    <tr>
                                        <td class="detailtitle">${message(code:'fc.crew.resultclass')}:</td>
                                        <td><g:resultclass var="${testInstance.crew.resultclass}" link="${createLink(controller:'resultClass',action:'edit')}"/></td>
                                    </tr>
                                </g:if>
                                <tr>
                                    <td class="detailtitle">${message(code:'fc.aircraft.registration')}:</td>
                                    <g:if test="${testInstance.crew.aircraft}">
                                        <td><g:aircraft var="${testInstance.crew.aircraft}" link="${createLink(controller:'aircraft',action:'edit')}"/></td>
                                    </g:if> <g:else>
                                        <td>${message(code:'fc.noassigned')}</td>
                                    </g:else>                    
                                </tr>
                                <tr>
                                    <td class="detailtitle">${message(code:'fc.aircraft.type')}:</td>
                                    <g:if test="${testInstance.crew.aircraft}">
                                        <td>${testInstance.crew.aircraft.type}</td>
                                    </g:if> <g:else>
                                        <td>${message(code:'fc.noassigned')}</td>
                                    </g:else>                    
                                </tr>
                                <tr>
                                    <td class="detailtitle">${message(code:'fc.tas')}:</td>
                                    <td>${fieldValue(bean:testInstance, field:'taskTAS')}${message(code:'fc.knot')}</td>
                                </tr>
                                <tr>
                                    <td class="detailtitle">${message(code:'fc.route')}:</td>
                                    <g:if test="${testInstance.flighttestwind?.flighttest}">
                                        <td><g:route var="${testInstance.flighttestwind.flighttest.route}" link="${createLink(controller:'route',action:'show')}"/></td>
                                    </g:if> <g:else>
                                        <td>${message(code:'fc.noassigned')}</td>
                                    </g:else>
                                </tr>
                                <tr>
                                    <td class="detailtitle">${message(code:'fc.wind')}:</td>
                                    <g:if test="${testInstance.flighttestwind}">
                                        <td><g:windtext var="${testInstance.flighttestwind}" /></td>
                                    </g:if> <g:else>
                                        <td>${message(code:'fc.noassigned')}</td>
                                    </g:else>
                                </tr>
                            </tbody>
                        </table>
                        <g:if test="${CoordResult.countByTest(testInstance)}" >
                            <div>
                                <table>
                                    <thead>
                                        <tr>
                                            <th colspan="9" class="table-head">${message(code:'fc.flightresults.coordresultlist')}</th>
                                        </tr>
                                        <tr>
                                            <th>${message(code:'fc.number')}</th>
                                            <th>${message(code:'fc.title')}</th>
                                            <th>${message(code:'fc.aflos.checkpoint')}</th>
                                            <th/>
                                            <th>${message(code:'fc.latitude')}</th>
                                            <th>${message(code:'fc.longitude')}</th>
                                            <th>${message(code:'fc.altitude')}</th>
                                            <th>${message(code:'fc.cptime')}</th>
                                            <th>${message(code:'fc.badcoursenum')}</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<g:set var="disabled_checkpoints" value="${testInstance.task.disabledCheckPoints},"/>
                                        <g:set var="legNo" value="${new Integer(0)}" />
                                        <g:each var="coordResultInstance" in="${CoordResult.findAllByTest(testInstance,[sort:"id"])}">
                                            <g:if test="${coordResultInstance.planProcedureTurn}">
                                                <g:set var="legNo" value="${legNo+1}" />
                                                <tr class="${(legNo % 2) == 0 ? '' : 'odd'}">
                                                    <td><g:coordresult var="${coordResultInstance}" name="${legNo}" procedureTurn="${true}" link="${createLink(controller:'coordResult',action:'editprocedureturn')}"/></td>
                                                    <td>${message(code:'fc.procedureturn')}</td>
                                                    <td/>
                                                    <td>${message(code:'fc.test.results.measured')}</td>
                                                    <td/>
                                                    <td/>
                                                    <td/>
                                                    <g:if test="${coordResultInstance.resultProcedureTurnEntered}">
                                                        <g:if test="${coordResultInstance.resultProcedureTurnNotFlown}">
                                                            <td class="errors">${message(code:'fc.flighttest.procedureturnnotflown.short')}</td>
                                                        </g:if>
                                                        <g:else>
                                                            <td>${message(code:'fc.flighttest.procedureturnflown.short')}</td>
                                                        </g:else>
                                                    </g:if>
                                                    <g:else>
                                                        <td>${message(code:'fc.unknown')}</td>
                                                    </g:else>
                                                    <td/>
                                                </tr>
                                                <tr class="${(legNo % 2) == 0 ? '' : 'odd'}">
                                                    <td/>
                                                    <td/>
                                                    <td/>
                                                    <td>${message(code:'fc.test.results.penalty')}</td>
                                                    <td/>
                                                    <td/>
                                                    <td/>
                                                    <g:if test="${coordResultInstance.resultProcedureTurnEntered}">
                                                        <g:if test="${lastCoordResultInstance && disabled_checkpoints.contains(lastCoordResultInstance.title()+',')}">
                                                            <td class="zeropoints">${message(code:'fc.disabled')}</td>
                                                        </g:if>
                                                        <g:elseif test="${testInstance.GetFlightTestProcedureTurnNotFlownPoints() == 0}">
                                                            <td class="zeropoints">${message(code:'fc.disabled')}</td>
                                                        </g:elseif>
                                                        <g:elseif test="${coordResultInstance.resultProcedureTurnNotFlown}">
                                                            <td class="points">${testInstance.GetFlightTestProcedureTurnNotFlownPoints()} ${message(code:'fc.points')}</td>
                                                        </g:elseif>
                                                        <g:else>
                                                            <td class="zeropoints">0 ${message(code:'fc.points')}</td>
                                                        </g:else>
                                                    </g:if>
                                                    <g:else>
                                                        <td>${message(code:'fc.unknown')}</td>
                                                    </g:else>
                                                    <td/>
                                                </tr>
                                            </g:if>
                                            <g:set var="legNo" value="${legNo+1}" />
                                            <tr class="${(legNo % 2) == 0 ? '' : 'odd'}">
		                                        
                                            	<!-- search next id -->
		                                        <g:set var="next" value="${new Integer(0)}" />
		                                        <g:set var="setnext" value="${false}" />
        		                                <g:each var="coordResultInstance2" in="${CoordResult.findAllByTest(testInstance,[sort:"id"])}">
                                                    <g:if test="${setnext}">
	       				                                <g:set var="next" value="${coordResultInstance2.id}" />
						                                <g:set var="setnext" value="${false}" />
                                                    </g:if>
                                                    <g:if test="${coordResultInstance2 == coordResultInstance}">
				                                        <g:set var="setnext" value="${true}" />
                                                    </g:if>
        		                                </g:each>
        		                                
                                                <td><g:coordresult var="${coordResultInstance}" name="${legNo}" procedureTurn="${false}" next="${next}" link="${createLink(controller:'coordResult',action:'edit')}"/></td>
                                                <td>${coordResultInstance.titleCode()}</td>
                                                <td>${coordResultInstance.mark}</td>
                                                <td>${message(code:'fc.test.results.plan')}</td>
                                                <td>${coordResultInstance.latName()}</td>
                                                <td>${coordResultInstance.lonName()}</td>
                                                <td>${coordResultInstance.altitude}${message(code:'fc.foot')}</td>
                                                <td>${FcMath.TimeStr(coordResultInstance.planCpTime)}</td>
                                                <g:if test="${coordResultInstance.type != CoordType.SP}">
                                                    <td>0</td>
                                                </g:if>
                                                <g:else>
                                                    <td/>
                                                </g:else>
                                            </tr>
                                            <tr class="${(legNo % 2) == 0 ? '' : 'odd'}">
                                                <td/>
                                                <td/>
                                                <td/>
                                                <td>${message(code:'fc.test.results.measured')}</td>
                                                <g:if test="${coordResultInstance.resultEntered}">
                                                    <td>${coordResultInstance.resultLatitude}</td>
                                                    <td>${coordResultInstance.resultLongitude}</td>
                                                    <g:if test="${!coordResultInstance.resultAltitude}">
                                                        <td/>
                                                    </g:if>
                                                    <g:else>
                                                        <g:if test="${!coordResultInstance.resultMinAltitudeMissed}">
                                                            <td>${coordResultInstance.resultAltitude}${message(code:'fc.foot')}</td>
                                                        </g:if>
                                                        <g:else>
                                                            <td class="errors">${coordResultInstance.resultAltitude}${message(code:'fc.foot')}</td>
                                                        </g:else>
                                                    </g:else>
                                                    <g:if test="${coordResultInstance.resultCpNotFound}">
                                                        <td class="errors">${message(code:'fc.flighttest.cpnotfound.short')}</td>
                                                    </g:if>
                                                    <g:else>
                                                        <td>${FcMath.TimeStr(coordResultInstance.resultCpTime)}</td>
                                                    </g:else>
                                                    <g:if test="${coordResultInstance.type != CoordType.SP}">
                                                        <g:if test="${coordResultInstance.resultBadCourseNum}">
                                                            <td class="errors">${coordResultInstance.resultBadCourseNum}</td>
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
                                                    <td/>
                                                    <td/>
                                                    <td>${message(code:'fc.unknown')}</td>
                                                    <g:if test="${coordResultInstance.type != CoordType.SP}">
                                                        <td>${message(code:'fc.unknown')}</td>
                                                    </g:if>
                                                    <g:else>
                                                        <td/>
                                                    </g:else>
                                                </g:else>
                                            </tr>
                                            <tr class="${(legNo % 2) == 0 ? '' : 'odd'}">
                                                <td/>
                                                <td/>
                                                <td/>
                                                <td>${message(code:'fc.test.results.penalty')}</td>
                                               	<td/>
                                                <td/>
                                                <g:if test="${testInstance.GetFlightTestMinAltitudeMissedPoints() > 0}">
	                                                <g:if test="${!coordResultInstance.resultAltitude}">
	                                                    <td/>
	                                                </g:if>
	                                                <g:else>
	                                                    <g:if test="${coordResultInstance.resultMinAltitudeMissed}">
	                                                        <td class="points">${testInstance.GetFlightTestMinAltitudeMissedPoints()} ${message(code:'fc.points')}</td>
	                                                    </g:if>
	                                                    <g:else>
	                                                        <td class="zeropoints">0 ${message(code:'fc.points')}</td>
	                                                    </g:else>
	                                                </g:else>
	                                            </g:if>
	                                            <g:else>
	                                               <td class="zeropoints">${message(code:'fc.disabled')}</td>
	                                            </g:else>
                                                <g:if test="${coordResultInstance.resultEntered}">
	                                                <g:if test="${disabled_checkpoints.contains(coordResultInstance.title()+',')}">
	                                                	<g:if test="${coordResultInstance.penaltyCoord}">
	                                                		<td class="zeropoints">${message(code:'fc.disabled')} (${coordResultInstance.penaltyCoord})</td>
	                                                	</g:if>
	                                                	<g:else>
	                                                		<td class="zeropoints">${message(code:'fc.disabled')}</td>
	                                                	</g:else>
	                                                </g:if>
	                                                <g:else>
	                                                    <g:set var="points_class" value="points"/>
	                                                    <g:if test="${!coordResultInstance.penaltyCoord}">
	                                                        <g:set var="points_class" value="zeropoints"/>
	                                                    </g:if>
	                                                    <td class="${points_class}">${coordResultInstance.penaltyCoord} ${message(code:'fc.points')}</td>
	                                                </g:else>
                                                    <g:if test="${testInstance.GetFlightTestBadCoursePoints() > 0}">
                                                        <g:set var="points_class" value="points"/>
                                                        <g:if test="${!coordResultInstance.resultBadCourseNum}">
                                                            <g:set var="points_class" value="zeropoints"/>
                                                        </g:if>
		                                                <g:if test="${coordResultInstance.type != CoordType.SP}">
		                                                    <td class="${points_class}">${coordResultInstance.resultBadCourseNum*testInstance.GetFlightTestBadCoursePoints()} ${message(code:'fc.points')}</td>
		                                                </g:if>
		                                                <g:else>
		                                                    <td/>
		                                                </g:else>
    	                                            </g:if>
	                                                <g:else>
	                                                    <td class="zeropoints">${message(code:'fc.disabled')}</td>
	                                                </g:else>
                                                </g:if>
                                                <g:else>
                                                    <td>${message(code:'fc.unknown')}</td>
                                                    <g:if test="${coordResultInstance.type != CoordType.SP}">
                                                        <td>${message(code:'fc.unknown')}</td>
                                                    </g:if>
                                                    <g:else>
                                                        <td/>
                                                    </g:else>
                                                </g:else>
                                            </tr>
                                            <g:set var="lastCoordResultInstance" value="${coordResultInstance}" />
                                        </g:each>
                                    </tbody>
                                </table>
                            </div>
                        </g:if>
                        <g:if test="${!testInstance.flightTestComplete}">
                            <fieldset>
		                        <p>
		                        	<g:if test="${testInstance.GetFlightTestTakeoffMissedPoints() > 0}">
				                        <div>
			        	                	<g:checkBox name="flightTestTakeoffMissed" value="${testInstance.flightTestTakeoffMissed}"/>
											<label>${message(code:'fc.flighttest.takeoffmissed')}</label>
			    	                    </div>
			    	                </g:if>
		                        	<g:if test="${testInstance.GetFlightTestBadCourseStartLandingPoints() > 0}">
				                        <div>
			        	                	<g:checkBox name="flightTestBadCourseStartLanding" value="${testInstance.flightTestBadCourseStartLanding}"/>
											<label>${message(code:'fc.flighttest.badcoursestartlanding')}</label>
			    	                    </div>
			    	                </g:if>
		                        	<g:if test="${testInstance.GetFlightTestLandingToLatePoints() > 0}">
				                        <div>
			        	                	<g:checkBox name="flightTestLandingTooLate" value="${testInstance.flightTestLandingTooLate}"/>
											<label>${message(code:'fc.flighttest.landingtolate')}</label>
			    	                    </div>
			    	                </g:if>
		                        	<g:if test="${testInstance.GetFlightTestGivenToLatePoints() > 0}">
				                        <div>
			        	                	<g:checkBox name="flightTestGivenTooLate" value="${testInstance.flightTestGivenTooLate}"/>
											<label>${message(code:'fc.flighttest.giventolate')}</label>
			    	                    </div>
			    	                </g:if>
		                        </p>
                                <p>
                                    <label>${message(code:'fc.flighttest.otherpenalties')}* [${message(code:'fc.points')}]:</label>
                                    <br/>
                                    <input type="text" id="flightTestOtherPenalties" name="flightTestOtherPenalties" value="${fieldValue(bean:testInstance,field:'flightTestOtherPenalties')}" tabIndex="1"/>
                                </p>
		                    </fieldset>
		                </g:if>
                        <table>
                            <tbody>
                                <tr>
                                    <td class="detailtitle">${message(code:'fc.flightresults.checkpointpenalties')}:</td>
                                    <td>${testInstance.flightTestCheckPointPenalties} ${message(code:'fc.points')}</td>
                                </tr>
                                <g:if test="${testInstance.flightTestTakeoffMissed}">
                                	<tr>
                                    	<td class="detailtitle">${message(code:'fc.flighttest.takeoffmissed')}:</td>
                                        <td>${testInstance.GetFlightTestTakeoffMissedPoints()} ${message(code:'fc.points')}</td>
                                	</tr>
                                </g:if>
                                <g:if test="${testInstance.flightTestBadCourseStartLanding}">
                                	<tr>
                                    	<td class="detailtitle">${message(code:'fc.flighttest.badcoursestartlanding')}:</td>
                                        <td>${testInstance.GetFlightTestBadCourseStartLandingPoints()} ${message(code:'fc.points')}</td>
                                	</tr>
                                </g:if>
                                <g:if test="${testInstance.flightTestLandingTooLate}">
                                	<tr>
                                    	<td class="detailtitle">${message(code:'fc.flighttest.landingtolate')}:</td>
                                        <td>${testInstance.GetFlightTestLandingToLatePoints()} ${message(code:'fc.points')}</td>
                                	</tr>
                                </g:if>
                                <g:if test="${testInstance.flightTestGivenTooLate}">
                                	<tr>
                                    	<td class="detailtitle">${message(code:'fc.flighttest.giventolate')}:</td>
                                        <td>${testInstance.GetFlightTestGivenToLatePoints()} ${message(code:'fc.points')}</td>
                                	</tr>
                                </g:if>
                                <g:if test="${testInstance.flightTestOtherPenalties > 0}">
                                    <tr>
                                        <td class="detailtitle">${message(code:'fc.flighttest.otherpenalties')}:</td>
                                        <td>${testInstance.flightTestOtherPenalties} ${message(code:'fc.points')}</td>
                                    </tr>
                                </g:if>
                                <tr>
                                    <td class="detailtitle">${message(code:'fc.penalties.total')}:</td>
                                    <g:set var="points_class" value="points"/>
                                    <g:if test="${!testInstance.flightTestPenalties}">
                                        <g:set var="points_class" value="zeropoints"/>
                                    </g:if>
                                    <td class="${points_class}">${testInstance.flightTestPenalties} ${message(code:'fc.points')}</td>
                                </tr>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <td colspan="2">
                                        <g:if test="${!testInstance.flightTestComplete}">
                                            <g:if test="${testInstance.flightTestCheckPointsComplete}">
                                                <g:actionSubmit action="flightresultscomplete" value="${message(code:'fc.flightresults.complete')}" tabIndex="2"/>
					                        	<g:actionSubmit action="flightresultssave" value="${message(code:'fc.save')}" tabIndex="3"/>
                                            </g:if>
                                            <g:actionSubmit action="importresults" value="${message(code:'fc.flightresults.aflosimport')}" tabIndex="4"/>
                                            <g:actionSubmit action="viewimporterrors" value="${message(code:'fc.flightresults.viewimporterrors')}" tabIndex="5"/>
                                            <g:actionSubmit action="setnoflightresults" value="${message(code:'fc.flightresults.setnoresults')}" tabIndex="6"/>
                                        </g:if>
                                        <g:else>
                                            <g:actionSubmit action="flightresultsreopen" value="${message(code:'fc.flightresults.reopen')}" tabIndex="7"/>
                                        </g:else>
				                        <g:actionSubmit action="printflightresults" value="${message(code:'fc.print')}" tabIndex="8"/>
			                        	<g:actionSubmit action="cancel" value="${message(code:'fc.cancel')}" tabIndex="9"/>
                                    </td>
                                </tr>
                            </tfoot>
                        </table>
                    </g:form>
                </div>
            </div>
        </div>
    </body>
</html>