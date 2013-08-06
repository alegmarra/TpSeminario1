<%@ page import="users.Solution" %>



<div class="fieldcontain ${hasErrors(bean: solutionInstance, field: 'codeURL', 'error')} ">
	<label for="codeURL">
		<g:message code="solution.codeURL.label" default="Code URL" />
		
	</label>
	<g:textField name="codeURL" value="${solutionInstance?.codeURL}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: solutionInstance, field: 'owner', 'error')} required">
	<label for="owner">
		<g:message code="solution.owner.label" default="Owner" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="owner" name="owner.id" from="${users.User.list()}" optionKey="id" required="" value="${solutionInstance?.owner?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: solutionInstance, field: 'ownerID', 'error')} ">
	<label for="ownerID">
		<g:message code="solution.ownerID.label" default="Owner ID" />
		
	</label>
	<g:textField name="ownerID" value="${solutionInstance?.ownerID}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: solutionInstance, field: 'project', 'error')} required">
	<label for="project">
		<g:message code="solution.project.label" default="Project" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="project" name="project.id" from="${groups.Project.list()}" optionKey="id" required="" value="${solutionInstance?.project?.id}" class="many-to-one"/>
</div>

