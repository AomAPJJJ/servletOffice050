<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: AomAPJ
  Date: 15/11/2023 AD
  Time: 22:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Update</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<div tabindex="-1" role="dialog"
     id="modalSignin">
  <div class="modal-dialog" role="document">
    <div class="modal-content rounded-4 shadow">
      <div class="modal-header p-5 pb-4 border-bottom-0">
        <h1 class="fw-bold mb-0 fs-2">Update Office</h1>

      </div>

      <div class="modal-body pt-0">

        <form method="post" action="update-Office">

          <div class="form-floating mb-3">
            <input type="hidden" name="officeCode" value="${updated.officeCode}">
          </div>

          <div class="form-floating mb-3">
            <label for="city"> City:</label>
            <input type="text" class="form-control" id="city" name="city" value="${updated.city}">
          </div>

          <div class="form-floating mb-3">
            <label for="phone"> Phone:</label>
            <input type="text" class="form-control" id="phone" name="phone"  value="${updated.phone}">
          </div>

          <div class="form-floating mb-3">
            <label for="addressLine1"> AddressLine1:</label>
            <input type="text" class="form-control" id="addressLine1" name="addressLine1" value="${updated.addressLine1}">
          </div>

          <div class="form-floating mb-3">
            <label for="addressLine2"> AddressLine 2:</label>
            <input type="text" class="form-control" id="addressLine2" name="addressLine2" value="${updated.addressLine2}">
          </div>

          <div class="form-floating mb-3">
            <label for="state"> State: </label>
            <input type="text" class="form-control" id="state" name="state" value="${updated.state}">
          </div>

          <div class="form-floating mb-3">
            <label for="country"> Country: </label>
            <input type="text" class="form-control" id="country" name="country" value="${updated.country}">
          </div>


          <div class="form-floating mb-3">
            <label for="postalCode">postalCode:</label>
            <input type="text" class="form-control" id="postalCode" name="postalCode" value="${updated.postalCode}">
          </div>

          <div class="form-floating mb-3">
            <label for="territory">territory:</label>
            <input type="text" class="form-control" id="territory" name="territory" value="${updated.territory}">
          </div>

          <button class="btn btn-success rounded-pill px-3" type="submit">Update!!</button>

          <button class="btn btn-warning rounded-pill px-3" type="button">
            <a href="office_list" style="color:lightyellow">Back</a>
          </button>
        </form>
      </div>

    </div>
  </div>
</div>

</body>
</html>
