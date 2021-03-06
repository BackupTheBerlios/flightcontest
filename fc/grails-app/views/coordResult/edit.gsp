<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>${message(code:'fc.coordresult.edit',args:[params.name])}</title>
    </head>
    <body>
        <g:mainnav link="${createLink(controller:'contest')}"/>
        <div class="box">
            <g:viewmsg msg="${flash.message}" error="${flash.error}"/>
            <div class="box boxborder" >
                <h2>${message(code:'fc.coordresult.edit',args:[params.name])}</h2>
                <g:hasErrors bean="${coordResultInstance}">
                    <div class="errors">
                        <g:renderErrors bean="${coordResultInstance}" />
                    </div>
                </g:hasErrors>
                <div class="block" id="forms" >
                    <g:form>
                        <table>
                            <tbody>
                                <tr>
                                    <td class="detailtitle">${message(code:'fc.coordresult.from')}:</td>
                                    <td><g:test var="${coordResultInstance?.test}" link="${createLink(controller:'test',action:'flightresults')}"/></td>
                                </tr>
                                <tr>
                                    <td class="detailtitle">${message(code:'fc.title')}:</td>
                                    <td>${coordResultInstance.titleCode()}</td>
                                </tr>
                                <tr>
                                    <td class="detailtitle">${message(code:'fc.aflos.checkpoint')}:</td>
                                    <td>${coordResultInstance.mark}</td>
                                </tr>
                            </tbody>
                        </table>
                        <fieldset>
                            <legend>${message(code:'fc.test.results.plan')}</legend>
                            <table>
                                <tbody>
                                    <tr>
                                        <td class="detailtitle">${message(code:'fc.cptime')}:</td>
                                        <td>${FcMath.TimeStr(coordResultInstance.planCpTime)}</td>
                                    </tr>
                                    <tr>
                                        <td class="detailtitle">${message(code:'fc.altitude')}:</td>
                                        <td>${coordResultInstance.altitude}${message(code:'fc.foot')}</td>
                                    </tr>
                                </tbody>
                            </table>
                        </fieldset>
                        <fieldset>
                            <legend>${message(code:'fc.test.results.given')}</legend>
                            <g:if test="${!coordResultInstance.test.flightTestComplete}">
                                 <p>
                                   	<div>
                                   		<g:checkBox name="resultCpNotFound" value="${coordResultInstance.resultCpNotFound}" />
                                       	<label>${message(code:'fc.flighttest.cpnotfound')}</label>
                                   	</div>
                                 </p>
                                 <p>
                                    <label>${message(code:'fc.cptime')}* [${message(code:'fc.time.hminsec')}]:</label>
                                    <br/>
                                    <input type="text" id="resultCpTimeInput" name="resultCpTimeInput" value="${fieldValue(bean:coordResultInstance,field:'resultCpTimeInput')}" tabIndex="2"/>
                                 </p>
                                <p>
                                    <label>${message(code:'fc.altitude')}* [${message(code:'fc.foot')}]:</label>
                                    <br/>
                                    <input type="text" id="resultAltitude" name="resultAltitude" value="${fieldValue(bean:coordResultInstance,field:'resultAltitude')}" tabIndex="3"/>
                                </p>
                                <g:if test="${coordResultInstance.type != CoordType.SP}">
                                    <p>
                                        <label>${message(code:'fc.badcoursenum')}*:</label>
                                        <br/>
                                        <input type="text" id="resultBadCourseNum" name="resultBadCourseNum" value="${fieldValue(bean:coordResultInstance,field:'resultBadCourseNum')}" tabIndex="4"/>
                                    </p>
                                </g:if>
                            </g:if>
                            <g:else>
                                <table>
                                    <tbody>
                                        <g:if test="${coordResultInstance.resultCpNotFound}">
                                            <tr>
                                                <td colspan="2">${message(code:'fc.flighttest.cpnotfound')}</td>
                                            </tr>
                                        </g:if>
                                        <g:else>
                                            <tr>
                                                <td class="detailtitle">${message(code:'fc.cptime')}:</td>
                                                <td>${coordResultInstance.resultCpTimeInput}</td>
                                            </tr>
                                        </g:else>
                                        <tr>
                                            <td class="detailtitle">${message(code:'fc.altitude')}:</td>
                                            <td>${coordResultInstance.resultAltitude}${message(code:'fc.foot')}</td>
                                        </tr>
                                        <g:if test="${coordResultInstance.type != CoordType.SP}">
                                            <tr>
                                                <td class="detailtitle">${message(code:'fc.badcoursenum')}:</td>
                                                <td>${coordResultInstance.resultBadCourseNum}</td>
                                            </tr>
                                        </g:if>
                                    </tbody>
                                </table>
                            </g:else>
                        </fieldset>
                        <input type="hidden" name="id" value="${coordResultInstance.id}" />
                        <input type="hidden" name="testid" value="${coordResultInstance.test.id}" />
                        <input type="hidden" name="name" value="${params.name}" />
                        <input type="hidden" name="next" value="${params.next}" />
                        <g:if test="${!coordResultInstance.test.flightTestComplete}">
                        	<g:if test="${params.next}">
                            	<g:actionSubmit action="updatenext" value="${message(code:'fc.savenext')}" tabIndex="5"/>
                            </g:if>
                            <g:actionSubmit action="updatereturn" value="${message(code:'fc.saveend')}" tabIndex="6"/>
                            <g:actionSubmit action="reset" value="${message(code:'fc.reset')}" onclick="return confirm('${message(code:'fc.areyousure')}');" tabIndex="7"/>
                        </g:if>
                        <g:actionSubmit action="cancel" value="${message(code:'fc.cancel')}" tabIndex="8"/>
                    </g:form>
                </div>
            </div>
        </div>
    </body>
</html>