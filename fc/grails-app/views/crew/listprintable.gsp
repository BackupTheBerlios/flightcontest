<html>
    <head>
        <style type="text/css">
            @page {
                @top-center {
                    content: "${message(code:'fc.program.printpage')} " counter(page)
                }
                @bottom-center {
                    content: "${message(code:'fc.program.printfoot.left')} - ${message(code:'fc.program.printfoot.right')}"
                }
            }
        </style>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <meta name="layout" content="main" />
        <title>${message(code:'fc.crew.list')}</title>
    </head>
    <body>
        <div class="box">
            <div class="box boxborder" >
                <h2>${message(code:'fc.crew.list')} (${crewInstanceList.size()})</h2>
                <div class="block" id="forms" >
                    <g:form>
                         <table width="100%" border="1" cellspacing="0" cellpadding="2">
                            <thead>
                                <tr>
                                    <th>${message(code:'fc.crew.startnum.short')}</th>
                                    <th>${message(code:'fc.crew.name')}</th>
                                    <th>${message(code:'fc.crew.team')}</th>
                                    <g:if test="${resultClasses}">
                                        <th>${message(code:'fc.crew.resultclass')}</th>
                                    </g:if>
                                    <th>${message(code:'fc.crew.aircraft')}</th>
                                    <th>${message(code:'fc.tas')}</th>
                                </tr>
                            </thead>
                            <tbody>
                                <g:each in="${crewInstanceList}" status="i" var="crewInstance">
                                    <tr class="${(i % 2) == 0 ? 'odd' : ''}">
                                        <td>${crewInstance.startNum}</td>
                                        <td>${crewInstance.name}</td>
                                        <g:if test="${crewInstance.team}">                          
                                            <td>${crewInstance.team?.name}</td>
		                                </g:if>
		                                <g:else>
		                                    <td>-</td>
		                                </g:else>
                                        <g:if test="${resultClasses}">
                                            <g:if test="${crewInstance.resultclass}">                          
                                                <td>${crewInstance.resultclass?.name}</td>
		                                    </g:if>
		                                    <g:else>
		                                        <td>-</td>
		                                    </g:else>
                                        </g:if>
                                        <td><g:if test="${crewInstance.aircraft}">${crewInstance.aircraft.registration}<g:if test="${crewInstance.aircraft?.user1 && crewInstance.aircraft?.user2}"> *</g:if></g:if><g:else>${message(code:'fc.noassigned')}</g:else></td>
                                        <td>${fieldValue(bean:crewInstance, field:'tas')}${message(code:'fc.knot')}</td>
                                    </tr>
                                </g:each>
                            </tbody>
                        </table>
                    </g:form>
                </div>
            </div>
        </div>
    </body>
</html>