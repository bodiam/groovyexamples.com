
class SyntaxHighlighterGrailsPlugin {
    def version = "0.1.3"
    def dependsOn = [:]
    def author = "Erik Pragt"
    def authorEmail = "epragt@zonnet.nl"
    def title = "Syntax Highlighter Plugin"
    def description = "This plugin provides a Javascript Syntax Highlighter for multiple languages and taglibs for easily accessing it."
    def documentation = "http://www.grails.org/Syntax+Highlighter"
	
    def doWithSpring = {
        // TODO Implement runtime spring config (optional)
    }
   
    def doWithApplicationContext = { applicationContext ->
        // TODO Implement post initialization spring config (optional)		
    }

    def doWithWebDescriptor = { xml ->
        // TODO Implement additions to web.xml (optional)
    }
	                                      
    def doWithDynamicMethods = { ctx ->
        // TODO Implement registering dynamic methods to classes (optional)
    }
	
    def onChange = { event ->
        // TODO Implement code that is executed when this class plugin class is changed  
        // the event contains: event.application and event.applicationContext objects
    }
                                                                                  
    def onApplicationChange = { event ->
        // TODO Implement code that is executed when any class in a GrailsApplication changes
        // the event contain: event.source, event.application and event.applicationContext objects
    }
}
