<html>
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <meta name="layout" content="main" />
        <title>${message(code:'fc.resultclass.list')}</title>
    </head>
    <body>
        <g:mainnav link="${createLink(controller:'contest')}" controller="resultClass" newaction="${message(code:'fc.resultclass.new')}" printaction="${message(code:'fc.resultclass.print')}" />
        <div class="box">
            <g:viewmsg msg="${flash.message}" error="${flash.error}"/>
            <table>
                <thead>
                    <tr>
                        <th colspan="5" class="table-head">${message(code:'fc.resultclass.list')} (${resultclassInstanceList.size()})</th>
                    </tr>
                    <tr>
                       <th>${message(code:'fc.resultclass.name')}</th>
                       <th>${message(code:'fc.resultclass.contesttitle')}</th>
                       <th>${message(code:'fc.crew')}</th>
                       <th>${message(code:'fc.crew.aircraft')}</th>
                       <th>${message(code:'fc.tas')}</th>
                    </tr>
                </thead>
                <tbody>
                    <g:each var="resultclass_instance" in="${resultclassInstanceList}" status="i" >
                    	<g:if test="${Crew.findByResultclass(resultclass_instance)}">
							<g:each var="crew_instance" in="${Crew.findAllByResultclass(resultclass_instance,[sort:'name'])}" status="j" >
		                        <tr class="${(i % 2) == 0 ? 'odd' : ''}">
	                               	<g:if test="${j==0}">
			                            <td><g:resultclass var="${resultclass_instance}" link="${createLink(controller:'resultClass',action:'edit')}"/></td>
			                            <td>${resultclass_instance.contestTitle}</td>
	                                </g:if>
	                                <g:else>
	                                	<td/>
	                                	<td/>
	                                </g:else>
	                                <td><g:crew var="${crew_instance}" link="${createLink(controller:'crew',action:'edit')}"/></td></td>
	                                <td><g:aircraft var="${crew_instance.aircraft}" link="${createLink(controller:'aircraft',action:'edit')}"/></td></td>
	                                <td>${fieldValue(bean:crew_instance, field:'tas')}${message(code:'fc.knot')}</td>
		                        </tr>
	                        </g:each>
	                	</g:if>
	                	<g:else>
	                		<tr class="${(i % 2) == 0 ? 'odd' : ''}">
	                			<td><g:resultclass var="${resultclass_instance}" link="${createLink(controller:'resultClass',action:'edit')}"/></td>
	                			<td>${resultclass_instance.contestTitle}</td>
	                			<td/>
	                			<td/>
	                			<td/>
	                        </tr>
	                	</g:else>
                    </g:each>
                </tbody>
            </table>
            <p>${message(code:'fc.program.foot')}</p>
        </div>
    </body>
</html>