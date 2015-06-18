<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Insert title here</title>
        <spring:url value="/resources/css/style.css" var="mainCss" />
        <link href="${mainCss}" rel="stylesheet" />
    </head>
    <body>
        <div class="wrapper">

            <div class="logo"></div>
            <div class="menu">
                <div class="slogan"> Fantastic4 Connecting People
                </div>
            </div>
            <hr/>
            <div class="travel">
            <h2>Profile Update</h2>
            <label for="userName"> First Name: </label> <label> ${user.firstName} </label>
            <br/>
            <label for="userName"> Middle Name: </label> <label> ${user.middleName} </label>
            <br/>
             <label for="userName"> User Name: </label> <label> ${user.userName} </label>
            <br/>
            <br>
            <div>${errors}</div>
            <form:form commandName="profile" method="post">
                <div class="radiobutton">
                <form:errors path="*"/>
                <form:label path="gender" cssClass="leftfloat">Gender:</form:label>
                <form:radiobuttons items="${gender}" path="gender"/>
                </div>
                <br/>
                <br/>
                <form:label path="dateOfBirth" cssClass="leftfloat">Date of Birth:</form:label> 
                <form:input path="dateOfBirth" /> 
                <br/> 
                <form:label path="address.address1" cssClass="leftfloat">Address1:</form:label>
                <form:input path="address.address1" />
                <br/>
                <form:label path="address.address2" cssClass="leftfloat">Address2:</form:label>
                <form:input path="address.address2" />
                <br/>
                <form:label path="address.city" cssClass="leftfloat">City:</form:label>
                <form:input path="address.city" />
                <br/>
                <form:label path="address.stateName" cssClass="leftfloat">State Name:</form:label>
                <form:input path="address.stateName" />
                <br/>
                <form:label path="address.zipCode" cssClass="leftfloat">Zip Code:</form:label>
                <form:input path="address.zipCode" />
                <br/>
                <form:label path="phoneNumber" cssClass="leftfloat">Phone Number:</form:label>
                <form:input path="phoneNumber" />
                <br/>
                <form:label path="category" cssClass="leftfloat">Interest Filed:</form:label> 
                <form:checkboxes items="${interestedField}" itemLabel="value" path="category"/><br> 
                <br/>
                <form:button type="submit" id="btnUpdate">Update</form:button>
            </form:form>
            </div>
        </div>
    </body>
</html>