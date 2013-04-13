<%@ page import="uk.ac.shu.ebusiness.rammdesigns.Cart" %>



<div class="fieldcontain ${hasErrors(bean: cartInstance, field: 'product', 'error')} required">
	<label for="product">
		<g:message code="cart.product.label" default="Product" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="product" name="product.id" from="${uk.ac.shu.ebusiness.rammdesigns.Product.list()}" optionKey="id" required="" value="${cartInstance?.product?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cartInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="cart.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${uk.ac.shu.ebusiness.rammdesigns.User.list()}" optionKey="id" required="" value="${cartInstance?.user?.id}" class="many-to-one"/>
</div>

