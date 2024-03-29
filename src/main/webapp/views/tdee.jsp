<!DOCTYPE html>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="/assets/css/tdee.css" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />
    <title>TDEE</title>
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
    <div class="d-flex flex-column justify-content-center align-items-center">
      <h1 class="mt-3">Your TDEE is: ${tdee}</h1>
      <div class="d-flex flex-direction-row">
        <a
          href="/bulking/${tdee + 300}"
          class="card text-decoration-none text-light bg-success m-1 text-center"
        >
          <div class="card-body">
            <h5>Bulking</h5>
            <p>${tdee + 300} calories</p>
          </div>
        </a>
        <a
          href="/maintenance/${tdee}"
          class="card text-decoration-none text-light bg-primary m-1 text-center"
        >
          <div class="card-body">
            <h5>Maintenance</h5>
            <p>${tdee} calories</p>
          </div>
        </a>
        <a
          href="/cutting/${tdee - 500}"
          class="card text-decoration-none text-light bg-warning m-1 text-center"
        >
          <div class="card-body">
            <h5>Cutting</h5>
            <p>${tdee - 500} calories</p>
          </div>
        </a>
      </div>
    </div>
  </body>
</html>
