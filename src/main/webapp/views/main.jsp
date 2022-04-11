<!DOCTYPE html>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %> <%@ page
contentType="text/html; charset=UTF-8" %>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
      integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />
    <link href="../css/main.css" rel="stylesheet" />
    <title>Gym and Meal</title>
  </head>

  <body>
    <header>
      <div class="navbar navbar-dark bg-dark box-shadow">
        <div class="container d-flex justify-content-between">
          <a href="/" class="navbar-brand d-flex align-items-center">
            <strong>Logo here</strong>
          </a>
          <div class="">
            <c:if test="${not empty loggedInUser}">
              <a href="/profile/${userId}" class="btn btn-dark">
              <img style="vertical-align: middle;
              width: 20px;
              height: 20px;
              border-radius: 50%" src="https://media.istockphoto.com/vectors/user-icon-flat-isolated-on-white-background-user-symbol-vector-vector-id1300845620?k=20&m=1300845620&s=612x612&w=0&h=f4XTZDAv7NPuZbG0habSpU0sNgECM0X7nbKzTUta3n8=" alt="">
              <b>${fullName}</b>
            </a>
              <a class="btn btn-danger" href="/logout">Log out</a>
            </c:if>
            <c:if test="${empty loggedInUser}">
              <a class="btn btn-primary" href="/login">Login</a>
              <a class="btn btn-secondary" href="/register">Register</a>
            </c:if>
          </div>
        </div>
      </div>
    </header>

    <main role="main">
      <section class="jumbotron text-center">
        <div class="container">
          <h1 class="jumbotron-heading">Gym and Meal</h1>
          <p class="lead text-muted">
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Sapiente
            quia nulla id consequuntur! Qui iusto quos sit earum iste, quasi ex
            ipsa impedit dicta illo autem. Tenetur aliquam hic dolorum.
          </p>
          <p>
            <a class="col-4 btn btn-primary m-2 mt-5" href="/meal/calculator"
              >Setup your meal</a
            >
            <a class="col-4 btn btn-success m-2 mt-5" href="/gym"
              >Gym tracking</a
            >
          </p>
        </div>
      </section>
    </main>

    <footer
      class="text-center text-white w-100"
      style="
        background-color: #f1f1f1;
        position: absolute;
        bottom: 0;
        padding: 0;
      "
    >
      <div class="container pt-2">
        <section class="mb-0">
          <!-- Facebook -->
          <a
            class="btn btn-link btn-floating btn-lg text-dark m-1"
            href="#!"
            role="button"
            data-mdb-ripple-color="dark"
            ><i class="fab fa-facebook-f"></i
          ></a>

          <!-- Twitter -->
          <a
            class="btn btn-link btn-floating btn-lg text-dark m-1"
            href="#!"
            role="button"
            data-mdb-ripple-color="dark"
            ><i class="fab fa-twitter"></i
          ></a>

          <!-- Instagram -->
          <a
            class="btn btn-link btn-floating btn-lg text-dark m-1"
            href="#!"
            role="button"
            data-mdb-ripple-color="dark"
            ><i class="fab fa-instagram"></i
          ></a>

          <!-- Youtube -->
          <a
            class="btn btn-link btn-floating btn-lg text-dark m-1"
            href="#!"
            role="button"
            data-mdb-ripple-color="dark"
            ><i class="fab fa-youtube"></i
          ></a>
        </section>
        <!-- Section: Social media -->
      </div>
      <!-- Grid container -->

      <!-- Copyright -->
      <div
        class="text-center text-dark p-3"
        style="background-color: rgba(0, 0, 0, 0.2)"
      >
        <i class="fa-regular fa-copyright"></i> 2022 Copyright
      </div>
    </footer>
  </body>
</html>
