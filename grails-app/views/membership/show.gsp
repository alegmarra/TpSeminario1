
<%@ page import="groups.Membership" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'membership.label', default: 'Membership')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-membership" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-membership" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list membership">
			
				<g:if test="${membershipInstance?.key}">
				<li class="fieldcontain">
					<span id="key-label" class="property-label"><g:message code="membership.key.label" default="Key" /></span>
					
						<span class="property-value" aria-labelledby="key-label"><g:fieldValue bean="${membershipInstance}" field="key"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${membershipInstance?.groupKey}">
				<li class="fieldcontain">
					<span id="groupKey-label" class="property-label"><g:message code="membership.groupKey.label" default="Group Key" /></span>
					
						<span class="property-value" aria-labelledby="groupKey-label"><g:fieldValue bean="${membershipInstance}" field="groupKey"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${membershipInstance?.userKey}">
				<li class="fieldcontain">
					<span id="userKey-label" class="property-label"><g:message code="membership.userKey.label" default="User Key" /></span>
					
						<span class="property-value" aria-labelledby="userKey-label"><g:fieldValue bean="${membershipInstance}" field="userKey"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${membershipInstance?.id}" />
					<g:link class="edit" action="edit" id="${membershipInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
