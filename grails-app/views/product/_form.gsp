<%@ page import="uk.ac.shu.ebusiness.rammdesigns.Product" %>



<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'productName', 'error')} required">
	<label for="productName">
		<g:message code="product.productName.label" default="Product Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="productName" maxlength="30" required="" value="${productInstance?.productName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'productDescription', 'error')} required">
	<label for="productDescription">
		<g:message code="product.productDescription.label" default="Product Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="productDescription" required="" value="${productInstance?.productDescription}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'filePath', 'error')} required">
	<label for="filePath">
		<g:message code="product.filePath.label" default="File Path" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="filePath" pattern="${productInstance.constraints.filePath.matches}" required="" value="${productInstance?.filePath}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'category', 'error')} required">
	<label for="category">
		<g:message code="product.category.label" default="Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="category" name="category.id" from="${uk.ac.shu.ebusiness.rammdesigns.Category.list()}" optionKey="id" required="" value="${productInstance?.category?.id}" class="many-to-one"/>
</div>

