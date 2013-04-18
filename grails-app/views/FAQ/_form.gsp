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


