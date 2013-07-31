<%@ page import="groups.Member" %>



<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'testInt', 'error')} required">
	<label for="testInt">
		<g:message code="member.testInt.label" default="Test Int" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="testInt" type="number" value="${memberInstance.testInt}" required=""/>
</div>

