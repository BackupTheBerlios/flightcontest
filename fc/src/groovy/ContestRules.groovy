enum ContestRules 
{
	R1 ('fc.contestrule.de.rally.2012',      false,
		[
			// PlanningTest
			planningTestDirectionCorrectGrad:2,
			planningTestDirectionPointsPerGrad:2,
			planningTestTimeCorrectSecond:5,
			planningTestTimePointsPerSecond:1,
			planningTestMaxPoints:350,
			planningTestPlanTooLatePoints:50,
			planningTestExitRoomTooLatePoints:100,
		
			// FlightTest
			flightTestTakeoffMissedPoints:200,
			flightTestCptimeCorrectSecond:2,
			flightTestCptimePointsPerSecond:1,
			flightTestCptimeMaxPoints:200,
			flightTestCpNotFoundPoints:200,
			flightTestProcedureTurnNotFlownPoints:200,
			flightTestMinAltitudeMissedPoints:500,
			flightTestBadCourseCorrectSecond:5,
			flightTestBadCoursePoints:200,
			flightTestBadCourseStartLandingPoints:500,
			flightTestLandingToLatePoints:200,
			flightTestGivenToLatePoints:100,
			
			// LandingTest
			landingTest1MaxPoints:300,
			landingTest1NoLandingPoints:300,
			landingTest1OutsideLandingPoints:200,
			landingTest1RollingOutsidePoints:200,
			landingTest1PowerInBoxPoints:100,
			landingTest1GoAroundWithoutTouchingPoints:200,
			landingTest1GoAroundInsteadStopPoints:200,
			landingTest1AbnormalLandingPoints:200,
			landingTest1PenaltyCalculator:"{x -> switch(x.toUpperCase()){case '0':return 0;case 'A':return 20;case 'B':return 40;case 'C':return 60;case 'D':return 80;case 'E':return 50;case 'F':return 90;default:return 200;}}",
		
			landingTest2MaxPoints:300,
			landingTest2NoLandingPoints:300,
			landingTest2OutsideLandingPoints:200,
			landingTest2RollingOutsidePoints:200,
			landingTest2PowerInBoxPoints:100,
			landingTest2GoAroundWithoutTouchingPoints:200,
			landingTest2GoAroundInsteadStopPoints:200,
			landingTest2AbnormalLandingPoints:200,
			landingTest2PowerInAirPoints:0,
			landingTest2PenaltyCalculator:"{x -> switch(x.toUpperCase()){case '0':return 0;case 'A':return 20;case 'B':return 40;case 'C':return 60;case 'D':return 80;case 'E':return 50;case 'F':return 90;default:return 200;}}",
			
			landingTest3MaxPoints:300,
			landingTest3NoLandingPoints:300,
			landingTest3OutsideLandingPoints:200,
			landingTest3RollingOutsidePoints:200,
			landingTest3PowerInBoxPoints:100,
			landingTest3GoAroundWithoutTouchingPoints:200,
			landingTest3GoAroundInsteadStopPoints:200,
			landingTest3AbnormalLandingPoints:200,
			landingTest3PowerInAirPoints:0,
			landingTest3FlapsInAirPoints:0,
			landingTest3PenaltyCalculator:"{x -> switch(x.toUpperCase()){case '0':return 0;case 'A':return 20;case 'B':return 40;case 'C':return 60;case 'D':return 80;case 'E':return 50;case 'F':return 90;default:return 200;}}",
			
			landingTest4MaxPoints:300,
			landingTest4NoLandingPoints:300,
			landingTest4OutsideLandingPoints:200,
			landingTest4RollingOutsidePoints:200,
			landingTest4PowerInBoxPoints:100,
			landingTest4GoAroundWithoutTouchingPoints:200,
			landingTest4GoAroundInsteadStopPoints:200,
			landingTest4AbnormalLandingPoints:200,
			landingTest4TouchingObstaclePoints:0,
			landingTest4PenaltyCalculator:"{x -> switch(x.toUpperCase()){case '0':return 0;case 'A':return 20;case 'B':return 40;case 'C':return 60;case 'D':return 80;case 'E':return 50;case 'F':return 90;default:return 200;}}"
		]
	),
	R2 ('fc.contestrule.de.precision.2005',  true,
		[
			// PlanningTest
			planningTestDirectionCorrectGrad:2,
			planningTestDirectionPointsPerGrad:2,
			planningTestTimeCorrectSecond:5,
			planningTestTimePointsPerSecond:1,
			planningTestMaxPoints:350,
			planningTestPlanTooLatePoints:50,
			planningTestExitRoomTooLatePoints:100,
		
			// FlightTest
			flightTestTakeoffMissedPoints:200,
			flightTestCptimeCorrectSecond:2,
			flightTestCptimePointsPerSecond:3,
			flightTestCptimeMaxPoints:200,
			flightTestCpNotFoundPoints:200,
			flightTestProcedureTurnNotFlownPoints:200,
			flightTestMinAltitudeMissedPoints:500,
			flightTestBadCourseCorrectSecond:5,
			flightTestBadCoursePoints:200,
			flightTestBadCourseStartLandingPoints:200,
			flightTestLandingToLatePoints:200,
			flightTestGivenToLatePoints:100,
			
			// LandingTest
			landingTest1MaxPoints:400,
			landingTest1NoLandingPoints:200,
			landingTest1OutsideLandingPoints:200,
			landingTest1RollingOutsidePoints:200,
			landingTest1PowerInBoxPoints:50,
			landingTest1GoAroundWithoutTouchingPoints:0,
			landingTest1GoAroundInsteadStopPoints:0,
			landingTest1AbnormalLandingPoints:150,
			landingTest1PenaltyCalculator:"{x -> if(x.isInteger()){i=x.toInteger();if(i>0){return 3*i}else{return -(7*i)}}else{switch(x.toUpperCase()){case '0':return 0;case 'A':return 175;case 'D':return 75;case 'E':return 90;case 'F':return 105;case 'G':return 120;case 'H':return 135;default:return 200;}}}",
		
			landingTest2MaxPoints:200,
			landingTest2NoLandingPoints:150,
			landingTest2OutsideLandingPoints:150,
			landingTest2RollingOutsidePoints:150,
			landingTest2PowerInBoxPoints:50,
			landingTest2GoAroundWithoutTouchingPoints:0,
			landingTest2GoAroundInsteadStopPoints:0,
			landingTest2AbnormalLandingPoints:150,
			landingTest2PowerInAirPoints:200,
			landingTest2PenaltyCalculator:"{x -> if(x.isInteger()){i=x.toInteger();if(i>0){return 2*i}else{return -(4*i)}}else{switch(x.toUpperCase()){case '0':return 0;case 'A':return 100;case 'D':return 50;case 'E':return 60;case 'F':return 70;case 'G':return 80;case 'H':return 90;default:return 150;}}}",
			
			landingTest3MaxPoints:200,
			landingTest3NoLandingPoints:150,
			landingTest3OutsideLandingPoints:150,
			landingTest3RollingOutsidePoints:150,
			landingTest3PowerInBoxPoints:50,
			landingTest3GoAroundWithoutTouchingPoints:0,
			landingTest3GoAroundInsteadStopPoints:0,
			landingTest3AbnormalLandingPoints:150,
			landingTest3PowerInAirPoints:200,
			landingTest3FlapsInAirPoints:200,
			landingTest3PenaltyCalculator:"{x -> if(x.isInteger()){i=x.toInteger();if(i>0){return 2*i}else{return -(4*i)}}else{switch(x.toUpperCase()){case '0':return 0;case 'A':return 100;case 'D':return 50;case 'E':return 60;case 'F':return 70;case 'G':return 80;case 'H':return 90;default:return 150;}}}",
			
			landingTest4MaxPoints:400,
			landingTest4NoLandingPoints:200,
			landingTest4OutsideLandingPoints:200,
			landingTest4RollingOutsidePoints:200,
			landingTest4PowerInBoxPoints:50,
			landingTest4GoAroundWithoutTouchingPoints:0,
			landingTest4GoAroundInsteadStopPoints:0,
			landingTest4AbnormalLandingPoints:150,
			landingTest4TouchingObstaclePoints:400,
			landingTest4PenaltyCalculator:"{x -> if(x.isInteger()){i=x.toInteger();if(i>0){return 3*i}else{return -(7*i)}}else{switch(x.toUpperCase()){case '0':return 0;case 'A':return 175;case 'D':return 75;case 'E':return 90;case 'F':return 105;case 'G':return 120;case 'H':return 135;default:return 200;}}}"
		]
	),
	R3 ('fc.contestrule.fai.rally.2011',     false,
		[
			// PlanningTest
			planningTestDirectionCorrectGrad:2,
			planningTestDirectionPointsPerGrad:2,
			planningTestTimeCorrectSecond:5,
			planningTestTimePointsPerSecond:1,
			planningTestMaxPoints:350,
			planningTestPlanTooLatePoints:50,
			planningTestExitRoomTooLatePoints:100,
		
			// FlightTest
			flightTestTakeoffMissedPoints:100,
			flightTestCptimeCorrectSecond:2,
			flightTestCptimePointsPerSecond:2,
			flightTestCptimeMaxPoints:100,
			flightTestCpNotFoundPoints:100,
			flightTestProcedureTurnNotFlownPoints:0,
			flightTestMinAltitudeMissedPoints:200,
			flightTestBadCourseCorrectSecond:5,
			flightTestBadCoursePoints:200,
			flightTestBadCourseStartLandingPoints:200,
			flightTestLandingToLatePoints:0,
			flightTestGivenToLatePoints:300,
			
			// LandingTest
			landingTest1MaxPoints:300,
			landingTest1NoLandingPoints:300,
			landingTest1OutsideLandingPoints:200,
			landingTest1RollingOutsidePoints:200,
			landingTest1PowerInBoxPoints:50,
			landingTest1GoAroundWithoutTouchingPoints:200,
			landingTest1GoAroundInsteadStopPoints:200,
			landingTest1AbnormalLandingPoints:150,
			landingTest1PenaltyCalculator:"{x -> switch(x.toUpperCase()){case '0':return 0;case 'A':return 10;case 'B':return 20;case 'C':return 30;case 'D':return 40;case 'E':return 60;case 'F':return 80;case 'G':return 100;case 'H':return 120;case 'X':return 60;case 'Y':return 120;default:return 200;}}",
		
			landingTest2MaxPoints:300,
			landingTest2NoLandingPoints:300,
			landingTest2OutsideLandingPoints:200,
			landingTest2RollingOutsidePoints:200,
			landingTest2PowerInBoxPoints:50,
			landingTest2GoAroundWithoutTouchingPoints:200,
			landingTest2GoAroundInsteadStopPoints:200,
			landingTest2AbnormalLandingPoints:150,
			landingTest2PowerInAirPoints:0,
			landingTest2PenaltyCalculator:"{x -> switch(x.toUpperCase()){case '0':return 0;case 'A':return 10;case 'B':return 20;case 'C':return 30;case 'D':return 40;case 'E':return 60;case 'F':return 80;case 'G':return 100;case 'H':return 120;case 'X':return 60;case 'Y':return 120;default:return 200;}}",
			
			landingTest3MaxPoints:300,
			landingTest3NoLandingPoints:300,
			landingTest3OutsideLandingPoints:200,
			landingTest3RollingOutsidePoints:200,
			landingTest3PowerInBoxPoints:50,
			landingTest3GoAroundWithoutTouchingPoints:200,
			landingTest3GoAroundInsteadStopPoints:200,
			landingTest3AbnormalLandingPoints:150,
			landingTest3PowerInAirPoints:0,
			landingTest3FlapsInAirPoints:0,
			landingTest3PenaltyCalculator:"{x -> switch(x.toUpperCase()){case '0':return 0;case 'A':return 10;case 'B':return 20;case 'C':return 30;case 'D':return 40;case 'E':return 60;case 'F':return 80;case 'G':return 100;case 'H':return 120;case 'X':return 60;case 'Y':return 120;default:return 200;}}",
			
			landingTest4MaxPoints:300,
			landingTest4NoLandingPoints:300,
			landingTest4OutsideLandingPoints:200,
			landingTest4RollingOutsidePoints:200,
			landingTest4PowerInBoxPoints:50,
			landingTest4GoAroundWithoutTouchingPoints:200,
			landingTest4GoAroundInsteadStopPoints:200,
			landingTest4AbnormalLandingPoints:150,
			landingTest4TouchingObstaclePoints:0,
			landingTest4PenaltyCalculator:"{x -> switch(x.toUpperCase()){case '0':return 0;case 'A':return 10;case 'B':return 20;case 'C':return 30;case 'D':return 40;case 'E':return 60;case 'F':return 80;case 'G':return 100;case 'H':return 120;case 'X':return 60;case 'Y':return 120;default:return 200;}}"
		]
	),
	R4 ('fc.contestrule.fai.precision.2011', true,
		[
			// PlanningTest
			planningTestDirectionCorrectGrad:2,
			planningTestDirectionPointsPerGrad:2,
			planningTestTimeCorrectSecond:5,
			planningTestTimePointsPerSecond:1,
			planningTestMaxPoints:350,
			planningTestPlanTooLatePoints:50,
			planningTestExitRoomTooLatePoints:100,
		
			// FlightTest
			flightTestTakeoffMissedPoints:200,
			flightTestCptimeCorrectSecond:2,
			flightTestCptimePointsPerSecond:3,
			flightTestCptimeMaxPoints:100,
			flightTestCpNotFoundPoints:100,
			flightTestProcedureTurnNotFlownPoints:200,
			flightTestMinAltitudeMissedPoints:500,
			flightTestBadCourseCorrectSecond:5,
			flightTestBadCoursePoints:200,
			flightTestBadCourseStartLandingPoints:200,
			flightTestLandingToLatePoints:200,
			flightTestGivenToLatePoints:100,
			
			// LandingTest
			landingTest1MaxPoints:400,
			landingTest1NoLandingPoints:300,
			landingTest1OutsideLandingPoints:300,
			landingTest1RollingOutsidePoints:200,
			landingTest1PowerInBoxPoints:50,
			landingTest1GoAroundWithoutTouchingPoints:0,
			landingTest1GoAroundInsteadStopPoints:0,
			landingTest1AbnormalLandingPoints:200,
			landingTest1PenaltyCalculator:"{x -> if(x.isInteger()){i=x.toInteger();if(i>0){return 6*i}else{return -(14*i)}}else{switch(x.toUpperCase()){case '0':return 0;case 'A':return 350;case 'D':return 150;case 'E':return 180;case 'F':return 210;case 'G':return 240;case 'H':return 270;default:return 300;}}}",
		
			landingTest2MaxPoints:200,
			landingTest2NoLandingPoints:200,
			landingTest2OutsideLandingPoints:200,
			landingTest2RollingOutsidePoints:150,
			landingTest2PowerInBoxPoints:50,
			landingTest2GoAroundWithoutTouchingPoints:0,
			landingTest2GoAroundInsteadStopPoints:0,
			landingTest2AbnormalLandingPoints:200,
			landingTest2PowerInAirPoints:200,
			landingTest2PenaltyCalculator:"{x -> if(x.isInteger()){i=x.toInteger();if(i>0){return 4*i}else{return -(8*i)}}else{switch(x.toUpperCase()){case '0':return 0;case 'A':return 200;case 'D':return 100;case 'E':return 120;case 'F':return 140;case 'G':return 160;case 'H':return 180;default:return 200;}}}",
			
			landingTest3MaxPoints:200,
			landingTest3NoLandingPoints:200,
			landingTest3OutsideLandingPoints:200,
			landingTest3RollingOutsidePoints:150,
			landingTest3PowerInBoxPoints:50,
			landingTest3GoAroundWithoutTouchingPoints:0,
			landingTest3GoAroundInsteadStopPoints:0,
			landingTest3AbnormalLandingPoints:200,
			landingTest3PowerInAirPoints:200,
			landingTest3FlapsInAirPoints:200,
			landingTest3PenaltyCalculator:"{x -> if(x.isInteger()){i=x.toInteger();if(i>0){return 4*i}else{return -(8*i)}}else{switch(x.toUpperCase()){case '0':return 0;case 'A':return 200;case 'D':return 100;case 'E':return 120;case 'F':return 140;case 'G':return 160;case 'H':return 180;default:return 200;}}}",
			
			landingTest4MaxPoints:400,
			landingTest4NoLandingPoints:300,
			landingTest4OutsideLandingPoints:300,
			landingTest4RollingOutsidePoints:200,
			landingTest4PowerInBoxPoints:50,
			landingTest4GoAroundWithoutTouchingPoints:0,
			landingTest4GoAroundInsteadStopPoints:0,
			landingTest4AbnormalLandingPoints:200,
			landingTest4TouchingObstaclePoints:400,
			landingTest4PenaltyCalculator:"{x -> if(x.isInteger()){i=x.toInteger();if(i>0){return 6*i}else{return -(14*i)}}else{switch(x.toUpperCase()){case '0':return 0;case 'A':return 350;case 'D':return 150;case 'E':return 180;case 'F':return 210;case 'G':return 240;case 'H':return 270;default:return 300;}}}"
		]
	)

	ContestRules(String titleCode, boolean precisionFlying, Map ruleValues) 
	{
		this.titleCode = titleCode
		this.precisionFlying = precisionFlying
		this.ruleValues = ruleValues
	}
	
	final String titleCode
	final boolean precisionFlying
	final Map ruleValues
}