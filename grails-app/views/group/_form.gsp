<%@ page import="groups.Group" %>



<div class="fieldcontain ${hasErrors(bean: groupInstance, field: 'admin', 'error')} required">
	<label for="admin">
		<g:message code="group.admin.label" default="Admin" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="admin" name="admin.id" from="${groups.Member.list()}" optionKey="id" required="" value="${groupInstance?.admin?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: groupInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="group.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${groupInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: groupInstance, field: 'collaborators', 'error')} ">
	<label for="collaborators">
		<g:message code="group.collaborators.label" default="Collaborators" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${groupInstance?.collaborators?}" var="c">
    <li><g:link controller="member" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="member" action="create" params="['group.id': groupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'member.label', default: 'Member')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: groupInstance, field: 'members', 'error')} ">
	<label for="members">
		<g:message code="group.members.label" default="Members" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${groupInstance?.members?}" var="m">
    <li><g:link controller="member" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="member" action="create" params="['group.id': groupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'member.label', default: 'Member')])}</g:link>
</li>
</ul>

</div>

