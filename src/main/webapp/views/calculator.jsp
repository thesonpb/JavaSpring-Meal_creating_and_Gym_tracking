<!DOCTYPE html>
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
    <title>TDEE Calculator</title>
  </head>
  <body class="">
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
    <div class="d-flex justify-content-center">
      <form
        class="mt-3 p-3 border rounded w-25"
        method="post"
        action="/meal/tdee"
        modelAttribute="form"
      >
        <h1 class="mt-3">TDEE Calculator</h1>
        <div>
          <label for="gender">Gender</label>
          <input
            required
            class="form-check-input"
            type="radio"
            name="gender"
            value="male"
            id="male"
          />
          <label for="male">Male</label>

          <input
            class="form-check-input"
            type="radio"
            name="gender"
            value="female"
            id="female"
          />
          <label for="female">Female</label>
        </div>
        <div class="form-floating mb-3 mt-3">
          <input
            required
            class="form-control"
            type="text"
            name="age"
            id="age"
          />
          <label for="age">Age</label>
        </div>
        <div class="form-floating mb-3">
          <input
            required
            class="form-control"
            type="text"
            name="height"
            id="height"
          />
          <label for="height">Height</label>
        </div>
        <div class="form-floating mb-3">
          <input
            required
            class="form-control"
            type="text"
            name="weight"
            id="weight"
          />
          <label for="weight">Weight</label>
        </div>
        <div>
          <label class="mb-3" for="exerciseLevel">Exercise Level</label>
          <select class="form-select mb-3" name="exerciseLevel">
            <option value="little or no exercise">Little or no exercise</option>
            <option value="light exercise">Light exercise</option>
            <option value="moderate exercise">Moderate exercise</option>
            <option value="hard exercise">Hard exercise</option>
            <option value="very hard exercise">Very hard exercise</option>
          </select>
        </div>
        <div class="text-center">
          <button class="btn btn-primary" type="submit">Calculate!</button>
        </div>
      </form>
    </div>
  </body>
</html>
