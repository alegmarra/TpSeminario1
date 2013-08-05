
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
			
				<g:if test="${projectInstance?.softDeadline}">
				<li class="fieldcontain">
					<span id="softDeadline-label" class="property-label"><g:message code="project.softDeadline.label" default="Soft Deadline" /></span>
					
						<span class="property-value" aria-labelledby="softDeadline-label"><g:formatDate date="${projectInstance?.softDeadline}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.finalDeadline}">
				<li class="fieldcontain">
					<span id="finalDeadline-label" class="property-label"><g:message code="project.finalDeadline.label" default="Final Deadline" /></span>
					
						<span class="property-value" aria-labelledby="finalDeadline-label"><g:formatDate date="${projectInstance?.finalDeadline}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.creator}">
				<li class="fieldcontain">
					<span id="creator-label" class="property-label"><g:message code="project.creator.label" default="Creator" /></span>
					
						<span class="property-value" aria-labelledby="creator-label"><g:link controller="member" action="show" id="${projectInstance?.creator?.id}">${projectInstance?.creator?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="project.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${projectInstance}" field="description"/></span>
					
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
			
				<g:if test="${projectInstance?.state}">
				<li class="fieldcontain">
					<span id="state-label" class="property-label"><g:message code="project.state.label" default="State" /></span>
					
						<span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${projectInstance}" field="state"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.visibility}">
				<li class="fieldcontain">
					<span id="visibility-label" class="property-label"><g:message code="project.visibility.label" default="Visibility" /></span>
					
						<span class="property-value" aria-labelledby="visibility-label"><g:fieldValue bean="${projectInstance}" field="visibility"/></span>
					
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
