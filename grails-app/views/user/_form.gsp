<%@ page import="users.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="user.name.label" default="Name" />
		
	</label>
	<g:textField name="name" maxlength="30" value="${userInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} ">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		
	</label>
	<g:field type="password" name="password" value="${userInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'memberShips', 'error')} ">
	<label for="memberShips">
		<g:message code="user.memberShips.label" default="Member Ships" />
		
	</label>
	<g:select name="memberShips" from="${groups.Membership.list()}" multiple="multiple" optionKey="id" size="5" value="${userInstance?.memberShips*.id}" class="many-to-many"/>
</div>

