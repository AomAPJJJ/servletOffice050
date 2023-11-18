<%--
  Created by IntelliJ IDEA.
  User: AomAPJ
  Date: 3/11/2023 AD
  Time: 11:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
    <title>Classic Model Offices</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>

<body class="d-flex h-100 text-center text-bg-dark">


<div class="cover-container d-flex w-100 h-50 p-3 mx-auto flex-column">
    <header class="mb-auto">
        <h3 class="float-md-start mb-3 ">Classic Model Offices ::</h3>
        <div>

               <form action="find-Office" method="post">
                   <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" name="find">
                   <br>
                   <button class="btn btn-outline-success" type="submit">Find</button>
                </form>

        </div>

    </header>
    <div class="my-3 p-3 bg-body rounded shadow-sm">
        <h2>Office Info</h2>
    </div>
    <c:if test="${success != null}"><p style="color: red">${success}</p></c:if>
    <c:if test="${error != null}"><p style="color: red">${error}</p></c:if>
    <c:forEach items="${offices}" var="office">
        <div class="d-flex text-body-secondary pt-3">
            <svg class="bd-placeholder-img flex-shrink-0 me-2 rounded" width="32" height="32"
                 xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 32x32"
                 preserveAspectRatio="xMidYMid slice" focusable="false">
                <title>Placeholder</title>
                <rect width="100%" height="100%" fill="#007bff"></rect>
                <text x="50%" y="50%" fill="#007bff" dy=".3em">32x32</text>
            </svg>
            <div class="pb-3 mb-0 small lh-sm border-bottom">
                <strong class="d-block text-gray-dark"><p>office Code : ${office.officeCode}</p></strong>
                        <h6>${office.city}</h6>
                        <h6>${office.country}</h6>
                        <h6>${office.phone}</h6>
                        <h6>${office.addressLine1}</h6>
                <button class="btn btn-warning rounded-pill px-3" type="button">
                    <a href="update-Office?officeCode=${office.officeCode}" style="color: black">update</a>
                </button>

                <button class="btn btn-secondary rounded-pill px-3" type="button">
                    <a href="delete-Office?officeCode=${office.officeCode}"style="color: white">delete</a>
                </button>

            </div>
        </div>
    </c:forEach>
    <small class="d-block text-end mt-3">

        <button class="btn btn-primary rounded-pill px-3" type="button" style="margin: 50px;">
            <a href="insert-Office" style="color: white">Insert The Office Click Here</a>
        </button>
    </small>
</div>

</body>


</html>
