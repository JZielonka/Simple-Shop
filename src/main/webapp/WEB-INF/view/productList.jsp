<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="header.jsp"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<div class="container-wraper">
    <div class="container">


        <p class="lead">

            Checkout All awesome products available now!
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

            <%----%>

            <c:forEach items="${products}" var="product">
                <tr>
                    <td><img src="<c:url value="/resources/images/${product.productId}.png"/>" alt="image" height="40%" width="40%"/></td>
                    <td>${product.productName}</td>
                    <td>${product.productCategory}</td>
                    <td>${product.productCondition}</td>
                    <td>${product.productPrice}</td>
                    <td>    <a href="${pageContext.request.contextPath}/productInfo/${product.productId}" class="  glyphicon glyphicon-info-sign"/></td>

                    <td>  <a href="${pageContext.request.contextPath}/productInfo/edit/${product.productId}" class="glyphicon glyphicon-pencil"/></td>
                    <td>  <a href="${pageContext.request.contextPath}/productInfo/delete/${product.productId}" class="glyphicon glyphicon-remove"/></td>

                </tr>
            </c:forEach>
        </table>



    </div>



</div>


<jsp:include page="/WEB-INF/view/footer.jsp"/>





