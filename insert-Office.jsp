<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: AomAPJ
  Date: 14/11/2023 AD
  Time: 14:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Insert Office</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<body>
<div tabindex="-1" role="dialog"
     id="modalSignin">
    <div class="modal-dialog" role="document">
        <div class="modal-content rounded-4 shadow">
            <div class="modal-header p-5 pb-4 border-bottom-0">
                <h1 class="fw-bold mb-0 fs-2">Insert Office</h1>

            </div>

            <div class="modal-body pt-0" >
                <c:if test="${success != null}"><p style="color: red">${success}</p></c:if>
                <c:if test="${error != null}"><p style="color: red">${error}</p></c:if>
                <form method="post" action="insert-Office">
                    <div class="form-floating mb-3">
                        <label for="officeCode"> * officeCode: </label>
                        <input type="text" class="form-control" id="officeCode" name="officeCode">
                    </div>

                    <div class="form-floating mb-3">
                        <label for="city"> * City:</label>
                        <input type="text" class="form-control" id="city" name="city">
                    </div>

                    <div class="form-floating mb-3">
                        <label for="phone"> * Phone:</label>
                        <input type="text" class="form-control" id="phone" name="phone">
                    </div>

                    <div class="form-floating mb-3">
                        <label for="addressLine1"> * AddressLine1:</label>
                        <input type="text" class="form-control" id="addressLine1" name="addressLine1">
                    </div>

                    <div class="form-floating mb-3">
                        <label for="addressLine2"> AddressLine 2:</label>
                        <input type="text" class="form-control" id="addressLine2" name="addressLine2">
                    </div>

                    <div class="form-floating mb-3">
                        <label for="state"> State: </label>
                        <input type="text" class="form-control" id="state" name="state">
                    </div>

                    <div class="form-floating mb-3">
                        <label for="country"> * Country: </label>
                        <input type="text" class="form-control" id="country" name="country">
                    </div>


                    <div class="form-floating mb-3">
                        <label for="postalCode"> * postalCode:</label>
                        <input type="text" class="form-control" id="postalCode" name="postalCode">
                    </div>

                    <div class="form-floating mb-3">
                        <label for="territory"> * territory:</label>
                        <input type="text" class="form-control" id="territory" name="territory">
                    </div>

                    <button class="btn btn-success rounded-pill px-3" type="submit">Success</button>

                    <button class="btn btn-warning rounded-pill px-3" type="button">
                        <a href="office_list" style="color:lightyellow">Back</a>
                    </button>
                </form>
            </div


        </div>
    </div>
</div>
</body>

</html>
