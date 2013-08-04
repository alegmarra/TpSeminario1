<%@ page import="users.User" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
    <title><g:message /> Login </title>
</head>
<body>
    <a href="#create-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
    </ul>
</div>

<div id="login-user" class="content scaffold-login" role="main">
    <h1><g:message /> User Login </h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${userInstance}">
        <ul class="errors" role="alert">
            <g:eachError bean="${userInstance}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>


    <g:form action="authenticate" method="post" >

            <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'name', 'error')} ">
                <label for="login">
                    <g:message code="user.name.label" default="User Name" />

                </label>
                <g:textField name="login" maxlength="30" id="login" />
            </div>


            <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} ">
                <label for="password">
                    <g:message code="user.password.label" default="Password" />

                </label>
                <g:field type="password" name="password" id="password"/>
            </div>



        <fieldset class="buttons">
            <g:submitButton name="submit" class="save" type="submit" value="Submit" />
        </fieldset>

    </g:form>

</div>
</body>
</html>
%{--<html>
<head>
    <meta name="layout" content="main" />
    <title>Login</title>
</head>
<body>
<div class="body">
    <h1>Login</h1>
    <g:if test="${flash.message}">
        <div class="message">${flash.message}</div>
    </g:if>
    <g:form action="authenticate" method="post" >
        <div class="dialog">
            <table>
                <tbody>
                <tr class="prop">
                    <td class="name">
                        <label for="login">Login:</label>
                    </td>
                    <td>
                        <input type="text" id="login" name="login"/>
                    </td>
                </tr>

                <tr class="prop">
                    <td class="name">
                        <label for="password">Password:</label>
                    </td>
                    <td>
                        <input type="password" id="password" name="password"/>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
        <div class="buttons">
            <span class="button">
                <input class="save" type="submit" value="Login" />
            </span>
        </div>
    </g:form>
</div>
</body>
</html>--}%
