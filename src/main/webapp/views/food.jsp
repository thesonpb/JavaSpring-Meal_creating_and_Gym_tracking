<!DOCTYPE html>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

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
    <title>Food</title>
  </head>
  <body class="d-flex justify-content-center">
    <form action="/calculator/meal/${tdee}" method="get">
      <h2 class="mt-3">You need to eat ${tdee} calories per day.</h2>
      <fieldset>
        <legend>Choose your food</legend>

        <c:forEach var="food" items="${foods}">
          <div>
            <input
              class="form-check-input"
              type="checkbox"
              name="food"
              value="${food.getId()}"
              id="${food.getId()}"
            />
            <label class="form-check-label mb-1" for="${food.getId()}"
              >${food.getName()} - ${food.getCarb()*4 + food.getProtein()*4 +
              food.getFat()*9} calories</label
            >
          </div>
        </c:forEach>
      </fieldset>
      <button class="btn btn-primary mt-3" type="submit">Submit</button>
    </form>
  </body>
</html>
