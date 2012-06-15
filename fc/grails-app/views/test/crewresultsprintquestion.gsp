<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>${message(code:'fc.crewresults.print')} ${testInstance.GetStartNum()} - ${testInstance?.task.name()} (${message(code:'fc.version')} ${testInstance.GetCrewResultsVersion()})</title>
    </head>
    <body>
        <g:mainnav link="${createLink(controller:'contest')}" />
        <div class="box">
            <g:viewmsg msg="${flash.message}" error="${flash.error}"/>
            <div class="box boxborder" >
                <h2>${message(code:'fc.crewresults.print')} ${testInstance.GetStartNum()} - ${testInstance?.task.name()} (${message(code:'fc.version')} ${testInstance.GetCrewResultsVersion()})<g:if test="${testInstance.AreResultsProvisional(testInstance.GetResultSettings())}"> [${message(code:'fc.provisional')}]</g:if></h2>
                <div class="block" id="forms">
                    <g:form params="${['crewresultsprintquestionReturnAction':crewresultsprintquestionReturnAction,'crewresultsprintquestionReturnController':crewresultsprintquestionReturnController,'crewresultsprintquestionReturnID':crewresultsprintquestionReturnID]}">
                        <table>
                            <tbody>
                                <tr>
                                    <td class="detailtitle">${message(code:'fc.crew')}:</td>
                                    <td>${testInstance.crew.name}</td>
                                </tr>
		                    	<g:if test="${testInstance.crew.team}">
	                                <tr>
	                                    <td class="detailtitle">${message(code:'fc.crew.team')}:</td>
	                                    <td>${testInstance.crew.team.name}</td>
	                                </tr>
    		                    </g:if>
		                    	<g:if test="${testInstance.task.contest.resultClasses && testInstance.crew.resultclass}">
	                                <tr>
	                                	<td class="detailtitle">${message(code:'fc.crew.resultclass')}:</td>
	                                	<td>${testInstance.crew.resultclass.name}</td>
    		                        </tr>
    		                    </g:if>
                                <tr>
                                    <td class="detailtitle">${message(code:'fc.aircraft.registration')}:</td>
                                    <g:if test="${testInstance.crew.aircraft}">
                                        <td>${testInstance.crew.aircraft.registration}</td>
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
                            </tbody>
                        </table>
                        <fieldset>
                            <p>
	                           	<g:if test="${testInstance.IsPlanningTestRun()}">
	                                <div>
	                                    <g:checkBox name="printPlanningResults" value="${testInstance.printPlanningResults}" />
	                                    <label>${message(code:'fc.planningresults')} (${message(code:'fc.version')} ${testInstance.GetPlanningTestVersion()})<g:if test="${!testInstance.planningTestComplete}"> [${message(code:'fc.provisional')}]</g:if></label>
	                                </div>
        	                    </g:if>
    	                       	<g:if test="${testInstance.IsFlightTestRun()}">
	                                <div>
	                                    <g:checkBox name="printFlightResults" value="${testInstance.printFlightResults}" />
	                                    <label>${message(code:'fc.flightresults')} (${message(code:'fc.version')} ${testInstance.GetFlightTestVersion()})<g:if test="${!testInstance.flightTestComplete}"> [${message(code:'fc.provisional')}]</g:if></label>
	                                </div>
	                            </g:if>
    	                       	<g:if test="${testInstance.IsObservationTestRun()}">
	                                <div>
	                                    <g:checkBox name="printObservationResults" value="${testInstance.printObservationResults}" />
	                                    <label>${message(code:'fc.observationresults')} (${message(code:'fc.version')} ${testInstance.GetObservationTestVersion()})<g:if test="${!testInstance.observationTestComplete}"> [${message(code:'fc.provisional')}]</g:if></label>
	                                </div>
	                            </g:if>
    	                       	<g:if test="${testInstance.IsLandingTestRun()}">
	                                <div>
	                                    <g:checkBox name="printLandingResults" value="${testInstance.printLandingResults}" />
	                                    <label>${message(code:'fc.landingresults')} (${message(code:'fc.version')} ${testInstance.GetLandingTestVersion()})<g:if test="${!testInstance.landingTestComplete}"> [${message(code:'fc.provisional')}]</g:if></label>
	                                </div>
	                            </g:if>
    	                       	<g:if test="${testInstance.IsSpecialTestRun()}">
	                                <div>
	                                    <g:checkBox name="printSpecialResults" value="${testInstance.printSpecialResults}" />
	                                    <label>${message(code:'fc.specialresults')} (${message(code:'fc.version')} ${testInstance.GetSpecialTestVersion()})<g:if test="${!testInstance.specialTestComplete}"> [${message(code:'fc.provisional')}]</g:if></label>
	                                </div>
	                            </g:if>
                            </p>
                        </fieldset>
                        <input type="hidden" name="id" value="${testInstance?.id}" />
                        <g:actionSubmit action="printcrewresults" value="${message(code:'fc.print')}" />
                        <g:actionSubmit action="cancel" value="${message(code:'fc.cancel')}" />
                    </g:form>
                </div>
            </div>
        </div>
    </body>
</html>