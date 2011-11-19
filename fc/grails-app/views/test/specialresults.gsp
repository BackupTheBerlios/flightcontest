<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>${message(code:'fc.specialresults')} ${testInstance.viewpos+1}</title>
    </head>
    <body>
        <g:mainnav link="${createLink(controller:'contest')}" />
        <div class="box">
            <g:viewmsg msg="${flash.message}" error="${flash.error}"/>
            <div class="box boxborder" >
                <h2>${message(code:'fc.specialresults')} ${testInstance.viewpos+1} - ${testInstance?.task.name()}</h2>
                <div class="block" id="forms" >
                    <g:form id="${testInstance.id}" method="post" >
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
                                    <td><g:crew var="${testInstance.crew}" link="${createLink(controller:'crew',action:'edit')}"/><g:if test="${testInstance.crew.mark}"></g:if></td>
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
                        <g:if test="${!testInstance.specialTestComplete}">
	                        <fieldset>
	                            <p>
	                                <label>${message(code:'fc.specialresults')}* [${message(code:'fc.points')}]:</label>
	                                <br/>
	                                <input type="text" id="specialTestPenalties" name="specialTestPenalties" value="${fieldValue(bean:testInstance,field:'specialTestPenalties')}"/>
	                            </p>
	                        </fieldset>
                        </g:if>
   	                    <g:else>
                               <table>
                                   <tbody>
                                       <tr>
                                           <td class="detailtitle">${message(code:'fc.specialresults')}:</td>
                                           <td>${testInstance.specialTestPenalties} ${message(code:'fc.points')}</td>
                                       </tr>
                                   </tbody>
                               </table>
                        </g:else>
                        <g:if test="${!testInstance.specialTestComplete}">
                        	<g:actionSubmit action="specialresultscomplete" value="${message(code:'fc.specialresults.complete')}" />
                        	<g:actionSubmit action="specialresultssave" value="${message(code:'fc.save')}" />
                        </g:if>
                        <g:else>
                        	<g:actionSubmit action="specialresultsreopen" value="${message(code:'fc.specialresults.reopen')}" />
                        </g:else>
                        <g:actionSubmit action="cancel" value="${message(code:'fc.cancel')}" />
                    </g:form>
                </div>
            </div>
        </div>
    </body>
</html>