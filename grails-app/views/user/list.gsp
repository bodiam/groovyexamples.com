<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main"/>
    <title>User List</title>
</head>
<body>
    <div class="nav">
        <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}">Home</a></span>
        <auth:isNotLoggedIn>
            <span class="menuButton"><g:link class="create" action="register">Register</g:link></span>
            <span class="menuButton"><g:link class="create" action="login">Login</g:link></span>
        </auth:isNotLoggedIn>

        <auth:isLoggedIn>
            Hello <auth:userName/>
            <span class="menuButton"><g:link class="create" action="logout">Logout</g:link></span>
        </auth:isLoggedIn>

    </div>
    <div class="body">
        <h1>User List</h1>
        <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
        </g:if>
        <div class="list">
            <table>
                <thead>
                <tr>

                    <g:sortableColumn property="id" title="Id"/>

                    <g:sortableColumn property="displayName" title="Display Name"/>

                    <g:sortableColumn property="emailAdress" title="Email Adress"/>

                    <g:sortableColumn property="password" title="Password"/>

                    <g:sortableColumn property="userName" title="User Name"/>

                </tr>
                </thead>
                <tbody>
                <g:each in="${userInstanceList}" status="i" var="userInstance">
                    <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">

                        <td><g:link action="show" id="${userInstance.id}">${fieldValue(bean: userInstance, field: 'id')}</g:link></td>

                        <td>${fieldValue(bean: userInstance, field: 'displayName')}</td>

                        <td>${fieldValue(bean: userInstance, field: 'emailAddress')}</td>

                        <td>${fieldValue(bean: userInstance, field: 'password')}</td>

                        <td>${fieldValue(bean: userInstance, field: 'userName')}</td>

                    </tr>
                </g:each>
                </tbody>
            </table>
        </div>
        <div class="paginateButtons">
            <g:paginate total="${User.count()}"/>
        </div>
    </div>
</body>
</html>
