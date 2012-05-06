<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>${contestInstance.GetListTitle(ResultFilter.Team,'fc.contest.listteamresults')}</title>
    </head>
    <body>
        <g:mainnav link="${createLink(controller:'contest')}" controller="task" taskresults="true" />
        <div class="box">
            <g:viewmsg msg="${flash.message}" error="${flash.error}"/>
            <div class="box boxborder" >
                <h2>${contestInstance.GetListTitle(ResultFilter.Team,'fc.contest.listteamresults')}<g:if test="${contestInstance.IsTeamResultsProvisional(contestInstance.GetTeamResultSettings(),contestInstance.teamTaskResults)}"> [${message(code:'fc.provisional')}]</g:if></h2>
                <div class="block" id="forms" >
                    <g:form params="${['positionsReturnAction':positionsReturnAction,'positionsReturnController':positionsReturnController,'positionsReturnID':positionsReturnID]}" >
                        <table>
                            <tbody>
                            	<tr>
				                	<td>${contestInstance.GetResultTitle(contestInstance.GetTeamResultSettings(),false)}</td>
				                </tr>
				            </tbody>
				        </table>
                        <table>
                            <thead>
                                <tr>
                                	<th>${message(code:'fc.test.results.position')}</th>
                                   	<th>${message(code:'fc.team')}</th>
                                   	<th>${message(code:'fc.crew.list')}</th>
                                   	<th>${message(code:'fc.test.results.summary')}</th>
                            	</tr>
                            </thead>
                            <tbody>
                                <g:each var="team_instance" in="${Team.findAllByContest(contestInstance,[sort:'contestPosition'])}" status="i">
                                    <tr class="${(i % 2) == 0 ? 'odd' : ''}">
                                		<g:if test="${!team_instance.IsActiveTeam()}">
                                			<td class="position">${message(code:'fc.disabled')}</td>
                                		</g:if>
                                		<g:elseif test="${team_instance.contestPosition}">
	                                        <td class="position">${team_instance.contestPosition}</td>
	                                    </g:elseif>
	                                    <g:else>
	                                        <td class="position">${message(code:'fc.test.results.position.none')}</td>
	                                    </g:else>
                                        <td><g:team var="${team_instance}" link="${createLink(controller:'team',action:'edit')}"/></td>
                                        <g:set var="team_provisional" value="${false}"/>
                                        <td>
                                        	<g:set var="crew_num" value="${new Integer(0)}"/>
                                        	<g:each var="crew_instance" in="${Crew.findAllByTeamAndDisabled(team_instance,false,[sort:'teamPenalties'])}">
                                        		<g:if test="${crew_instance.IsActiveCrew(ResultFilter.Team) && (crew_num < contestInstance.teamCrewNum)}">
                                        			<g:set var="crew_num" value="${crew_num+1}"/>
			                                        <g:set var="test_provisional" value="${false}"/>
			                                        <g:each var="task_instance" in="${contestInstance.GetResultTasks(contestInstance.teamTaskResults)}">
			                                        	<g:set var="test_instance" value="${Test.findByCrewAndTask(crew_instance,task_instance)}"/>
			                                        	<g:if test="${test_instance.AreResultsProvisional(contestInstance.GetTeamResultSettings())}">
			                                        		<g:set var="test_provisional" value="${true}"/>
					                                        <g:set var="team_provisional" value="${true}"/>
			                                        	</g:if>
					                                </g:each>
                                        			<g:if test="${crew_num > 1}">, </g:if><g:crew var="${crew_instance}" link="${createLink(controller:'crew',action:'edit')}"/> (${crew_instance.GetResultPenalties(contestInstance.GetTeamResultSettings())}<g:if test="${test_provisional}"> [${message(code:'fc.provisional')}]</g:if>)
                                        		</g:if>
                                        	</g:each>
                                        </td>
	                                    <td class="positionpenalties">${team_instance.contestPenalties} ${message(code:'fc.points')}<g:if test="${team_provisional}"> [${message(code:'fc.provisional')}]</g:if></td>
                                    </tr>
                                </g:each>
                            </tbody>
                        </table>
                        <g:actionSubmit action="editteamresultsettings" value="${message(code:'fc.contest.teamresultsettings')}" tabIndex="1"/>
                        <g:actionSubmit action="calculateteampositions" value="${message(code:'fc.results.calculatepositions')}" tabIndex="2"/>
                        <g:actionSubmit action="printteamresults" value="${message(code:'fc.print')}" tabIndex="3"/>
                    </g:form>
                </div>
            </div>
        </div>
    </body>
</html>