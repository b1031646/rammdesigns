
<%@ page import="uk.ac.shu.ebusiness.rammdesigns.Cart" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'cart.label', default: 'Cart')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-cart" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-cart" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'cart.dateCreated.label', default: 'Date Created')}" />
					
						<th><g:message code="cart.product.label" default="Product" /></th>
					
						<th><g:message code="cart.user.label" default="User" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${cartInstanceList}" status="i" var="cartInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${cartInstance.id}">${fieldValue(bean: cartInstance, field: "dateCreated")}</g:link></td>
					
						<td>${fieldValue(bean: cartInstance, field: "product")}</td>
					
						<td>${fieldValue(bean: cartInstance, field: "user")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${cartInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
