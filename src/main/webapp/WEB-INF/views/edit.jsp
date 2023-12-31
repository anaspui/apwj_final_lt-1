<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Edit Student</title>
</head>
<body>

<h2>Edit Student</h2>

<form:form action="${pageContext.request.contextPath}/update/${student.id}" method="post" modelAttribute="student">
    <label for="id">ID: ${student.id}</label>
    <br>

    <label for="name">Name:</label>
    <form:input path="name" required="true"/>
    <form:errors path="name"/>
    <br>
    <label for="email">Email:</label>
    <form:input path="email" type="email" required="true"/>
    <form:errors path="email"/>
    <br>
    <label for="dateOfBirth">Date of Birth:</label>
    <form:input path="dateOfBirth" type="date" required="true"/>
    <form:errors path="dateOfBirth"/>
    <br>
    <!-- Add other input fields for gender, quota, country, etc. -->
    <label for="gender">Gender:</label>
    <form:radiobuttons path="gender" item="Gender" />
    <form:errors path="gender"/>
    <br>
    <label for="quota">Quota:</label>
    <form:input path="quota" required="true"/>
    <form:errors path="quota"/>
    <br>
    <label for="country">Country:</label>
    <form:input path="country" required="true"/>
    <form:errors path="country"/>
    <br>

    <input type="submit" value="Update">
</form:form>

</body>
</html>
