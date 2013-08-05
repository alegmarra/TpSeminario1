<%@ page import="groups.Project" %>



<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'softDeadline', 'error')} ">
	<label for="softDeadline">
		<g:message code="project.softDeadline.label" default="Soft Deadline" />
		
	</label>
	<g:datePicker name="softDeadline" precision="day"  value="${projectInstance?.softDeadline}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'finalDeadline', 'error')} ">
	<label for="finalDeadline">
		<g:message code="project.finalDeadline.label" default="Final Deadline" />
		
	</label>
	<g:datePicker name="finalDeadline" precision="day"  value="${projectInstance?.finalDeadline}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'creator', 'error')} required">
	<label for="creator">
		<g:message code="project.creator.label" default="Creator" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="creator" name="creator.id" from="${groups.Member.list()}" optionKey="id" required="" value="${projectInstance?.creator?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="project.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${projectInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'group', 'error')} required">
	<label for="group">
		<g:message code="project.group.label" default="Group" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="group" name="group.id" from="${groups.Group.list()}" optionKey="id" required="" value="${projectInstance?.group?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="project.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${projectInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'solutions', 'error')} ">
	<label for="solutions">
		<g:message code="project.solutions.label" default="Solutions" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${projectInstance?.solutions?}" var="s">
    <li><g:link controller="solution" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="solution" action="create" params="['project.id': projectInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'solution.label', default: 'Solution')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'state', 'error')} required">
	<label for="state">
		<g:message code="project.state.label" default="State" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="state" from="${groups.State?.values()}" keys="${groups.State.values()*.name()}" required="" value="${projectInstance?.state?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'visibility', 'error')} required">
	<label for="visibility">
		<g:message code="project.visibility.label" default="Visibility" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="visibility" from="${groups.Visibility?.values()}" keys="${groups.Visibility.values()*.name()}" required="" value="${projectInstance?.visibility?.name()}"/>
</div>

