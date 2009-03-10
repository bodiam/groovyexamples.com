class SyntaxHighlighterTagLib {
    static namespace = "syntax"

    static directory = "syntaxhighlighter"
    static formatPrefix = "shBrush"

    /**
     * Loads the resources for each language. This overrides all the individual
     *
     * Example: <syntax:resources languages="['Java', 'Xml']" />
     * Example: <syntax:resources languages="['Java', 'Xml']" gutter="true" firstLine="8" />
     *
     * @param lanaguages List of languages. Currently supported names: see http://code.google.com/p/syntaxhighlighter/wiki/Languages
     */
    def resources = { attrs ->
        if(!attrs.languages) {
            throwTagError("Tag resources is missing required attribute [languages]. Specify at least on language.")
        }

        // Add the stylesheet
        out << """<link rel="stylesheet" href="${createLinkTo(dir: 'css/syntaxhighlighter', file: 'SyntaxHighlighter.css')}"/>"""

        // Add the core library, which is manadatory for all the languages
        out << javascript(src: "${directory}/shCore.js")

        // Handle each language
        attrs.languages.each { language ->
            out << javascript(src:"${directory}/${formatPrefix}${language}.js")
        }

        // Defaults
        def gutter = 'undefined'
        def controls = 'undefined'
        def collapseAll = 'undefined'
        def firstLine = 'null'
        def showColumns = 'undefined'

        if(attrs.gutter == "false") {
            gutter = "false"
        }
        if(attrs.controls == "false") {
            controls = "false"
        }
        if(attrs.collapse == "true") {
            collapseAll = "true"
        }
        if(attrs.firstLine) {
            firstLine = attrs.firstLine
        }
        if(attrs.showColumns == "true") {
            showColumns = "true"
        }

        // Load the library
        out << """
        <script language="javascript">
            window.onload = function () {
                dp.SyntaxHighlighter.ClipboardSwf = '${createLinkTo(dir: 'js/syntaxhighlighter', file: 'clipboard.swf')}';
                dp.SyntaxHighlighter.HighlightAll('code', ${gutter}, ${controls}, ${collapseAll}, ${firstLine}, ${showColumns});
            }
        </script>"""
    }

    /**
     * Syntax highlights the code.
     *
     * @param name The name of <pre> and <textarea> elements to use
     * @param showGutter
     * @param showControls
     * @param collapseAll
     * @param firstLine
     * @param showColumns
     */
    def format = { attrs, body ->
        if(!attrs.name) {
            throwTagError("Tag format is missing required attribute [name]")
        }
        if(!attrs.language) {
            throwTagError("Tag format is missing required attribute [language]")
        }

        // Build options
        def options = attrs.language

        if(attrs.gutter == "false") {
            options += ":nogutter"
        }
        if(attrs.controls == "false") {
            options += ":nocontrols"
        }
        if(attrs.collapse == "true") {
            options += ":collapse"
        }
        if(attrs.firstLine) {
            options += ":firstLine[${attrs.firstLine}]"
        }
        if(attrs.showColumns == "true") {
            options += ":showcolumns"
        }

        def contents = body().encodeAsHTML()
        if(attrs.escapeXml == "false") {
            contents = body()
        }

        out << "<pre name='${attrs.name}' class='${options}'>" << contents << "</pre>"

    }    
}
