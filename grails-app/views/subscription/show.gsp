
<%@ page import="uk.ac.shu.ebusiness.rammdesigns.Subscription" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'subscription.label', default: 'Subscription')}" />
		<title>RAMM Admin Panel: <g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-subscription" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>


<!-- Custom links for admin area -->

<li><g:link controller="user" action="list" class="transition"><g:img dir="images"  file="skin/faq.png"/> FAQ</g:link></li>
<li><g:link controller="subscription" action="list" class="transition"><g:img dir="images"  file="skin/subscription.png"/> Subscription</g:link></li>
<li><g:link controller="contact" action="list" class="transition"><g:img dir="images"  file="skin/contact.png"/> Contact</g:link></li>
<li><g:link controller="product" action="list" class="transition"><g:img dir="images"  file="skin/product.png"/> Product</g:link></li>
<li><g:link controller="user" action="list" class="transition"><g:img dir="images"  file="skin/user.png"/> User</g:link></li>
<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
<g:img dir="images"  file="img/page_headers/adminheader.png"/>

</ul>
</div>
<hr>


<div class="nav_new" role="navigation">
<ul>

<!-- Individual page control links -->

<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>

			</ul>
		</div>


<!-- Scaffolded Code -->
		<div id="show-subscription" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list subscription">
			
				<g:if test="${subscriptionInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="subscription.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${subscriptionInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${subscriptionInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="subscription.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${subscriptionInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${subscriptionInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="subscription.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${subscriptionInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${subscriptionInstance?.id}" />
					<g:link class="edit" action="edit" id="${subscriptionInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
