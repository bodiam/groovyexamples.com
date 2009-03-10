<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main"/>
    <title>Create Example</title>
</head>
<body>
    <div class="cell">
        <h1>Create new example</h1><hr>
    </div>
    <g:if test="${flash.message}">
        <div class="cell message">${flash.message}</div>
    </g:if>

    <div id="example" class="cell">
        <div id="tt"></div>
        <div id="tm">
            <div id="tmimg">
                <img src="${createLinkTo(dir: 'images', file: 'brights_icon_50x50-full.jpeg')}" alt="Default icon">
            </div>
        <div id="td">${fieldValue(bean: exampleInstance, field: 'description')}
            <g:hasErrors bean="${exampleInstance}">
                <div class="errors">
                    <g:renderErrors bean="${exampleInstance}" as="list"/>
                </div>
            </g:hasErrors>
            <g:form action="save" method="post">
                <input type="hidden" name="author.id" value="<auth:id/>"/>

                <table>
                    <tbody>

                    <tr class="prop">
                        <td valign="top" class="name">
                            <label>Author:</label>
                        </td>
                        <td valign="top" class="value ${hasErrors(bean: exampleInstance, field: 'author', 'errors')}">
                            <auth:displayName/>
                        </td>
                    </tr>

                    <tr class="prop">
                        <td valign="top" class="name">
                            <label for="title">Title:</label>
                        </td>
                        <td valign="top" class="value ${hasErrors(bean: exampleInstance, field: 'title', 'errors')}">
                            <input type="text" id="title" class="medium_input" name="title" value="${fieldValue(bean: exampleInstance, field: 'title')}"/>
                        </td>
                    </tr>

                    <tr class="prop">
                        <td valign="top" class="name">
                            <label for="type">Type:</label>
                        </td>
                        <td valign="top" class="value ${hasErrors(bean: exampleInstance, field: 'language', 'errors')}">
                            <g:radio name="type" value="Groovy" checked="${exampleInstance.type == 'Groovy'}" />Groovy
                            <g:radio name="type" value="Grails" checked="${exampleInstance.type == 'Grails'}" />Grails
                        </td>
                    </tr>


                    <tr class="prop">
                        <td valign="top" class="name">
                            <label for="description">Description:</label>
                        </td>
                        <td valign="top" class="value ${hasErrors(bean: exampleInstance, field: 'description', 'errors')}">
                            <textarea id="description" class="medium_textarea" name="description">${fieldValue(bean: exampleInstance, field: 'description')}</textarea>
                        </td>
                    </tr>

                    <tr class="prop">
                        <td valign="top" class="name">
                            <label for="text">Text:</label>
                        </td>
                        <td valign="top" class="value ${hasErrors(bean: exampleInstance, field: 'text', 'errors')}">
                            <textarea id="text" class="large_textarea" name="text">${fieldValue(bean: exampleInstance, field: 'text')}</textarea>
                        </td>
                    </tr>

                    <tr class="prop">
                        <td valign="top" class="name">
                            <label for="code">Code:</label>
                        </td>
                        <td valign="top" class="value ${hasErrors(bean: exampleInstance, field: 'code', 'errors')}">
                            <textarea id="code" class="large_textarea" name="code">${fieldValue(bean: exampleInstance, field: 'code')}</textarea>
                        </td>
                    </tr>

                    <tr class="prop">
                        <td valign="top" class="name">
                            <label for="language">Language:</label>
                        </td>
                        <td valign="top" class="value ${hasErrors(bean: exampleInstance, field: 'language', 'errors')}">
                            <select id="language" name="language">
                                <option>Groovy</option>
                                <option>Java</option>
                                <option>Javascript</option>
                                <option>XML</option>
                            </select>
                        </td>
                    </tr>

                    </tbody>
                </table>
                </div>
                <div class="buttons" style="text-align: right; padding-right: 30px">
                    <span class="button"><input class="btn" type="submit" value="Create"/></span>
                </div>
            </g:form>
        </div>
        <div id="tb"></div>
    </div>

</body>
</html>
