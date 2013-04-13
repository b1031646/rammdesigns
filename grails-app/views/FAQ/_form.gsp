<%@ page import="uk.ac.shu.ebusiness.rammdesigns.FAQ" %>



<div class="fieldcontain ${hasErrors(bean: FAQInstance, field: 'question', 'error')} required">
	<label for="question">
		<g:message code="FAQ.question.label" default="Question" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="question" cols="30" rows="10" required="" value="${FAQInstance?.question}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: FAQInstance, field: 'answer', 'error')} required">
	<label for="answer">
		<g:message code="FAQ.answer.label" default="Answer" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="answer" cols="40" rows="10" required="" value="${FAQInstance?.answer}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: FAQInstance, field: 'category', 'error')} required">
	<label for="category">
		<g:message code="FAQ.category.label" default="Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="category" name="category.id" from="${uk.ac.shu.ebusiness.rammdesigns.Category.list()}" optionKey="id" required="" value="${FAQInstance?.category?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: FAQInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="FAQ.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>

	<g:select id="user" name="user.id" from="${session.user}" optionKey="id" required="" value="${FAQInstance?.user?.id}" class="many-to-one"/>
</div>

