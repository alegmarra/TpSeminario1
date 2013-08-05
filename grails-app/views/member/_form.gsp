<%@ page import="groups.Member" %>



<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'membership', 'error')} required">
	<label for="membership">
		<g:message code="member.membership.label" default="Membership" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="membership" name="membership.id" from="${groups.Membership.list()}" optionKey="id" required="" value="${memberInstance?.membership?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'projects', 'error')} ">
	<label for="projects">
		<g:message code="member.projects.label" default="Projects" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${memberInstance?.projects?}" var="p">
    <li><g:link controller="project" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="project" action="create" params="['member.id': memberInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'project.label', default: 'Project')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'solutions', 'error')} ">
	<label for="solutions">
		<g:message code="member.solutions.label" default="Solutions" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${memberInstance?.solutions?}" var="s">
    <li><g:link controller="solution" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="solution" action="create" params="['member.id': memberInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'solution.label', default: 'Solution')])}</g:link>
</li>
</ul>

</div>

