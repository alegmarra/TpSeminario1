
<%@ page import="users.Solution" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'solution.label', default: 'Solution')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-solution" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-solution" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="codeURL" title="${message(code: 'solution.codeURL.label', default: 'Code URL')}" />
					
						<th><g:message code="solution.owner.label" default="Owner" /></th>
					
						<g:sortableColumn property="ownerID" title="${message(code: 'solution.ownerID.label', default: 'Owner ID')}" />
					
						<th><g:message code="solution.project.label" default="Project" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${solutionInstanceList}" status="i" var="solutionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${solutionInstance.id}">${fieldValue(bean: solutionInstance, field: "codeURL")}</g:link></td>
					
						<td>${fieldValue(bean: solutionInstance, field: "owner")}</td>
					
						<td>${fieldValue(bean: solutionInstance, field: "ownerID")}</td>
					
						<td>${fieldValue(bean: solutionInstance, field: "project")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${solutionInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
