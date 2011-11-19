

class LandingTestController {
    
	def fcService
	
    // the delete, save and update actions only accept POST requests
    static allowedMethods = [delete:'POST', save:'POST', update:'POST']

    def show = {
        def landingtest = fcService.getLandingTest(params) 
        if (landingtest.instance) {
        	return [landingTestInstance:landingtest.instance]
        } else {
            flash.message = landingtest.message
            redirect(controller:"contest",action:"tasks")
        }
    }

    def edit = {
        def landingtest = fcService.getLandingTest(params) 
        if (landingtest.instance) {
        	return [landingTestInstance:landingtest.instance]
        } else {
            flash.message = landingtest.message
            redirect(controller:"contest",action:"tasks")
        }
    }

    def update = {
        def landingtest = fcService.updateLandingTest(params) 
        if (landingtest.saved) {
        	flash.message = landingtest.message
        	redirect(action:show,id:landingtest.instance.id)
        } else if (landingtest.instance) {
        	render(view:'edit',model:[landingTestInstance:landingtest.instance])
        } else {
        	flash.message = landingtest.message
            redirect(action:edit,id:params.id)
        }
    }

    def create = {
        def landingtest = fcService.createLandingTest(params)
       	return [landingTestInstance:landingtest.instance]
    }

    def save = {
        def landingtest = fcService.saveLandingTest(params) 
        if (landingtest.saved) {
        	flash.message = landingtest.message
            if (landingtest.fromtask) {
            	redirect(controller:"task",action:show,id:landingtest.taskid)
            } else {
            	redirect(controller:"contest",action:"tasks")
            }
        } else {
            render(view:'create',model:[landingTestInstance:landingtest.instance])
        }
    }

    def delete = {
        def landingtest = fcService.deleteLandingTest(params)
        if (landingtest.deleted) {
        	flash.message = landingtest.message
        	redirect(controller:"contest",action:"tasks")
        } else if (landingtest.notdeleted) {
        	flash.message = landingtest.message
            redirect(action:show,id:params.id)
        } else {
        	flash.message = landingtest.message
        	redirect(controller:"contest",action:"tasks")
        }
    }
	
	def cancel = {
        if (params.fromtask) {
            redirect(controller:"task",action:show,id:params.taskid)
        } else {
            redirect(controller:"contest",action:"tasks")
        }
	}
	
	def createlandingtesttask = {
        def landingtest = fcService.getLandingTest(params) 
        redirect(controller:'landingTestTask',action:'create',params:['landingTest.id':landingtest.instance.id,'landingtestid':landingtest.instance.id])
	}
}
