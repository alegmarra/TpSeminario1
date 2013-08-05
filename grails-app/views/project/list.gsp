
<%@ page import="groups.Project" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'project.label', default: 'Project')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-project" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-project" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="softDeadline" title="${message(code: 'project.softDeadline.label', default: 'Soft Deadline')}" />
					
						<g:sortableColumn property="finalDeadline" title="${message(code: 'project.finalDeadline.label', default: 'Final Deadline')}" />
					
						<th><g:message code="project.creator.label" default="Creator" /></th>
					
						<g:sortableColumn property="description" title="${message(code: 'project.description.label', default: 'Description')}" />
					
						<th><g:message code="project.group.label" default="Group" /></th>
					
						<g:sortableColumn property="name" title="${message(code: 'project.name.label', default: 'Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${projectInstanceList}" status="i" var="projectInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${projectInstance.id}">${fieldValue(bean: projectInstance, field: "softDeadline")}</g:link></td>
					
						<td><g:formatDate date="${projectInstance.finalDeadline}" /></td>
					
						<td>${fieldValue(bean: projectInstance, field: "creator")}</td>
					
						<td>${fieldValue(bean: projectInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: projectInstance, field: "group")}</td>
					
						<td>${fieldValue(bean: projectInstance, field: "name")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${projectInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
