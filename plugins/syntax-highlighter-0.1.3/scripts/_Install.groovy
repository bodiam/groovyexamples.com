
//
// This script is executed by Grails after plugin was installed to project.
// This script is a Gant script so you can use all special variables provided
// by Gant (such as 'baseDir' which points on project base dir). You can
// use 'Ant' to access a global instance of AntBuilder
//
// For example you can create directory under project tree:
// Ant.mkdir(dir:"d:\UserFiles\PersonalProjects/SyntaxHighlighter/grails-app/jobs")
//

Ant.property(environment:"env")
grailsHome = Ant.antProject.properties."env.GRAILS_HOME"

highlighterVersion = "1.5.1"

Ant.sequential {
    def syntaxHighlighter = new SyntaxHighlighterGrailsPlugin()

    mkdir(dir:"${basedir}/web-app/js/syntaxhighlighter")
    copy(todir:"${basedir}/web-app/js/syntaxhighlighter") {
        fileset(dir:"${basedir}/web-app/plugins/syntax-highlighter-$syntaxHighlighter.version/js/syntaxhighlighter", includes:"*.js, *.swf")
    }
    copy(todir:"${basedir}/web-app/css/syntaxhighlighter") {
        fileset(dir:"${basedir}/web-app/plugins/syntax-highlighter-$syntaxHighlighter.version/css/syntaxhighlighter", includes:"*.css")
    }

}
event("StatusFinal", ["SyntaxHighlighter installed successfully"])
