<%@ page import="groups.Member" %>



<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="member.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${memberInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'group', 'error')} required">
	<label for="group">
		<g:message code="member.group.label" default="Group" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="group" name="group.id" from="${groups.Group.list()}" optionKey="id" required="" value="${memberInstance?.group?.id}" class="many-to-one"/>
</div>

