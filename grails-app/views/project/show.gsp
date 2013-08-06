
<%@ page import="groups.Project" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'project.label', default: 'Project')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-project" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-project" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list project">
			
				<g:if test="${projectInstance?.deadline}">
				<li class="fieldcontain">
					<span id="deadline-label" class="property-label"><g:message code="project.deadline.label" default="Deadline" /></span>
					
						<span class="property-value" aria-labelledby="deadline-label"><g:formatDate date="${projectInstance?.deadline}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.exercise}">
				<li class="fieldcontain">
					<span id="exercise-label" class="property-label"><g:message code="project.exercise.label" default="Exercise" /></span>
					
						<span class="property-value" aria-labelledby="exercise-label"><g:fieldValue bean="${projectInstance}" field="exercise"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.group}">
				<li class="fieldcontain">
					<span id="group-label" class="property-label"><g:message code="project.group.label" default="Group" /></span>
					
						<span class="property-value" aria-labelledby="group-label"><g:link controller="group" action="show" id="${projectInstance?.group?.id}">${projectInstance?.group?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="project.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${projectInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.solutions}">
				<li class="fieldcontain">
					<span id="solutions-label" class="property-label"><g:message code="project.solutions.label" default="Solutions" /></span>
					
						<g:each in="${projectInstance.solutions}" var="s">
						<span class="property-value" aria-labelledby="solutions-label"><g:link controller="solution" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${projectInstance?.id}" />
					<g:link class="edit" action="edit" id="${projectInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
