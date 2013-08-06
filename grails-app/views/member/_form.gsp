<%@ page import="groups.Member" %>



<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'membership', 'error')} required">
	<label for="membership">
		<g:message code="member.membership.label" default="Membership" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="membership" name="membership.id" from="${groups.Membership.list()}" optionKey="id" required="" value="${memberInstance?.membership?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="member.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${memberInstance?.name}"/>
</div>

