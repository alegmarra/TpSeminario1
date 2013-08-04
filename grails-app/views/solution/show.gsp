
<%@ page import="users.Solution" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'solution.label', default: 'Solution')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-solution" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-solution" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list solution">
			
				<g:if test="${solutionInstance?.codeURL}">
				<li class="fieldcontain">
					<span id="codeURL-label" class="property-label"><g:message code="solution.codeURL.label" default="Code URL" /></span>
					
						<span class="property-value" aria-labelledby="codeURL-label"><g:fieldValue bean="${solutionInstance}" field="codeURL"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${solutionInstance?.owner}">
				<li class="fieldcontain">
					<span id="owner-label" class="property-label"><g:message code="solution.owner.label" default="Owner" /></span>
					
						<span class="property-value" aria-labelledby="owner-label"><g:link controller="user" action="show" id="${solutionInstance?.owner?.id}">${solutionInstance?.owner?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${solutionInstance?.ownerID}">
				<li class="fieldcontain">
					<span id="ownerID-label" class="property-label"><g:message code="solution.ownerID.label" default="Owner ID" /></span>
					
						<span class="property-value" aria-labelledby="ownerID-label"><g:fieldValue bean="${solutionInstance}" field="ownerID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${solutionInstance?.project}">
				<li class="fieldcontain">
					<span id="project-label" class="property-label"><g:message code="solution.project.label" default="Project" /></span>
					
						<span class="property-value" aria-labelledby="project-label"><g:link controller="project" action="show" id="${solutionInstance?.project?.id}">${solutionInstance?.project?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${solutionInstance?.id}" />
					<g:link class="edit" action="edit" id="${solutionInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
