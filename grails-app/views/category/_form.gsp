<%@ page import="uk.ac.shu.ebusiness.rammdesigns.Category" %>



<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'categoryName', 'error')} required">
	<label for="categoryName">
		<g:message code="category.categoryName.label" default="Category Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="categoryName" maxlength="30" required="" value="${categoryInstance?.categoryName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'categoryDescription', 'error')} required">
	<label for="categoryDescription">
		<g:message code="category.categoryDescription.label" default="Category Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="categoryDescription" required="" value="${categoryInstance?.categoryDescription}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'products', 'error')} ">
	<label for="products">
		<g:message code="category.products.label" default="Products" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${categoryInstance?.products?}" var="p">
    <li><g:link controller="product" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="product" action="create" params="['category.id': categoryInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'product.label', default: 'Product')])}</g:link>
</li>
</ul>

</div>

