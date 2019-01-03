({
	getRaces : function(component) {
		var action = component.get("c.getRacesDB");
        console.log("Ok");
        action.setCallback(this, function(response){
            var state = response.getState();
            if(component.isValid() && state == "SUCCESS"){
                component.set("v.races", response.getReturnValue());
            }
        });
        $A.enqueueAction(action);
	},
    addToRaces : function(component, event){
        var race = event.getParam('race');
        var races = component.get("v.races");
        races.unshift(race);
        component.set("v.races", races);
    },
    updateRace : function(component) {
    	var race = component.get("v.race");
        console.log("Calling updateRace");
        var action = component.get("c.updateRaceDB");
        action.setParams({ "race" : race });
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (component.isValid() && state === "SUCCESS") {
                console.log("Race successfully updated");
            } else if (state === "ERROR") {
                var errors = response.getError();
                if (errors) {
                    if (errors[0] && errors[0].message) {
                        console.log("Error message: " + errors[0].message);
                    }
                } else {
                    console.log("Unknown error");
                }
            } else {
                console.log("Action State returned was: " + state);
            }

        });
        $A.enqueueAction(action);
    }
})