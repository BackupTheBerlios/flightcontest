<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>${message(code:'fc.crew.create')}</title>         
    </head>
    <body>
        <g:mainnav link="${createLink(controller:'contest')}" controller="crew" />
        <div class="box">
            <g:viewmsg msg="${flash.message}" error="${flash.error}"/>
            <div class="box boxborder" >
                <h2>${message(code:'fc.crew.create')}</h2>
                <g:hasErrors bean="${crewInstance}">
                    <div class="errors">
                        <g:renderErrors bean="${crewInstance}" />
                    </div>
                </g:hasErrors>
                <div class="block" id="forms" >
                    <g:form method="post" >
                        <fieldset>
                            <p>
                                <label>${message(code:'fc.crew.startnum')}*:</label>
                                <br/>
                                <input type="text" id="startNum" name="startNum" value="${fieldValue(bean:crewInstance,field:'startNum')}" tabIndex="1"/>
                            </p>
                            <p>
                                <label>${message(code:'fc.crew.name')}*:</label>
                                <br/>
                                <input type="text" id="name" name="name" value="${fieldValue(bean:crewInstance,field:'name')}" tabIndex="2"/>
                            </p>
                            <p>
                                <label>${message(code:'fc.crew.team')}:</label>
                                <br/>
                                <input type="text" id="teamname" name="teamname" value="${fieldValue(bean:crewInstance,field:'teamname')}" tabIndex="3"/>
                            </p>
                            <g:if test="${resultClasses}">
	                            <p>
	                                <label>${message(code:'fc.crew.resultclass')}:</label>
	                                <br/>
	                                <input type="text" id="resultclassname" name="resultclassname" value="${fieldValue(bean:crewInstance,field:'resultclassname')}" tabIndex="4"/>
	                            </p>
	                        </g:if>
                        </fieldset>
                        <fieldset>
                            <legend>${message(code:'fc.crew.aircraft')}</legend>
                            <p>
                                <label>${message(code:'fc.aircraft.registration')}:</label>
                                <br/>
                                <input type="text" id="registration" name="registration" value="${fieldValue(bean:crewInstance,field:'registration')}" tabIndex="5"/>
                            </p>
                            <p>
                                <label>${message(code:'fc.aircraft.type')}:</label>
                                <br/>
                                <input type="text" id="type" name="type" value="${fieldValue(bean:crewInstance,field:'type')}" tabIndex="6"/>
                            </p>
                            <p>
                                <label>${message(code:'fc.aircraft.colour')}:</label>
                                <br/>
                                <input type="text" id="colour" name="colour" value="${fieldValue(bean:crewInstance,field:'colour')}" tabIndex="7"/>
                            </p>
                            <p>
                                <label>${message(code:'fc.tas')}* [${message(code:'fc.knot')}]:</label>
                                <br/>
                                <input type="text" id="tas" name="tas" value="${fieldValue(bean:crewInstance,field:'tas')}" tabIndex="8"/>
                            </p>
                        </fieldset>
                        <g:actionSubmit action="save" value="${message(code:'fc.create')}" tabIndex="9"/>
                        <g:actionSubmit action="cancel" value="${message(code:'fc.cancel')}" tabIndex="10"/>
                    </g:form>
                </div>
            </div>
        </div>
    </body>
</html>