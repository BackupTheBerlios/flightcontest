class CrewController {
    
	def fcService
	
    def index = { redirect(action:list,params:params) }

    // the delete, save and update actions only accept POST requests
    static allowedMethods = [delete:'POST', save:'POST', update:'POST']

    def list = {
		fcService.printstart "List crews"
        if (session?.lastContest) {
			// save return action
			session.crewReturnAction = actionName 
			session.crewReturnController = controllerName
			session.crewReturnID = params.id
			session.aircraftReturnAction = actionName
			session.aircraftReturnController = controllerName
			session.aircraftReturnID = params.id
			session.teamReturnAction = actionName
			session.teamReturnController = controllerName
			session.teamReturnID = params.id
			session.resultclassReturnAction = actionName
			session.resultclassReturnController = controllerName
			session.resultclassReturnID = params.id
            def crewList = Crew.findAllByContest(session.lastContest, [sort:'viewpos'])
			def activeCrewList = Crew.findAllByContestAndDisabled(session.lastContest, false, [sort:'viewpos'])
			fcService.printdone "last contest"
            return [crewInstanceList:crewList,activeCrewInstanceList:activeCrewList,resultClasses:session.lastContest.resultClasses]
        }
		fcService.printdone ""
        redirect(controller:'contest',action:'start')
    }

    def edit = {
        def crew = fcService.getCrew(params) 
        if (crew.instance) {
			// assign return action
			if (session.crewReturnAction) {
				return [crewInstance:crew.instance,crewReturnAction:session.crewReturnAction,crewReturnController:session.crewReturnController,crewReturnID:session.crewReturnID]
			}
        	return [crewInstance:crew.instance]
        } else {
            flash.message = crew.message
            redirect(action:list)
        }
    }

    def update = {
        def crew = fcService.updateCrew(params) 
        if (crew.saved) {
        	flash.message = crew.message
			// process return action
			if (params.crewReturnAction) {
				redirect(action:params.crewReturnAction,controller:params.crewReturnController,id:params.crewReturnID)
			} else {
				redirect(action:list)
			}
        } else if (crew.instance) {
        	render(view:'edit',model:[crewInstance:crew.instance])
        } else {
        	flash.message = crew.message
            redirect(action:edit,id:params.id)
        }
    }

    def create = {
        def crew = fcService.createCrew(params)
		crew.instance.startNum = Crew.countByContest(session.lastContest) + 1
        return [crewInstance:crew.instance,resultClasses:session.lastContest.resultClasses]
    }

    def save = {
        def crew = fcService.saveCrew(params,session.lastContest) 
        if (crew.saved) {
        	flash.message = crew.message
        	redirect(action:list)
        } else {
            render(view:'create',model:[crewInstance:crew.instance])
        }
    }

	def delete = {
        def crew = fcService.deleteCrew(params)
        if (crew.deleted) {
        	flash.message = crew.message
        	redirect(action:list)
        } else if (crew.notdeleted) {
        	flash.message = crew.message
            redirect(action:edit,id:params.id)
        } else {
        	flash.message = crew.message
        	redirect(action:list)
        }
    }

	def cancel = {
		// process return action
		if (params.crewReturnAction) {
			redirect(action:params.crewReturnAction,controller:params.crewReturnController,id:params.crewReturnID)
		} else {
			redirect(action:list)
		}
	}

	def selectfilename = {
		[:]
    }
	
	def importcrews = {
		def file = request.getFile('loadfile')
		if (file && !file.empty) {
			String file_name = file.getOriginalFilename()
			fcService.printstart "Upload '$file_name'"
			fcService.println file.getContentType() // "application/vnd.ms-excel", "application/octet-stream" 
			if (file_name.toLowerCase().endsWith('.xls')) {
				String load_file_name = "CREWLIST-UPLOAD.xls"
				file.transferTo(new File(load_file_name))
		        def crews = fcService.importCrews(file_name, load_file_name, session.lastContest) 
		        if (crews.saved) {
		            flash.message = crews.message
					fcService.printdone flash.message
		        } else if (crews.error) {
		        	flash.error = crews.error
		            flash.message = crews.message
					fcService.printerror flash.message
		        }
			} else {
				flash.error = true
				flash.message = message(code:'fc.notimported.excel',args:[file_name])
				fcService.printerror flash.message
			}
		}
        redirect(action:list)
	}
	
    def listprintable = {
		if (params.contestid) {
			session.lastContest = Contest.get(params.contestid)
		}
		if (session?.lastContest) {
            def crewList = Crew.findAllByContestAndDisabled(session.lastContest,false,[sort:"viewpos"])
            return [crewInstanceList:crewList,resultClasses:session.lastContest.resultClasses]
        }
        return [:]
    }

	def print = {
        def crews = fcService.printCrews(params,GetPrintParams()) 
        if (crews.error) {
            flash.message = crews.message
            flash.error = true
            redirect(action:list)
        } else if (crews.content) {
            fcService.WritePDF(response,crews.content)
        } else {
            redirect(action:list)
        }
    }
    
	def selectall = {
        def crew = fcService.selectallCrew(session.lastContest) 
       	flash.selectedCrewIDs = crew.selectedcrewids
       	redirect(action:list)
    }

    def deselectall = {
       	redirect(action:list)
    }
    
	def calculatesequence = {
        def crew = fcService.calculatesequenceCrew(session.lastContest,params) 
        flash.error = crew.error
        flash.message = crew.message
       	redirect(action:list)
	}

	def moveup = {
        def crew = fcService.moveupCrew(session.lastContest,params,session) 
        if (crew.borderreached) {
        	redirect(action:list)
        } else if (crew.error) {
       		flash.message = crew.message
            flash.error = true
        	redirect(action:list)
        } else { 
	        if (crew.selectedcrewids) {
	    		flash.selectedCrewIDs = crew.selectedcrewids
	    	}
        	redirect(action:list)
        }
	}
	
	def movedown = {
        def crew = fcService.movedownCrew(session.lastContest,params,session) 
        if (crew.borderreached) {
        	redirect(action:list)
        } else if (crew.error) {
       		flash.message = crew.message
            flash.error = true
        	redirect(action:list)
        } else {
	    	if (crew.selectedcrewids) {
	    		flash.selectedCrewIDs = crew.selectedcrewids
	    	}
        	redirect(action:list)
        }
	}
	
	def deletecrews = {
        def ret = fcService.deleteCrews(session.lastContest,params,session)
		if (ret.deleted) { 
			flash.message = ret.message
		}
       	redirect(action:list)
	}
	
	Map GetPrintParams() {
        return [baseuri:request.scheme + "://" + request.serverName + ":" + request.serverPort + grailsAttributes.getApplicationUri(request),
                contest:session.lastContest,
                lang:session.printLanguage
               ]
    }
}
