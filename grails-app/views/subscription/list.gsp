
<%@ page import="uk.ac.shu.ebusiness.rammdesigns.Subscription" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'subscription.label', default: 'Subscription')}" />
		<title>RAMM Admin Panel: <g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-subscription" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
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

<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>

			</ul>
		</div>


<!-- Scaffolded Code -->



		<div id="list-subscription" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'subscription.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'subscription.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'subscription.dateCreated.label', default: 'Date Created')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${subscriptionInstanceList}" status="i" var="subscriptionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${subscriptionInstance.id}">${fieldValue(bean: subscriptionInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: subscriptionInstance, field: "email")}</td>
					
						<td><g:formatDate date="${subscriptionInstance.dateCreated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${subscriptionInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
