<%@ page import="users.Solution" %>



<div class="fieldcontain ${hasErrors(bean: solutionInstance, field: 'codeURL', 'error')} ">
	<label for="codeURL">
		<g:message code="solution.codeURL.label" default="Code URL" />
		
	</label>
	<g:textField name="codeURL" value="${solutionInstance?.codeURL}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: solutionInstance, field: 'creator', 'error')} required">
	<label for="creator">
		<g:message code="solution.creator.label" default="Creator" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="creator" name="creator.id" from="${groups.Member.list()}" optionKey="id" required="" value="${solutionInstance?.creator?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: solutionInstance, field: 'project', 'error')} required">
	<label for="project">
		<g:message code="solution.project.label" default="Project" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="project" name="project.id" from="${groups.Project.list()}" optionKey="id" required="" value="${solutionInstance?.project?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: solutionInstance, field: 'state', 'error')} required">
	<label for="state">
		<g:message code="solution.state.label" default="State" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="state" from="${groups.State?.values()}" keys="${groups.State.values()*.name()}" required="" value="${solutionInstance?.state?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: solutionInstance, field: 'visibility', 'error')} required">
	<label for="visibility">
		<g:message code="solution.visibility.label" default="Visibility" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="visibility" from="${groups.Visibility?.values()}" keys="${groups.Visibility.values()*.name()}" required="" value="${solutionInstance?.visibility?.name()}"/>
</div>

