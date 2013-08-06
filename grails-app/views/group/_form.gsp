<%@ page import="groups.Group" %>



<div class="fieldcontain ${hasErrors(bean: groupInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="group.name.label" default="Name" />
		
	</label>
	<g:textField name="name" maxlength="60" value="${groupInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: groupInstance, field: 'adminship', 'error')} required">
	<label for="adminship">
		<g:message code="group.adminship.label" default="Adminship" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="adminship" name="adminship.id" from="${groups.Membership.list()}" optionKey="id" required="" value="${groupInstance?.adminship?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: groupInstance, field: 'collaborators', 'error')} ">
	<label for="collaborators">
		<g:message code="group.collaborators.label" default="Collaborators" />
		
	</label>
	<g:select name="collaborators" from="${groups.Member.list()}" multiple="multiple" optionKey="id" size="5" value="${groupInstance?.collaborators*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: groupInstance, field: 'members', 'error')} ">
	<label for="members">
		<g:message code="group.members.label" default="Members" />
		
	</label>
	<g:select name="members" from="${groups.Member.list()}" multiple="multiple" optionKey="id" size="5" value="${groupInstance?.members*.id}" class="many-to-many"/>
</div>

