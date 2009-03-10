

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Register</title>
    </head>
    <body>
        <div class="cell">
            <h1>Register</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${userInstance}">
            <div class="errors">
                <g:renderErrors bean="${userInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="userName">Username:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:userInstance,field:'userName','errors')}">
                                    <input type="text" id="userName" name="userName" value="${fieldValue(bean:userInstance,field:'userName')}"/>
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="displayName">Display name:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:userInstance,field:'displayName','errors')}">
                                    <input type="text" id="displayName" name="displayName" value="${fieldValue(bean:userInstance,field:'displayName')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="emailAddress">Email address:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:userInstance,field:'emailAddress','errors')}">
                                    <input type="text" id="emailAddress" name="emailAddress" value="${fieldValue(bean:userInstance,field:'emailAddress')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="password">Password:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:userInstance,field:'password','errors')}">
                                    <input type="password" id="password" name="password" value="${fieldValue(bean:userInstance,field:'password')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="password">Confirm Password:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:userInstance,field:'passwordConfirm','errors')}">
                                    <input type="password" id="passwordConfirm" name="passwordConfirm" value="${fieldValue(bean:userInstance,field:'passwordConfirm')}"/>
                                </td>
                            </tr>


                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><input class="btn" type="submit" value="Register" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
