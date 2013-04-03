<%@ page import="uk.ac.shu.ebusiness.rammdesigns.Subscription" %>



<div class="fieldcontain ${hasErrors(bean: subscriptionInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="subscription.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="75" required="" value="${subscriptionInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: subscriptionInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="subscription.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="email" cols="40" rows="5" maxlength="255" required="" value="${subscriptionInstance?.email}"/>
</div>

