<!DOCTYPE html>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %> <%@ page
contentType="text/html; charset=UTF-8" %>

<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />
    <title>Meal</title>
  </head>
  <body>
    <header>
      <div class="navbar navbar-dark bg-dark box-shadow">
        <div class="container d-flex justify-content-between">
          <a href="/" class="navbar-brand d-flex align-items-center">
            <strong>Logo here</strong>
          </a>
          <div class="">
            <a class="btn btn-primary" href="/login">Login</a>
            <a class="btn btn-secondary" href="/register">Register</a>
          </div>
        </div>
      </div>
    </header>
    <div class="d-flex flex-column align-items-center">
      <h1 class="mt-3 text-center">Your meal</h1>
      <ul class="list-group">
        <c:forEach var="food" items="${foodWeight}">
          <li
            class="list-group-item d-flex justify-content-between align-items-center"
            style="width: 15rem"
          >
            ${food.name}
            <span class="badge bg-warning text-dark">${food.weight}(g)</span>
          </li>
        </c:forEach>
      </ul>
      <a class="btn btn-success m-2 mt-5" href="/meal/calculator"
        >Setup your meal</a
      >
    </div>
  </body>
</html>
