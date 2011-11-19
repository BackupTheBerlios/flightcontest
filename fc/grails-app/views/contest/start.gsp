<html>
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <meta name="layout" content="main" />
        <title>${message(code:'fc.contest')}</title>
    </head>
    <body>
        <g:if test="${contestInstance}">
            <g:mainnav link="${createLink(controller:'contest')}" controller="contest" edit="${message(code:'fc.contest.settings')}" id="${contestInstance.id}" />
        </g:if> <g:else>
            <g:mainnav link="${createLink(controller:'contest')}" controller="global" />
        </g:else>
        <div class="box">
            <g:viewmsg msg="${flash.message}" error="${flash.error}"/>
            <g:if test="${contestInstance}">
                <table>
                    <thead>
                        <tr>
                            <th colspan="7" class="table-head">${message(code:'fc.contest')}</th>
                        </tr>
                    </thead>
                    <tbody>
                        <g:each in="${contestDayInstanceList}" status="j" var="contestDayInstance">
                            <tr class="">
                                <td colspan=7><g:contestday var="${contestDayInstance}" link="${createLink(controller:'contestDay',action:'show')}"/></td>
                            </tr>
                            <g:each in="${contestDayInstance.contestdaytasks}" status="k" var="contestDayTaskInstance">
                                <tr class="odd">
                                    <td/>
                                    
                                    <td colspan=1><g:contestdaytask var="${contestDayTaskInstance}" link="${createLink(controller:'contestDayTask',action:'show')}"/></td>
    
                                    <g:if test="${contestDayTaskInstance.planningtest}">
                                        <td colspan=1><g:planningtest var="${contestDayTaskInstance.planningtest}" link="${createLink(controller:'planningTest',action:'show')}"/></td>
                                    </g:if> <g:else>
                                        <td class="add" colspan=1><g:link controller="planningTest" params="['contestdaytask.id':contestDayTaskInstance?.id,'contestdaytaskid':contestDayTaskInstance?.id]" action="create">${message(code:'fc.planningtest.add')}</g:link></td>
                                    </g:else>
    
                                    <g:if test="${contestDayTaskInstance.flighttest}">
                                        <td colspan=1><g:flighttest var="${contestDayTaskInstance.flighttest}" link="${createLink(controller:'flightTest',action:'show')}"/></td>
                                    </g:if> <g:else>
                                        <td class="add" colspan=1><g:link controller="flightTest" params="['contestdaytask.id':contestDayTaskInstance?.id,'contestdaytaskid':contestDayTaskInstance?.id]" action="create">${message(code:'fc.flighttest.add')}</g:link></td>
                                    </g:else>
    
                                    <g:if test="${contestDayTaskInstance.landingtest}">
                                        <td colspan=1><g:landingtest var="${contestDayTaskInstance.landingtest}" link="${createLink(controller:'landingTest',action:'show')}"/></td>
                                    </g:if> <g:else>
                                        <td class="add" colspan=1><g:link controller="landingTest" params="['contestdaytask.id':contestDayTaskInstance?.id,'contestdaytaskid':contestDayTaskInstance?.id]" action="create">${message(code:'fc.landingtest.add')}</g:link></td>
                                    </g:else>
                                        
                                    <g:if test="${contestDayTaskInstance.specialtest}">
                                        <td colspan=1><g:specialtest var="${contestDayTaskInstance.specialtest}" link="${createLink(controller:'specialTest',action:'show')}"/></td>
                                    </g:if> <g:else>
                                        <td class="add" colspan=1><g:link controller="specialTest" params="['contestdaytask.id':contestDayTaskInstance?.id,'contestdaytaskid':contestDayTaskInstance?.id]" action="create">${message(code:'fc.specialtest.add')}</g:link></td>
                                    </g:else>
                                </tr>
                            </g:each>
                            <tr class="add">
                                <td/>
                                <td colspan=7><g:link controller="contestDayTask" params="['contestday.id':contestDayInstance?.id,'contestdayid':contestDayInstance?.id]" action="create">${message(code:'fc.contestdaytask.add')}</g:link></td>
                            </tr>
                        </g:each>
                        <tr class="add">
                            <td colspan=7><g:link controller="contestDay" params="['contest.id':contestInstance?.id,'contestid':contestInstance?.id]" action="create">${message(code:'fc.contestday.add')}</g:link></td>
                        </tr>
                    </tbody>
                </table>
            </g:if>
            <p>${message(code:'fc.programfoot')}</p>
        </div>
    </body>
</html>