<%@ page import="uk.ac.shu.ebusiness.rammdesigns.Product" %>



<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'productName', 'error')} required">
	<label for="productName">
		<g:message code="product.productName.label" default="Product Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="productName" size="34" maxlength="30" required="" value="${productInstance?.productName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'productDescription', 'error')} required">
	<label for="productDescription">
		<g:message code="product.productDescription.label" default="Product Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="productDescription" cols="40" rows="5" required="" value="${productInstance?.productDescription}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'filePath', 'error')} required">
	<label for="filePath">
		<g:message code="product.filePath.label" default="File Path" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="filePath"  size="34" pattern="${productInstance.constraints.filePath.matches}" required="" value="${productInstance?.filePath}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'price', 'error')} required">
	<label for="price">
		<g:message code="product.price.label" default="Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="price"  size="10" required="" value="${productInstance?.price}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productInstance, field: 'category', 'error')} ">
	<label for="category">
		<g:message code="product.category.label" default="Category" />
		
	</label>
	<g:select name="category" from="${productInstance.constraints.category.inList}" value="${productInstance?.category}" valueMessagePrefix="product.category" noSelection="['': '']"/>
</div>

