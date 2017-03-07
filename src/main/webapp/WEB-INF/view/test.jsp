<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Jarek
  Date: 2017-02-20
  Time: 16:04
  To change this template use File | Settings | File Templates.
--%>

<jsp:include page="header.jsp"/>


<form:form action="#" method="post" commandName="product">
<div class="container-wrapper">
    <div class="container">

        <div class="form-group row">
            <label for="name">Description</label>

            <div class="col-10">
                <form:input class="form-control" path="productDescription" type="text" id="description" />
            </div>

        </div>

        <div class="form-group row">
            <label for="name">Name</label>

            <div class="col-10">
                <form:input class="form-control" path="productName" type="text" id="name"/>

            </div>
        </div>



        <div class="form-group row">
            <label for="category">Category</label>
            <label class="checkbox-inline">  <form:radiobutton path="productCategory" id="category" value="Instrument" />Instrument</label>
            <label class="checkbox-inline">  <form:radiobutton path="productCategory" id="category" value="Record" />Record</label>
            <label class="checkbox-inline">  <form:radiobutton path="productCategory" id="category" value="Accesory" />Accessory</label>
        </div>

        <div class="form-group row">
            <label for="example-search-input" class="col-2 col-form-label">Search</label>
            <div class="col-10">
                <input class="form-control" type="search" value="How do I shoot web" id="example-search-input">
            </div>
        </div>
        <div class="form-group row">
            <label for="example-email-input" class="col-2 col-form-label">Email</label>
            <div class="col-10">
                <input class="form-control" type="email" value="bootstrap@example.com" id="example-email-input">
            </div>
        </div>
        <div class="form-group row">
            <label for="example-url-input" class="col-2 col-form-label">URL</label>
            <div class="col-10">
                <input class="form-control" type="url" value="https://getbootstrap.com" id="example-url-input">
            </div>
        </div>
        <div class="form-group row">
            <label for="example-tel-input" class="col-2 col-form-label">Telephone</label>
            <div class="col-10">
                <input class="form-control" type="tel" value="1-(555)-555-5555" id="example-tel-input">
            </div>
        </div>
        <div class="form-group row">
            <label for="example-password-input" class="col-2 col-form-label">Password</label>
            <div class="col-10">
                <input class="form-control" type="password" value="hunter2" id="example-password-input">
            </div>
        </div>
        <div class="form-group row">
            <label for="example-number-input" class="col-2 col-form-label">Number</label>
            <div class="col-10">
                <input class="form-control" type="number" value="42" id="example-number-input">
            </div>
        </div>
        <div class="form-group row">
            <label for="example-datetime-local-input" class="col-2 col-form-label">Date and time</label>
            <div class="col-10">
                <input class="form-control" type="datetime-local" value="2011-08-19T13:45:00" id="example-datetime-local-input">
            </div>
        </div>
        <div class="form-group row">
            <label for="example-date-input" class="col-2 col-form-label">Date</label>
            <div class="col-10">
                <input class="form-control" type="date" value="2011-08-19" id="example-date-input">
            </div>
        </div>
        <div class="form-group row">
            <label for="example-month-input" class="col-2 col-form-label">Month</label>
            <div class="col-10">
                <input class="form-control" type="month" value="2011-08" id="example-month-input">
            </div>
        </div>
        <div class="form-group row">
            <label for="example-week-input" class="col-2 col-form-label">Week</label>
            <div class="col-10">
                <input class="form-control" type="week" value="2011-W33" id="example-week-input">
            </div>
        </div>
        <div class="form-group row">
            <label for="example-time-input" class="col-2 col-form-label">Time</label>
            <div class="col-10">
                <input class="form-control" type="time" value="13:45:00" id="example-time-input">
            </div>
        </div>
        <div class="form-group row">
            <label for="example-color-input" class="col-2 col-form-label">Color</label>
            <div class="col-10">
                <input class="form-control" type="color" value="#563d7c" id="example-color-input">
            </div>
        </div>


            </div>
        </div>
</form:form>

<jsp:include page="footer.jsp"/>