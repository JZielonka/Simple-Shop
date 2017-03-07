<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Jarek
  Date: 2017-02-20
  Time: 16:04
  To change this template use File | Settings | File Templates.
--%>

<jsp:include page="header.jsp"/>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Add Product</h1>
            <p class="lead">Fill the bellow information to add product</p>
        </div>

        <form:form action="${pageContext.request.contextPath}//productInfo/edit/" method="post" modelAttribute="product"
                   enctype="multipart/form-data">
        <form:hidden path="productId" value="${product.productId}" />

            <div class="form-group">
                <label for="name">Name</label> <form:errors path="productName" cssStyle="color: red"/>
                <form:input path="productName" id="name" class="form-control"  placeholder="${product.productName}" />
            </div>


            <div class="form-group">
                <label for="category">Category</label>
                <label class="checkbox-inline">  <form:radiobutton path="productCategory" id="category" value="Instrument"/>Instrument</label>
                <label class="checkbox-inline">  <form:radiobutton path="productCategory" id="category" value="Record" />Record</label>
                <label class="checkbox-inline">  <form:radiobutton path="productCategory" id="category" value="Accesory" />Accessory</label>
            </div>

            <div class="form-group">
                <label for="name">Description</label>
                <form:textarea   path="productDescription" id="description" class="form-control"/>
            </div>


            <div class="form-group">
                <label for="price">Price</label> <form:errors path="productPrice" cssStyle="color: red"/>
                <form:input path="productPrice" id="price" class="form-control" placeholder="${product.productPrice}" />
            </div>



            <div class="form-group">
                <label for="condition">Condition</label>
                <label class="checkbox-inline">  <form:radiobutton path="productCondition" id="condition" value="new" />Instrument</label>
                <label class="checkbox-inline">  <form:radiobutton path="productCondition" id="condition" value="used" />Record</label>
            </div>



            <div class="form-group">
                <label for="status">Status</label>
                <label class="checkbox-inline">  <form:radiobutton path="productStatus" id="status" value="active" />Active</label>
                <label class="checkbox-inline">  <form:radiobutton path="productStatus" id="status" value="inactive" />Inactive</label>
            </div>


            <div class="form-group"> <form:errors path="unitInStock" cssStyle="color: red" />
                <label for="unitInStock">Units in Stock</label>
                <form:input path="unitInStock" id="unitInStock" class="form-control" placeholder="${product.unitInStock}"/>
            </div>

            <div class="form-group">
                <label for="manufacturer">Manufacturer</label>
                <form:input path="productManufacturer" id="manufacturer" class="form-control"/>
            </div>

            <div class="form-group">
                <label class="control-label" for="productImage">Upload</label>
                <form:input path="productImage" id="productImage" type="file" class="form:input-large"/>
            </div>

            <br><br>
            <input type="submit" value="submit" class="btn btn-default"/>
            <a href="<spring:url value="/productInventory"/>" hi class="btn btn-default">Cancel</a>

        </form:form>
    </div>
</div>


<jsp:include page="footer.jsp"/>