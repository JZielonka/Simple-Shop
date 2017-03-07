<%--suppress ALL --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="pl">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="header.jsp"/>

<div class="container-wraper">
    <div class="container">

    <div class="page-header"/>

        <h1>Product Inventory Page!</h1>

        <p class="lead">

            Product inventory page!
        </p>

        <table class="table table-responsive">

            <thead>
            <tr class="bg-success">
                <th>Photo thumb</th>
                <th>Product</th>
                <th>Category</th>
                <th>Condition</th>
                <th>Price</th>
                <th></th>
            </tr>
            </thead>



            <c:forEach items="${products}" var="product">
                <tr>
                    <td><img src="<c:url value="/resources/images/${product.productId}.png"/>" alt="image" height="30%" width="30%"/></td>
                    <td>${product.productName}</td>
                    <td>${product.productCategory}</td>
                    <td>${product.productCondition}</td>
                    <td>${product.productPrice}</td>
                </tr>
            </c:forEach>
        </table>



    </div>

    <a href="<c:url value="addProduct" />" class="btn btn-info" >Add Product</a>
    </div>






<jsp:include page="/WEB-INF/view/footer.jsp"/>