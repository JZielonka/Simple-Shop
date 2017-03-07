<%--
  Created by IntelliJ IDEA.
  User: Jarek
  Date: 2017-02-21
  Time: 13:19
  To change this template use File | Settings | File Templates.
--%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="header.jsp"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<div class="container-wraper">
    <div class="container">


        <p class="lead">

            ${product.productName}
            ${product.productPrice}
            ${product.productCategory}
            ${product.productManufacturer}

        </p>








    </div>



</div>


<jsp:include page="/WEB-INF/view/footer.jsp"/>





