
<%@ page import="uk.ac.shu.ebusiness.rammdesigns.Product" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-product" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-product" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="productName" title="${message(code: 'product.productName.label', default: 'Product Name')}" />
					
						<g:sortableColumn property="productDescription" title="${message(code: 'product.productDescription.label', default: 'Product Description')}" />
					
						<g:sortableColumn property="filePath" title="${message(code: 'product.filePath.label', default: 'File Path')}" />
					
						<th><g:message code="product.category.label" default="Category" /></th>
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'product.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'product.lastUpdated.label', default: 'Last Updated')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${productInstanceList}" status="i" var="productInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${productInstance.id}">${fieldValue(bean: productInstance, field: "productName")}</g:link></td>
					
						<td>${fieldValue(bean: productInstance, field: "productDescription")}</td>
					
						<td>${fieldValue(bean: productInstance, field: "filePath")}</td>
					
						<td>${fieldValue(bean: productInstance, field: "category")}</td>
					
						<td><g:formatDate date="${productInstance.dateCreated}" /></td>
					
						<td><g:formatDate date="${productInstance.lastUpdated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${productInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
