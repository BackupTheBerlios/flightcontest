<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>${message(code:'fc.contestdaytask.selectnavtesttask')}</title>
    </head>
    <body>
        <g:mainnav link="${createLink(controller:'contest')}" controller="contestDayTask" />
        <div class="box">
            <g:viewmsg msg="${flash.message}" error="${flash.error}"/>
            <div class="box boxborder" >
                <h2>${message(code:'fc.contestdaytask.selectnavtesttask')}</h2>
                <div class="block" id="forms" >
                    <g:form method="post" params="['crewTestInstanceIds':crewTestInstanceIds]" >
                        <table>
                            <table>
                                <tbody>
                                    <tr>
                                        <td class="detailtitle">${message(code:'fc.navtesttask.from')}:</td>
                                        <td><g:contestday var="${contestDayTaskInstance?.contestday}" link="${createLink(controller:'contestDay',action:'show')}"/></td>
                                    </tr>
                                    <tr>
                                        <td/>
                                        <td><g:contestdaytask var="${contestDayTaskInstance}" link="${createLink(controller:'contestDayTask',action:'listcrewtests')}"/></td>
                                    </tr>
                                    <tr>
                                        <td/>
                                        <td><g:navtest var="${contestDayTaskInstance.navtest}" link="${createLink(controller:'navTest',action:'show')}"/></td>
                                    </tr>
                                </tbody>
                            </table>
                        </table>
                        <table>
                            <tbody>
                                <tr>
                                    <td class="detailtitle"><label for="owner">${message(code:'fc.navtesttask')}:</label></td>
                                    <td><g:select optionKey="id" optionValue="${{it.name()}}" from="${NavTestTask.findAllByNavtest(contestDayTaskInstance.navtest)}" name="navtesttask.id" value="${contestDayTaskInstance?.navtest?.id}" ></g:select></td>
                                </tr> 
                                <tr>
                                    <td class="detailtitle">${message(code:'fc.contestdaytask.selectnavtesttask.tocrews')}:</td>
                                    <td>
                                        <g:each var="crewTestInstanceId" in="${flash.crewTestInstanceIds}">
                                            <g:if test="${crewTestInstanceId}">
                                                <g:set var="crewTestInstance" value="${CrewTest.get(crewTestInstanceId)}"/>
                                                <g:crew var="${crewTestInstance.crew}" link="${createLink(controller:'crew',action:'show')}"/>
                                                <g:if test="${crewTestInstance.navtesttask}">
                                                     (<g:navtesttask var="${crewTestInstance.navtesttask}" link="${createLink(controller:'navTestTask',action:'show')}"/>)
                                                </g:if>
                                                <br/>                                                
                                            </g:if>
                                        </g:each>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <input type="hidden" name="id" value="${contestDayTaskInstance?.id}" />
                        <g:actionSubmit action="setnavtesttask" value="${message(code:'fc.assign')}" />
                        <g:actionSubmit action="listcrewtests" value="${message(code:'fc.cancel')}" />
                    </g:form>
                </div>
            </div>
        </div>
    </body>
</html>