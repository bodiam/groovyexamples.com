<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main"/>
    <syntax:resources languages="${[exampleInstance.language] }"/>
    <title>View ${fieldValue(bean: exampleInstance, field: 'language')} example : ${fieldValue(bean: exampleInstance, field: 'title')}</title>
</head>
<body>
    <div class="cell">
        <h1>${fieldValue(bean: exampleInstance, field: 'title')}</h1><hr>
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
                <div id="ts">Author: Erik Pragt</div>
                <div id="ts">Language: <a href="3">${fieldValue(bean: exampleInstance, field: 'language')}</a> - Date added: ${formatDate(date: exampleInstance.dateCreated, format: "dd-MMM-yyyy")}</div>
            </div>
        </div>
        <div id="tb"></div>

        <div id="tt"></div>
        <div id="tm">
            <div id="td">
                ${fieldValue(bean: exampleInstance, field: 'text')}
                <syntax:format name="code" language="${exampleInstance.language}">${fieldValue(bean: exampleInstance, field: 'code')}</syntax:format>
            </div>

        </div>
        <div id="tb"></div>
    </div>
    <div class="buttons cell">
        <auth:isOwner owner="${exampleInstance.author.id}">
            <g:form>
                <input type="hidden" name="id" value="${exampleInstance?.id}"/>
                <span class="button"><g:actionSubmit class="edit" value="Edit"/></span>
                %{--<span class="button"><g:actionSubmit class="delete" onclick="return confirm('Are you sure?');" value="Delete"/></span>--}%
            </g:form>
        </auth:isOwner>
    </div>
</body>
</html>
