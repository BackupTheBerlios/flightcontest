

class FlightTestWindController {
    
	def fcService
	
    // the delete, save and update actions only accept POST requests
    static allowedMethods = [delete:'POST', save:'POST', update:'POST']

    def show = {
        def flighttestwind = fcService.getFlightTestWind(params) 
        if (flighttestwind.instance) {
        	return [flightTestWindInstance:flighttestwind.instance]
        } else {
            flash.message = flighttestwind.message
            redirect(controller:"contest",action:"start")
        }
    }

    def edit = {
        def flighttestwind = fcService.getFlightTestWind(params) 
        if (flighttestwind.instance) {
        	return [flightTestWindInstance:flighttestwind.instance]
        } else {
            flash.message = flighttestwind.message
            redirect(controller:"contest",action:"start")
        }
    }

    def update = {
        def flighttestwind = fcService.updateFlightTestWind(params) 
        if (flighttestwind.saved) {
        	flash.message = flighttestwind.message
        	redirect(action:show,id:flighttestwind.instance.id)
        } else if (flighttestwind.instance) {
        	render(view:'edit',model:[flightTestWindInstance:flighttestwind.instance])
        } else {
        	flash.message = flighttestwind.message
            redirect(action:edit,id:params.id)
        }
    }

    def create = {
        def flighttestwind = fcService.createFlightTestWind(params)
       	return [flightTestWindInstance:flighttestwind.instance]
    }

    def save = {
        def flighttestwind = fcService.saveFlightTestWind(params) 
        if (flighttestwind.saved) {
        	flash.message = flighttestwind.message
            if (flighttestwind.fromlistplanning) {
            	redirect(controller:"contestDayTask",action:"listplanning",id:flighttestwind.contestdaytaskid)
            } else {
            	redirect(controller:"flightTest",action:show,id:flighttestwind.flighttestid)
            }
        } else {
            render(view:'create',model:[flightTestWindInstance:flighttestwind.instance])
        }
    }

    def delete = {
        def flighttestwind = fcService.deleteFlightTestWind(params)
        if (flighttestwind.deleted) {
        	flash.message = flighttestwind.message
        	redirect(controller:"flightTest",action:show,id:flighttestwind.flighttestid)
        } else if (flighttestwind.notdeleted) {
        	flash.message = flighttestwind.message
            redirect(action:show,id:params.id)
        } else {
        	flash.message = flighttestwind.message
        	redirect(controller:"contest",action:"start")
        }
    }

    def cancel = {
        if (params.fromlistplanning) {
            redirect(controller:"contestDayTask",action:"listplanning",id:params.contestdaytaskid)
        } else {
            redirect(controller:"flightTest",action:show,id:params.flighttestid)
        }
	}
}
