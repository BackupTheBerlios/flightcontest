<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>${message(code:'fc.contest.show')}</title>
    </head>
    <body>
        <g:mainnav link="${createLink(controller:'contest')}" controller="contest" />
        <div class="box">
            <g:viewmsg msg="${flash.message}" error="${flash.error}"/>
            <div class="box boxborder" >
                <h2>${message(code:'fc.contest.show')}</h2>
                <div class="block" id="forms" >
                    <g:form>
                        <table>
                            <tbody>
                                <tr>
                                    <td class="detailtitle">${message(code:'fc.title')}:</td>
                                    <td>${fieldValue(bean:contestInstance, field:'title')}</td>
                                </tr>
                                <tr>
                                    <td class="detailtitle">${message(code:'fc.contestday.list')}:</td>
                                    <td>
                                        <g:each var="contestDayInstance" in="${ContestDay.findAllByContest(contestInstance)}">
                                            <g:contestday var="${contestDayInstance}" link="${createLink(controller:'contestDay',action:'show')}"/>
                                            <br/>
                                        </g:each>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <input type="hidden" name="id" value="${contestInstance?.id}" />
                        <g:actionSubmit action="edit" value="${message(code:'fc.edit')}" />
                        <g:actionSubmit action="createday" value="${message(code:'fc.contestday.add1')}" />
                    </g:form>
                </div>
            </div>
        </div>
    </body>
</html>