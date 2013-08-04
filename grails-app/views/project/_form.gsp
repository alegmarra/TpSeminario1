<%@ page import="groups.Project" %>



<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'deadline', 'error')} ">
	<label for="deadline">
		<g:message code="project.deadline.label" default="Deadline" />
		
	</label>
	<g:datePicker name="deadline" precision="day"  value="${projectInstance?.deadline}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'exercise', 'error')} ">
	<label for="exercise">
		<g:message code="project.exercise.label" default="Exercise" />
		
	</label>
	<g:textField name="exercise" value="${projectInstance?.exercise}"/>
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

