<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>${message(code:'fc.crew.import.selectfilename')}</title>
    </head>
    <body>
        <g:mainnav link="${createLink(controller:'contest')}" controller="crew" />
        <div class="box">
            <g:viewmsg msg="${flash.message}" error="${flash.error}"/>
            <div class="box boxborder" >
                <h2>${message(code:'fc.crew.import.selectfilename')}</h2>
                <div class="block" id="forms" >
                	<g:uploadForm action="importcrews">
                    	<div>
    						<input type="file" size="80" accept="application/msexcel/*.xls" name="loadfile" tabIndex="1"/>
                    	</div>
                    	<div>
	    					<input type="submit" value="${message(code:'fc.import')}" tabIndex="2"/>
		                    <g:actionSubmit action="list" value="${message(code:'fc.cancel')}" tabIndex="3"/>
                    	</div>
					</g:uploadForm>
                </div>
            </div>
        </div>
    </body>
</html>