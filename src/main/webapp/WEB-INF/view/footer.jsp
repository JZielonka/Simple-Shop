<%--
  Created by IntelliJ IDEA.
  User: Jarek
  Date: 2017-02-17
  Time: 13:40
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<footer class="footer">
    <div class="container">
        <p class="text-muted">@ 2017 Company Inc</p>
    </div>
</footer>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"/>
<script>window.jQuery || document.write('<script src="<spring:url value="/resources/js/jquery-3.1.1.min.js" />"><\/script>')</script>
<script src="<spring:url value="/resources/js/bootstrap.min.js"/> "></script>
</body>

</html>