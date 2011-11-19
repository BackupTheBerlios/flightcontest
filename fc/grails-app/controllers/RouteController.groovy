class RouteController {
    
	def fcService
	
    def index = { redirect(action:list,params:params) }

    // the delete, save and update actions only accept POST requests
    static allowedMethods = [delete:'POST', save:'POST', update:'POST']

    def list = {
        if (session.lastContest) {
            def routeList = Route.findAllByContest(session.lastContest)
            return [routeInstanceList:routeList]
        }
        return [:]
    }

    def show = {
        def route = fcService.getRoute(params) 
        if (route.instance) {
        	return [routeInstance:route.instance]
        } else {
            flash.message = route.message
            redirect(action:list)
        }
    }

    def edit = {
        def route = fcService.getRoute(params) 
        if (route.instance) {
        	return [routeInstance:route.instance]
        } else {
            flash.message = route.message
            redirect(action:list)
        }
    }

    def update = {
        def route = fcService.updateRoute(params) 
        if (route.saved) {
        	flash.message = route.message
        	redirect(action:show,id:route.instance.id)
        } else if (route.instance) {
        	render(view:'edit',model:[routeInstance:route.instance])
        } else {
        	flash.message = route.message
            redirect(action:edit,id:params.id)
        }
    }

    def create = {
		def route = fcService.createRoute(params)
        return [routeInstance:route.instance]
    }

    def save = {
        def route = fcService.saveRoute(params,session.lastContest) 
        if (route.saved) {
        	flash.message = route.message
        	redirect(action:show,id:route.instance.id)
        } else {
            render(view:'create',model:[routeInstance:route.instance])
        }
    }

    def delete = {
        def route = fcService.deleteRoute(params)
        if (route.deleted) {
        	flash.message = route.message
        	redirect(action:list)
        } else if (route.notdeleted) {
        	flash.message = route.message
            redirect(action:show,id:params.id)
        } else {
        	flash.message = route.message
        	redirect(action:list)
        }
    }
	
	def cancel = {
        def route = fcService.getRoute(params) 
        if (route.instance) {
            redirect(action:show,id:route.instance.id)
        } else {
        	redirect(action:list)
        }
	}
	
	def createroutecoords = {
        def route = fcService.getRoute(params) 
        redirect(controller:'routeCoord',action:'create',params:['route.id':route.instance.id,'routeid':route.instance.id])
	}

    def createsecretroutecoords = {
        def route = fcService.getRoute(params) 
        redirect(controller:'routeCoord',action:'create',params:['secret':true,'route.id':route.instance.id,'routeid':route.instance.id])
    }

	def selectaflosroute = {
		[ routeInstanceList: Route.list( params ) ]
    }
	
	def importroute = {
		def route = fcService.existAnyAflosRoute()
		if (route.error) {
			flash.error = route.error
            flash.message = route.message
	        redirect(action:list)
		} else {
	        redirect(action:selectaflosroute)
		}
	}
    
	def importaflosroute = {
        def route = fcService.importAflosRoute(params,session.lastContest) 
        if (route.saved) {
            flash.message = route.message
        } else if (route.error) {
        	flash.error = route.error
            flash.message = route.message
        }
        redirect(action:list)
	}
	
	def calculateroutelegs = {
        def route = fcService.caculateroutelegsRoute(params) 
        if (route.instance) {
            flash.message = route.message
            redirect(action:show,id:route.instance.id)
        } else {
            flash.message = route.message
            redirect(action:list)
        }
	}
    
    def print = {
        def routes = fcService.printRoutes(params,GetPrintParams()) 
        if (routes.error) {
            flash.message = routes.message
            flash.error = true
            redirect(action:list)
        } else if (routes.found && routes.content) {
            fcService.WritePDF(response,routes.content)
        } else {
            redirect(action:list)
        }
    }
    
    def printroute = {
        def routes = fcService.printRoute(params,GetPrintParams()) 
        if (routes.error) {
            flash.message = routes.message
            flash.error = true
            redirect(action:list)
        } else if (routes.content) {
            fcService.WritePDF(response,routes.content)
        } else {
            redirect(action:list)
        }
	}
	
    def showprintable = {
        if (params.contestid) {
            session.lastContest = Contest.get(params.contestid)
        }
        def route = fcService.getRoute(params) 
        if (route.instance) {
            return [routeInstance:route.instance]
        } else {
            flash.message = route.message
            redirect(action:list)
        }
    }

	Map GetPrintParams() {
        return [baseuri:request.scheme + "://" + request.serverName + ":" + request.serverPort + grailsAttributes.getApplicationUri(request),
                contest:session.lastContest,
                lang:session.'org.springframework.web.servlet.i18n.SessionLocaleResolver.LOCALE'
               ]
    }
}
