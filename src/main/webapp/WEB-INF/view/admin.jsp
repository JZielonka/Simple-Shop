<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Jarek
  Date: 2017-02-17
  Time: 13:32
  To change this template use File | Settings | File Templates.
--%>
<%--suppress ALL --%>


<jsp:include page="header.jsp"/>



<div class="container-wraper">
    <div class="container">

        <h1>Administrator Page!</h1>

        <p class="lead">This is the Administrator Page!</p>




    <h3>
        <a href="<c:url value="/productInventory"/>">Product inventory</a>
    </h3>

<p>Here you can view ,check and modify the product Inventory!</p>

</div>
</div>
<jsp:include page="footer.jsp"/>