<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>${message(code:'fc.resultclass.resultsettings')}}</title>
    </head>
    <body>
        <g:mainnav link="${createLink(controller:'contest')}" />
        <div class="box">
            <g:viewmsg msg="${flash.message}" error="${flash.error}"/>
            <div class="box boxborder" >
                <h2>${message(code:'fc.resultclass.resultsettings')}</h2>
                <div class="block" id="forms">
                    <g:form params="${['editresultsettingsReturnAction':editresultsettingsReturnAction,'editresultsettingsReturnController':editresultsettingsReturnController,'editresultsettingsReturnID':editresultsettingsReturnID]}">
                        <fieldset>
                            <p>
                                <g:each var="task_instance" in="${Task.findAllByContest(resultclassInstance.contest,[sort:"id"])}">
                                    <g:set var="task_selected" value="${false}"/>
                                    <g:each var="contest_task_result" in="${resultclassInstance.contestTaskResults.split(',')}">
                                        <g:if test="${contest_task_result == 'task_' + task_instance.id.toString()}">
                                            <g:set var="task_selected" value="${true}"/>
                                        </g:if>
                                    </g:each>
                                    <div>
                                        <g:checkBox name="task_${task_instance.id}" value="${task_selected}" />
                                        <label>${task_instance.name()}</label>
                                    </div>
                                </g:each>
                            </p>
                        </fieldset>
                        <fieldset>
                            <p>
                            	<g:if test="${resultclassInstance.IsPlanningTestRun()}">
	                                <div>
	                                    <g:checkBox name="contestPlanningResults" value="${resultclassInstance.contestPlanningResults}" />
	                                    <label>${message(code:'fc.planningresults')}</label>
	                                </div>
                                </g:if>
                            	<g:if test="${resultclassInstance.IsFlightTestRun()}">
	                                <div>
	                                    <g:checkBox name="contestFlightResults" value="${resultclassInstance.contestFlightResults}" />
	                                    <label>${message(code:'fc.flightresults')}</label>
	                                </div>
                                </g:if>
                            	<g:if test="${resultclassInstance.IsObservationTestRun()}">
	                                <div>
	                                    <g:checkBox name="contestObservationResults" value="${resultclassInstance.contestObservationResults}" />
	                                    <label>${message(code:'fc.observationresults')}</label>
	                                </div>
                                </g:if>
                            	<g:if test="${resultclassInstance.IsLandingTestRun()}">
	                                <div>
	                                    <g:checkBox name="contestLandingResults" value="${resultclassInstance.contestLandingResults}" />
	                                    <label>${message(code:'fc.landingresults')}</label>
	                                </div>
                                </g:if>
                            	<g:if test="${resultclassInstance.IsSpecialTestRun()}">
	                                <div>
	                                    <g:checkBox name="contestSpecialResults" value="${resultclassInstance.contestSpecialResults}" />
	                                    <label>${message(code:'fc.specialresults')}</label>
	                                </div>
                                </g:if>
                            </p>
                        </fieldset>
                        <fieldset>
                            <p>
                                <div>
                                    <g:checkBox name="contestPrintLandscape" value="${resultclassInstance.contestPrintLandscape}" />
                                    <label>${message(code:'fc.printlandscape')}</label>
                                </div>
                                <div>
                                    <g:checkBox name="contestPrintTaskDetails" value="${resultclassInstance.contestPrintTaskDetails}" />
                                    <label>${message(code:'fc.printtaskdetails')}</label>
                                </div>
                                <div>
                                    <g:checkBox name="contestPrintTaskNamesInTitle" value="${resultclassInstance.contestPrintTaskNamesInTitle}" />
                                    <label>${message(code:'fc.printtasknamesinttitle')}</label>
                                </div>
                            </p>
                        </fieldset>
                        <input type="hidden" name="id" value="${resultclassInstance?.id}"/>
                        <input type="hidden" name="version" value="${resultclassInstance?.version}"/>
                        <g:actionSubmit action="update" value="${message(code:'fc.update')}" tabIndex="1"/>
                        <g:actionSubmit action="cancel" value="${message(code:'fc.cancel')}" tabIndex="2"/>
                    </g:form>
                </div>
            </div>
        </div>
    </body>
</html>