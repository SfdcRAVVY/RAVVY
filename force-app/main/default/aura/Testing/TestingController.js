({
    newCaseAction : function(component, event, helper) {
        var homePageNewslabel = $A.get("$Label.c.test");
        var homePageNewslabel = $A.get("$Label.c.test1");
        component.set('v.homePageNews', homePageNewslabel);
    }
})