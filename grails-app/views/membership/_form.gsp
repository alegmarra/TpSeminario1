<%@ page import="groups.Membership" %>



<div class="fieldcontain ${hasErrors(bean: membershipInstance, field: 'groupKey', 'error')} ">
	<label for="groupKey">
		<g:message code="membership.groupKey.label" default="Group Key" />
		
	</label>
	<g:textField name="groupKey" value="${membershipInstance?.groupKey}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: membershipInstance, field: 'userKey', 'error')} ">
	<label for="userKey">
		<g:message code="membership.userKey.label" default="User Key" />
		
	</label>
	<g:textField name="userKey" value="${membershipInstance?.userKey}"/>
</div>

