<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Groovyexamples.com</title>
    <meta name="layout" content="main"/>
</head>
<body>
    <div class="cell">
        <br/>
        <div id=tt></div>
        <div id="introduction">
            <span class="cell" style="font-size: 24px; font-family: Georgia,serif">
                <center>
                &ldquo;Knowledge is a process of piling up facts; wisdom lies in their simplification..&rdquo;
                </center>
            </span>
            <span class="cell" style="text-align: right; font-family: Georgia,serif; display: inline; float: right; font-size: 14px">Martin Fischer</span>
        </div>
        <div id=tb></div>

        <div id=tt></div>
        <div class="box top-border" style="padding: 15px;">
            <span style="font-size: 16px;">Welcome to GroovyExamples.com, a new source of information for those involved with Groovy and Grails.
            </span>
        </div>
        <div id=tb></div>

        <div style="float: left; width: 350px">
            <h1>Recent Groovy examples</h1>
            <hr/>


            <g:each in="${recentGroovyExamples}" status="i" var="example">
                <div id="tt"></div>
                <div id="tm">
                    <div id="tmimg">
                        <img src="${createLinkTo(dir: 'images', file: 'brights_icon_50x50-full.jpeg')}" alt="Default icon">
                    </div>
                    <g:link controller="example" action="show" id="${fieldValue(bean: example, field: 'id')}" params="[title:example.title]">
                        ${fieldValue(bean: example, field: 'title')}
                    </g:link>
                    <br>
                    <div id="td">${fieldValue(bean: example, field: 'description')}
                        <div id="ts">Language: <a href="3">${fieldValue(bean: example, field: 'language')}</a> - Date added: ${formatDate(date: example.dateCreated, format: "dd-MMM-yyyy")}</div>
                    </div>
                </div>
                <div id="tb"></div>
            </g:each>
        </div>

        <div style="float: right; width: 350px">
            <h1>Recent Grails examples</h1>
            <hr>

            <g:each in="${recentGrailsExamples}" status="i" var="example">
                <div id="tt"></div>
                <div id="tm">
                    <div id="tmimg">
                        <img src="${createLinkTo(dir: 'images', file: 'brights_icon_50x50-full.jpeg')}" alt="Default icon">
                    </div>
                    <g:link controller="example" action="show" id="${fieldValue(bean: example, field: 'id')}" params="[title:example.title]">
                        ${fieldValue(bean: example, field: 'title')}
                    </g:link>
                    <br>
                    <div id="td">${fieldValue(bean: example, field: 'description')}
                        <div id="ts">Language: <a href="3">${fieldValue(bean: example, field: 'language')}</a> - Date added: ${formatDate(date: example.dateCreated, format: "dd-MMM-yyyy")}</div>
                    </div>
                </div>
                <div id="tb"></div>
            </g:each>
        </div>
    </div>

</body>
</html>

